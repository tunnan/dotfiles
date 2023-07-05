local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
    "pyright"
})

lsp.set_preferences({
    sign_icons = { }
})

require'lspconfig'.pyright.setup{}

lsp.setup()
