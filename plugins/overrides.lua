local M = {}

M.treesitter = {
    ensure_installed = { "bash", "cmake", "css", "go", "gomod", "gowork", "graphql", "html", "javascript", "json", "json5", "jsonc", "lua", "make", "nix", "python", "solidity", "tsx", "typescript", "vim", "yaml" },
    ignore_install = { "php" },
    incremental_selection = {
       enable = true
    },
    indent = {
        enable = false, -- curretly experimental
        -- disable = { "go" }
    },
    highlight = {
       enable = true,
       additional_vim_regex_highlighting = true
    },
    textobjects = {
       enable = true
    }
}

M.telescope = {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  extensions_list = { "themes", "terms", "fzf" },
}

M.nvimtree = {
   git = {
      enable = true,
   },
   renderer = {
      highlight_git = true,
      icons = {
         show = {
            git = true,
         },
      },
   }
}

return M
