-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onedark",
  theme_toggle = { "bearded-arc", "one_light" },
  transparency = true,
  -- hl_override = highlights.override,
  -- hl_add = highlights.add,
  statusline = {
    theme = "default",
    separator_style = "block",
  },
  nerdtree = {
    NERDTreeShowHidden=1
  },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
 tabufline = {
    lazyload = false,
    order = { "treeOffset", "buffers", "tabs"}
  },
  hl_override = {
      -- Pmenu = { bg = "#ffffff" }, this works too
      -- if you want to lighten or darken color
      -- this will use the black color from nvchad theme & lighten it by 2x
      -- use a negative number to darken it
      -- Comment = { fg = '#234387' },
      LineNr = { fg = '#79808a' },
      CursorLineNr = { fg = '#FFFFFF'},
      -- Normal = {
        -- bg = {"black", 2}
      -- },

      -- MyHighlightGroup = { -- custom highlights are also allowed
      --    fg = "red",
      --    bg = "darker_black"
      -- }
   },
  changed_themes = {
      onedark = {
         base_16 = {
           base05 = "#d6d6d6",
         },
         base_30 = {
            white = "#FFFFFF",
            grey_fg = "#79808a",
            -- grey = "#79808a",
            -- light_grey = "#FFFFFF",
         },
      },

   },
}

return M
