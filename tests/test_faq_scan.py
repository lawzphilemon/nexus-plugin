import importlib.util
import pathlib

path = pathlib.Path(__file__).resolve().parent.parent / 'scripts' / 'faq-scan.py'
spec = importlib.util.spec_from_file_location('faq_scan', path)
faq_scan = importlib.util.module_from_spec(spec)
spec.loader.exec_module(faq_scan)


def page(*blocks):
    return ''.join(f'<script type="application/ld+json">{b}</script>' for b in blocks)


graph = '{"@graph":[{"@type":"Article"},{"@type":"FAQPage","mainEntity":[{"@type":"Question"},{"@type":"Question"}]}]}'
standalone_empty = '{"@context":"https://schema.org","@type":"FAQPage","mainEntity":[]}'
standalone_full = '[{"@type":["FAQPage"],"mainEntity":[{"@type":"Question"}]}]'

assert list(faq_scan.faq_nodes(page('{"@type":"Article"}'))) == []
assert list(faq_scan.faq_nodes(page(graph))) == [(2, 'graph')]
assert list(faq_scan.faq_nodes(page(standalone_empty))) == [(0, 'standalone')]
assert list(faq_scan.faq_nodes(page(standalone_full, '{broken'))) == [(1, 'standalone')]
print('faq-scan test passed')
