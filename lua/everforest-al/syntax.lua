local M = {}

--- Wrapper for nvim.api.nvim_set_hl (:h nvim_set_hl()).
---@param group string Highlight group name.
---@param styles table Highlight definition map.
local function set_hl(group, styles)
   vim.api.nvim_set_hl(0, group, styles)
end

function M.generate_syntax()
   local palette = require("everforest-al.palette").get_palette()
   local lsp_kind_colors = {
      Array = palette.aqua,
      Boolean = palette.aqua,
      Class = palette.yellow,
      Color = palette.aqua,
      Constant = palette.blue,
      Constructor = palette.green,
      Default = palette.aqua,
      Enum = palette.yellow,
      EnumMember = palette.purple,
      Event = palette.orange,
      Field = palette.green,
      File = palette.green,
      Folder = palette.aqua,
      Function = palette.green,
      Interface = palette.yellow,
      Key = palette.red,
      Keyword = palette.red,
      Method = palette.green,
      Module = palette.yellow,
      Namespace = palette.purple,
      Null = palette.aqua,
      Number = palette.aqua,
      Object = palette.aqua,
      Operator = palette.orange,
      Package = palette.purple,
      Property = palette.blue,
      Reference = palette.aqua,
      Snippet = palette.aqua,
      String = palette.aqua,
      Struct = palette.yellow,
      Text = palette.fg,
      TypeParameter = palette.yellow,
      Unit = palette.purple,
      Value = palette.purple,
      Variable = palette.blue,
   }

   set_hl("Normal", { fg = palette.fg, bg = palette.bg })
   set_hl("NormalFloat", { link = "Normal" })
   set_hl("Visual", { bg = palette.bg_visual })


   -- blink-cmp
   for kind, color in pairs(lsp_kind_colors) do
      set_hl("BlinkCmpKind" .. kind, { fg = color })
   end
end

return M
