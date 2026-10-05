"""Read-only FAQ delivery detector. Usage: python faq-scan.py URL [URL...]

Prints one line per URL: <questions> <placement> <url>
  questions: none = no FAQPage, 0 = empty FAQPage (invalid), N = N questions
  placement: standalone = own JSON-LD script (likely a CMS FAQ metabox/widget),
             graph = inside an SEO plugin @graph (likely written in the body)
"""
import json
import re
import sys
import urllib.request


def faq_nodes(html):
    """Yield (question_count, placement) for every FAQPage in the page's JSON-LD."""
    for block in re.findall(r'<script[^>]*application/ld\+json[^>]*>(.*?)</script>', html, re.S | re.I):
        try:
            data = json.loads(block)
        except ValueError:
            continue
        for item in data if isinstance(data, list) else [data]:
            if not isinstance(item, dict):
                continue
            in_graph = '@graph' in item
            for node in item.get('@graph', [item]):
                types = node.get('@type', []) if isinstance(node, dict) else []
                if 'FAQPage' in (types if isinstance(types, list) else [types]):
                    yield len(node.get('mainEntity') or []), 'graph' if in_graph else 'standalone'


def scan(url):
    request = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    html = urllib.request.urlopen(request, timeout=20).read().decode('utf-8', 'ignore')
    return list(faq_nodes(html))


if __name__ == '__main__':
    for url in sys.argv[1:]:
        try:
            nodes = scan(url)
        except Exception as error:  # report and continue with the other URLs
            print('error', type(error).__name__, url)
            continue
        for count, placement in nodes or [('none', '-')]:
            print(count, placement, url)
