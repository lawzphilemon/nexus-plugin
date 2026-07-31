local stringify = pandoc.utils.stringify

local function html_escape(value)
  return value
    :gsub("&", "&amp;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
    :gsub('"', "&quot;")
    :gsub("'", "&#39;")
end

local function metadata(meta, key)
  local value = meta[key]
  if value == nil then
    error("Missing required YAML metadata: " .. key)
  end
  return html_escape(stringify(value))
end

function Pandoc(doc)
  local title = metadata(doc.meta, "title")
  local slug = metadata(doc.meta, "slug")
  local description = metadata(doc.meta, "meta-description")

  -- Prevent Pandoc from adding a duplicate title block before the metadata table.
  doc.meta.title = nil

  local html = table.concat({
    "<table>",
    '<colgroup><col style="width:28.846%"><col style="width:71.154%"></colgroup>',
    "<tbody>",
    '<tr><th scope="row"><strong>Judul Artikel</strong></th><td>' .. title .. "</td></tr>",
    '<tr><th scope="row"><strong>Slug</strong></th><td>' .. slug .. "</td></tr>",
    '<tr><th scope="row"><strong>Meta Description</strong></th><td>' .. description .. "</td></tr>",
    "</tbody>",
    "</table>",
  })

  local parsed = pandoc.read(html, "html")
  local metadata_table = parsed.blocks[1]
  if metadata_table == nil or metadata_table.t ~= "Table" then
    error("Failed to build the DOCX metadata table")
  end

  metadata_table.colspecs = {
    { pandoc.AlignLeft, 0.28846 },
    { pandoc.AlignLeft, 0.71154 },
  }
  table.insert(doc.blocks, 1, metadata_table)
  return doc
end
