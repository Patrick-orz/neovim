-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- servers
local servers = { "html", "cssls" , "gdscript" , "clangd"}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- Attempt with omnisharp and Unity
-- local pathToOmnisharp = "C:\\Users\\Patrick\\omnisharp-win-x64-net6.0"
-- lspconfig.omnisharp.setup {
--     cmd = {
--         "dotnet",
--         pathToOmnisharp .. '\\OmniSharp.dll',
--     },
--     -- on_attach = nvlsp.on_attach,
--     -- on_init = nvlsp.on_init,
--     -- capabilities = nvlsp.capabilities,
-- }
