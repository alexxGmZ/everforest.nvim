# everforest.nvim

My own implementation of Everforest colorscheme/theme.

![Screenshot_2025-04-17_09-52-50](https://github.com/user-attachments/assets/d3552e10-e929-464b-9b8e-6e9b5a90a1a6)

&nbsp;

## What's the difference from the [original](https://github.com/sainnhe/everforest) and the [Lua](https://github.com/neanias/everforest-nvim) port?

* Lots of Orange and Red.
  * These colors offer excellent contrast and visual clarity.
* Faster performance.
  * The implementation is simpler and more direct.
  * Colors are assigned straight to highlight groups—no layers of abstraction.

&nbsp;

## Installation

```lua
return {
   "alexxGmZ/everforest.nvim",
   priority = 1000,
   config = function ()
      vim.cmd.colorscheme "everforest"
   end
}
```

## Highlight Overrides

```lua
local set_hl = vim.api.nvim_set_hl
local palette = require("everforest.palette").get_palette()
--[[
-- dark mode
{
  red = "#E67E80",
  statusline3 = "#E67E80",
  bg_red = "#4C3743",
  yellow = "#DBBC7F",
  green = "#A7C080",
  statusline1 = "#A7C080",
  bg_green = "#3C4841",
  blue = "#7FBBB3",
  bg_blue = "#384B55",
  aqua = "#83C092",
  purple = "#D699B6",
  orange = "#E69875",
  fg = "#D3C6AA",
  bg0 = "#272E33",
  bg1 = "#2E383C",
  bg_visual = "#493B40",
  gray1 = "#859289"
}

-- light mode
{
  red = "#F85552",
  statusline3 = "#E66868",
  bg_red = "#FFE7DE",
  yellow = "#DFA000",
  green = "#8DA101",
  statusline1 = "#93B259",
  bg_green = "#f3f5d9",
  blue = "#3A94C5",
  bg_blue = "#ECF5ED",
  aqua = "#35A77C",
  purple = "#DF69BA",
  orange = "#F57D26",
  fg = "#5C6A72",
  bg0 = "#FFFBEF",
  bg1 = "#F8F5E4",
  bg_visual = "#F0F2D4",
  gray1 = "#939F91"
}
]]

set_hl(0, "Group", { fg = palette.red, bold = true, italic = true })
```
