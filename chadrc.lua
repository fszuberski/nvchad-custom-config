local pluginOverrides = require "custom.plugins.overrides"
local M = {}

M.ui = require "custom.ui"

M.options = {
   user = function ()
      require("custom.options")
   end,
}

M.mappings = require "custom.mappings"

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig"
      }
   },
   override = {
      ["nvim-treesitter/nvim-treesitter"] = pluginOverrides.treesitter,
      ["kyazdani42/nvim-tree.lua"] = pluginOverrides.nvimtree,
   },
   remove = {
      "folke/which-key.nvim"
   },
   user = require("custom.plugins")
}

return M
