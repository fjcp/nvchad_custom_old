local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "python",
    "cpp",
    "rust",
    "c",
    "cmake",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- 
    "clangd",
    "clang-format",
    "cmake-language-server",
    "pyright",
    "rust-analyzer",
  },
}

-- git support in nvimtree
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
  },
}

return M
