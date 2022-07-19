local M = {}

M.treesitter = {
    ensure_installed = { "bash", "cmake", "css", "go", "gomod", "gowork", "graphql", "html", "javascript", "json", "json5", "jsonc", "lua", "make", "nix", "python", "solidity", "tsx", "typescript", "vim", "yaml" },
    ignore_install = { "php" },
    indent = {
        enable = false, -- curretly experimental
        -- disable = { "go" }
    }
}

M.nvimtree = {
   git = {
      enable = true,
   }
}

return M
