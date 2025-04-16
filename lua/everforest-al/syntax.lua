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

   set_hl("ColorColumn", { link = "CursorLine" })
   set_hl("Comment", { fg = palette.gray1, italic = true })
   set_hl("CursorColumn", { link = "CursorLine" })
   set_hl("CursorLine", { bg = palette.bg1 })
   set_hl("Directory", { fg = palette.green })
   set_hl("FloatBorder", { fg = palette.fg })
   set_hl("Normal", { fg = palette.fg, bg = palette.bg0 })
   set_hl("NormalFloat", { link = "Normal" })
   set_hl("PMenu", { link = "Normal" })
   set_hl("Title", { fg = palette.fg, bold = true })
   set_hl("Visual", { bg = palette.bg_visual })

   -- treesitter
   set_hl("@attribute", { fg = palette.purple })
   set_hl("@boolean", { fg = palette.purple, bold = true })
   set_hl("@constant", { fg = palette.purple, bold = true })
   set_hl("@constant.builtin", { fg = palette.purple, bold = true })
   set_hl("@constructor", { fg = palette.fg })
   set_hl("@function", { fg = palette.orange, bold = true })
   set_hl("@function.builtin", { fg = palette.orange, bold = true })
   set_hl("@keyword", { fg = palette.orange })
   set_hl("@keyword.conditional", { fg = palette.red })
   set_hl("@keyword.function", { fg = palette.red })
   set_hl("@keyword.import", { fg = palette.red })
   set_hl("@module", { fg = palette.yellow })
   set_hl("@module.builtin", { fg = palette.yellow })
   set_hl("@number", { fg = palette.purple, bold = true })
   set_hl("@operator", { fg = palette.orange })
   set_hl("@property", { fg = palette.blue })
   set_hl("@punctuation", { fg = palette.fg })
   set_hl("@string", { fg = palette.green })
   set_hl("@string.escape", { fg = palette.green })
   set_hl("@tag", { fg = palette.orange, bold = true })
   set_hl("@tag.attribute", { fg = palette.aqua, bold = true })
   set_hl("@tag.delimiter", { fg = palette.red, bold = false })
   set_hl("@type", { fg = palette.yellow, bold = true })
   set_hl("@variable", { fg = palette.fg, bold = true })
   set_hl("@variable.builtin", { fg = palette.yellow })
   set_hl("@variable.member", { fg = palette.blue, bold = false })
   set_hl("@variable.parameter", { fg = palette.red, bold = true })

   -- blink-cmp
   set_hl("BlinkCmpDoc", { link = "Pmenu" })
   set_hl("BlinkCmpDocBorder", { link = "Pmenu" })
   set_hl("BlinkCmpDocSeparator", { link = "Pmenu" })
   set_hl("BlinkCmpMenuSelection", { link = "Visual" })
   for kind, color in pairs(lsp_kind_colors) do
      set_hl("BlinkCmpKind" .. kind, { fg = color })
   end
end

return M
