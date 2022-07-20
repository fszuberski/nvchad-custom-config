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

M.nvimtree = {
   git = {
      enable = true,
   }
}

return M
