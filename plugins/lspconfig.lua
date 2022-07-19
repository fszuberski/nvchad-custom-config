local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local flags = {
       debounce_text_changes = 150,
   }

   -- lspservers with default config
   local servers = { "html", "cssls" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         flags = flags,
      }
   end

   lspconfig.gopls.setup {
      on_attach = attach,
      capabilities = capabilities,
      flags = flags,
      -- cmd = {"gopls", "--remote=auto"},
      cmd = {"gopls", "serve"},
      settings = {
         gopls = {
             analyses = {
                 unusedparams = true,
             },
             staticcheck = true
         }
      }
   }

   lspconfig.yamlls.setup {
      settings = {
            yaml = {
            validate = true,
            hover = true,
            completion = true,
            format = {
                enable = true
            },
            schemas = {
                ['https://raw.githubusercontent.com/docker/cli/master/cli/compose/schema/data/config_schema_v3.9.json'] = '**/docker-compose.yml'
            }
         }
      }
   }

end

return M
