-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "catppuccin",
    transparency = true,

---@diagnostic disable-next-line: missing-fields
    hl_override = {
        Comment = { italic = true, fg = { "light_grey", 10 } },
        ["@comment"] = { italic = true, fg = { "light_grey", 10 } },

        LineNr = { fg = { "light_grey", 10 } },

        TbBufOff = { fg = { "light_grey", 10 } },
        TbBufOnClose = { fg = { "light_grey", 10 } },

        -- CursorLine = { bg = { "black", 2 } },

        Visual = { bg = { "black", 2 } },

        IblChar = { fg = { "grey_fg2", 4 } },
        IblScopeCharChar = { fg = { "grey_fg2", 4 } },

        NvimTreeWinSeparator = { fg = { "grey_fg2", 4 } },
        NvimTreeIndentMarker = { fg = { "grey_fg2", 4 } },
        NvimTreeFolderArrowOpen = { fg = { "grey_fg2", 4 } },
        NvimTreeFolderArrowClosed = { fg = { "grey_fg2", 4 } },

        gitcommitComment = { italic = true, fg = { "light_grey", 10 } },

        NonText = { italic = true, fg = { "light_grey", 10 } },
    },
}

M.ui = {
    statusline = {
        separator_style = "round",
    },
}

return M
