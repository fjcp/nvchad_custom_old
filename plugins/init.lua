local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["skywind3000/asyncrun.vim"] = {},
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,

  ["simrat39/rust-tools.nvim"] ={
    after = "nvim-lspconfig",
    config = function()
      require ("rust-tools").setup()
    end,
  },

  ["folke/trouble.nvim"] ={
    config = function()
      require ("trouble").setup()
    end,
  },

  ["weilbith/nvim-code-action-menu"] ={
    cmd = "CodeActionMenu",
  },

  ["RRethy/vim-illuminate"] = {},

  ["mfussenegger/nvim-dap"] = {},

  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },

  ["rcarriga/nvim-dap-ui"] = {
    config = function()
      require("dapui").setup()
    end,
  },

  ["mfussenegger/nvim-dap-python"] = {
    config = function()
      require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
    end,
  },
}
