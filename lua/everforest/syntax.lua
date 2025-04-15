local M = {}

--- Wrapper for nvim.api.nvim_set_hl (:h nvim_set_hl()).
---@param group string Highlight group name.
---@param styles table Highlight definition map.
local function set_hl(group, styles)
   vim.api.nvim_set_hl(0, group, styles)
end

function M.generate_syntax()
   local palette = require("everforest.palette").get_palette()

   set_hl("Normal", { fg = palette.fg, bg = palette.bg })
   set_hl("NormalFloat", { link = "Normal" })
end

return M
