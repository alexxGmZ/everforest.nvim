local palette = require("everforest.palette").get_palette()

return {
   normal = {
      a = { bg = palette.green, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   insert = {
      a = { bg = palette.yellow, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   visual = {
      a = { bg = palette.purple, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   replace = {
      a = { bg = palette.red, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   command = {
      a = { bg = palette.blue, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   terminal = {
      a = { bg = palette.orange, fg = palette.bg0, gui = "bold" },
      b = { bg = palette.bg1, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
   inactive = {
      a = { bg = palette.bg0, fg = palette.fg, gui = "bold" },
      b = { bg = palette.bg0, fg = palette.fg },
      c = { bg = palette.bg0, fg = palette.fg }
   },
}
