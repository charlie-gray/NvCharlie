local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "pyright"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capibilities.signatureHelpProvider = false
    on_attach(client,bufnr)
  end,
  root_dir = function() return vim.loop.cwd() end,
  capabilities = capabilities,
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})


-- 
-- lspconfig.pyright.setup { blabla}
