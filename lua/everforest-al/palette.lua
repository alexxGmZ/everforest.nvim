local M = {}

local palette = {
   dark = {
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
      bg = "#272E33",
      bg_visual = "#493B40",
   },
   light = {
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
      bg = "#FFFBEF",
      bg_visual = "#F0F2D4",
   },
}

function M.get_palette()
   return palette[vim.o.background]
end

return M
