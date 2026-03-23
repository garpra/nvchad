-- Kurozen colorscheme for NvChad base46
-- A vibrant cyberpunk/neon dark theme
-- Pure black background with high-contrast neon accents

local M = {}

-- -------------------------------------------------------
-- base_30: named colors used by NvChad UI integrations
-- (statusline, tabline, nvim-tree, telescope, etc.)
-- -------------------------------------------------------
M.base_30 = {
  white         = "#F0F0FF",       -- slightly cool white
  darker_black  = "#000000",
  black         = "#000000",       -- nvim bg: pure black
  black2        = "#0D0D12",       -- slightly lifted black
  one_bg        = "#111118",       -- popups, float bg
  one_bg2       = "#16161F",       -- selection bg
  one_bg3       = "#1C1C28",       -- subtle highlight
  grey          = "#2A2A3A",       -- borders, separators
  grey_fg       = "#3D3D55",       -- inactive elements
  grey_fg2      = "#505070",       -- dimmed text
  light_grey    = "#7070A0",       -- comments
  red           = "#FF2D55",       -- neon red/pink
  baby_pink     = "#FF6B8A",       -- soft pink
  pink          = "#FF2D55",       -- same as red for consistency
  line          = "#1A1A28",       -- vertical split lines
  green         = "#39FF14",       -- neon green
  vibrant_green = "#57FF30",       -- brighter green
  nord_blue     = "#00B4FF",       -- neon blue
  blue          = "#0080FF",       -- pure blue
  yellow        = "#FFE600",       -- neon yellow
  sun           = "#FFD000",       -- warm yellow
  purple        = "#BF5FFF",       -- neon purple
  dark_purple   = "#9933FF",       -- deep purple
  teal          = "#00FFD4",       -- neon teal/cyan
  orange        = "#FF8C00",       -- neon orange
  cyan          = "#00E5FF",       -- electric cyan
  statusline_bg = "#05050A",       -- statusline bg (near black)
  lightbg       = "#111120",       -- statusline section b bg
  pmenu_bg      = "#BF5FFF",       -- completion menu selected
  folder_bg     = "#00B4FF",       -- nvim-tree folder icon
}

-- -------------------------------------------------------
-- base_16: semantic slots → drives syntax + treesitter
--
--   base00-03  backgrounds (dark → less dark)
--   base04-07  foregrounds (dim → bright)
--   base08     red      → errors, variables, tags
--   base09     orange   → numbers, constants, booleans
--   base0A     yellow   → types, classes, attributes
--   base0B     green    → strings
--   base0C     cyan     → regex, escape chars, special
--   base0D     blue     → functions, methods
--   base0E     purple   → keywords, conditionals, operators
--   base0F     pink     → delimiters, special chars, deprecated
-- -------------------------------------------------------
M.base_16 = {
  base00 = "#000000",   -- pure black bg
  base01 = "#0D0D12",   -- status bar bg
  base02 = "#16161F",   -- selection / visual
  base03 = "#2A2A3A",   -- comments, line numbers
  base04 = "#505070",   -- dark fg (inactive statusline)
  base05 = "#F0F0FF",   -- default fg (cool white)
  base06 = "#F5F5FF",   -- light fg
  base07 = "#FFFFFF",   -- brightest fg
  base08 = "#FF2D55",   -- neon red: variables, errors, tags
  base09 = "#FF8C00",   -- neon orange: numbers, constants
  base0A = "#FFE600",   -- neon yellow: types, classes
  base0B = "#39FF14",   -- neon green: strings
  base0C = "#00E5FF",   -- electric cyan: regex, escape, special
  base0D = "#00B4FF",   -- neon blue: functions, methods
  base0E = "#BF5FFF",   -- neon purple: keywords, conditionals
  base0F = "#FF2D55",   -- neon pink: delimiters, special chars
}

M.type = "dark"

M = require("base46").override_theme(M, "kurozen")

return M
