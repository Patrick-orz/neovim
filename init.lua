vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- add custom filetype detections
vim.filetype.add({
  extension = {
    ejs = 'ejs',
  },
})

-- add custom treesitter highlights
vim.treesitter.language.register('html', {'ejs'})

-- fix unity omnisharp
-- vim.g.OmniSharp_server_use_mono = 0
-- vim.g.OmniSharp_loglevel = 'DEBUG'
-- vim.g.OmniSharp_server_use_net6 = 0
-- vim.g.OmniSharp_server_path = 'C:\\Users\\Patrick\\omnisharp-win-x64\\OmniSharp.exe'

-- vim.lsp.set_log_level("debug")

-- add Telescope ui selection
require("telescope").load_extension("ui-select")

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
