local status_ok, lspkind = pcall(require, 'lspkind')
if not status_ok then
  print("Failed to load lspkind")
  return
end

local cmp = require('cmp')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
    })
  }
}
