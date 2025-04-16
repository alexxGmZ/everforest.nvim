local M = {}
local generate_syntax = require("everforest-al.syntax").generate_syntax

--- nvim-notify support
---@param message string notify message
---@param log_level string|nil vim.log.levels
---@return function vim.notify
local function notify(message, log_level)
   return vim.notify(message, log_level, { title = "everforest.nvim" })
end

function M.setup()
   vim.cmd([[highlight clear]])
   vim.opt.termguicolors = true
   vim.g.colors_name = "everforest-al"

   if generate_syntax then
      return generate_syntax()
   else
      return notify("colorscheme loading failed", "ERROR")
   end
end

return M
