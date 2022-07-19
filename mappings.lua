local M = {}

M.general = {
   i = {
      -- navigate within insert mode
      ["<A-h>"] = { "<Left>", "  move left" },
      ["<A-l>"] = { "<Right>", " move right" },
      ["<A-j>"] = { "<Down>", " move down" },
      ["<A-k>"] = { "<Up>", " move up" },
   },
   n = {
      ["<leader>w"] = { "<cmd> wa <CR>", "﬚  save all files" },
   }
}

M.lspconfig = {
   n = {
      ["<leader>rn"] = {
         function()
            require("nvchad_ui.renamer").open()
         end,
         "   lsp rename",
      },

      ["<leader>fc"] = {
         function()
            vim.lsp.buf.formatting()
         end,
         "   lsp formatting",
      },

      ["<leader>sd"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "   floating diagnostic",
      },
   }
}

M.nvimtree = {
   n = {
      ["<leader>tt"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      ["<leader>tf"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
      ["<leader>to"] = { "<cmd> NvimTreeFindFile <CR>", "   find file nvimtree" },
   },
}

M.telescope = {
   n = {
      -- find
      ["<C-f>"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "  current buffer fuzzy find" },
      ["<C-S-f>"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
      ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
      ["<leader>fs"] = { "<cmd> Telescope grep string <CR>", "   grep string" },
      ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
   },
}

return M
