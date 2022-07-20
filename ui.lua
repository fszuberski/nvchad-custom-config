-- https://github.com/NvChad/base46/blob/master/lua/base46/themes/tokyonight.lua
return {
   theme = "tokyonight",
   transparency = false,
   changed_themes = {
      tokyonight = {
         base_30 = {
            teal = "#2ac1dc"
         }
      }
   },
   hl_override = {
      TSProperty = { fg = "white", bold = true },
      TSMethod = { fg = "blue" },
      TSPunctBracket = { fg = "teal" },
      TSTypeBuiltin = { fg = "teal" },
      TSParameter = { fg = "white" },
      TSNamespace = { fg = "white" },
      TSVariable = { fg = "white", bold = true },
      TSFieldKey = { fg = "white" },

      DiffAdd = { fg = "green" },
      DiffChange = { fg = "blue" },
      DiffDelete = { fg = "red" },
      DiffChangeDelete = { fg = "red" },
   },
   hl_add = {
      TSType = { fg = "teal" },
      TSRepeat = { fg = "purple" },
   }
}
