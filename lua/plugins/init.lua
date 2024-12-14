return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
      opts = function()
        local t = require "configs.telescope"
        return t
      end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
