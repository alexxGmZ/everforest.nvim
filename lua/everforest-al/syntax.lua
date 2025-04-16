local M = {}

--- Wrapper for nvim.api.nvim_set_hl (:h nvim_set_hl()).
---@param group string Highlight group name.
---@param styles table Highlight definition map.
local function set_hl(group, styles)
   vim.api.nvim_set_hl(0, group, styles)
end

function M.generate_syntax()
   local set_var = vim.api.nvim_set_var
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

   set_var("terminal_color_0", palette.bg)
   set_var("terminal_color_1", palette.red)
   set_var("terminal_color_2", palette.green)
   set_var("terminal_color_3", palette.yellow)
   set_var("terminal_color_4", palette.blue)
   set_var("terminal_color_5", palette.purple)
   set_var("terminal_color_6", palette.aqua)
   set_var("terminal_color_7", palette.gray1)
   set_var("terminal_color_8", palette.gray1)
   set_var("terminal_color_9", palette.red)
   set_var("terminal_color_10", palette.green)
   set_var("terminal_color_11", palette.yellow)
   set_var("terminal_color_12", palette.blue)
   set_var("terminal_color_13", palette.purple)
   set_var("terminal_color_14", palette.aqua)
   set_var("terminal_color_15", palette.fg)

   set_hl("ColorColumn", { link = "CursorLine" })
   set_hl("Comment", { fg = palette.gray1, italic = true })
   set_hl("Constant", { link = "@constant" })
   set_hl("CurSearch", { fg = palette.red, reverse = true })
   set_hl("CursorColumn", { link = "CursorLine" })
   set_hl("CursorLine", { bg = palette.bg1 })
   set_hl("DiagnosticOk", { fg = palette.green })
   set_hl("DiagnosticHint", { fg = palette.blue })
   set_hl("DiagnosticInfo", { fg = palette.aqua })
   set_hl("DiagnosticWarn", { fg = palette.yellow })
   set_hl("DiagnosticError", { fg = palette.red })
   set_hl("DiffAdd", { bg = palette.bg_green })
   set_hl("DiffChange", { bg = palette.bg_blue })
   set_hl("DiffDelete", { bg = palette.bg_red })
   set_hl("DiffText", { fg = palette.bg0, bg = palette.blue })
   set_hl("Directory", { fg = palette.green })
   set_hl("ErrorMsg", { fg = palette.red })
   set_hl("diffAdded", { link = "DiagnosticOk" })
   set_hl("diffChanged", { link = "DiagnosticHint" })
   set_hl("diffRemoved", { link = "DiagnosticError" })
   set_hl("FloatBorder", { fg = palette.gray1 })
   set_hl("Function", { fg = palette.orange, bold = true })
   set_hl("Normal", { fg = palette.fg, bg = palette.bg0 })
   set_hl("NormalFloat", { link = "Normal" })
   set_hl("PMenu", { link = "Normal" })
   set_hl("Search", { fg = palette.green, reverse = true })
   set_hl("Special", { fg = palette.yellow, bold = true })
   set_hl("SpellBad", { sp = palette.red, undercurl = true })
   set_hl("SpellCap", { sp = palette.blue, undercurl = true })
   set_hl("SpellLocal", { sp = palette.green, undercurl = true })
   set_hl("SpellRare", { sp = palette.purple, undercurl = true })
   set_hl("Statement", { fg = palette.red })
   set_hl("String", { fg = palette.green })
   set_hl("Title", { fg = palette.fg, bold = true })
   set_hl("Type", { fg = palette.yellow, bold = true })
   set_hl("Visual", { bg = palette.bg_visual })
   set_hl("WarningMsg", { fg = palette.yellow })
   set_hl("WinSeparator", { fg = palette.gray1 })

   set_hl("Added", { fg = palette.green })
   set_hl("Changed", { fg = palette.blue })
   set_hl("Removed", { fg = palette.red })

   -- nvim-notify
   set_hl("NotifyInfoIcon", { link = "DiagnosticOk" })
   set_hl("NotifyWarnIcon", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorIcon", { link = "DiagnosticError" })
   set_hl("NotifyInfoTitle", { link = "DiagnosticOk" })
   set_hl("NotifyWarnTitle", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorTitle", { link = "DiagnosticError" })
   set_hl("NotifyInfoBorder", { link = "DiagnosticOk" })
   set_hl("NotifyWarnBorder", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorBorder", { link = "DiagnosticError" })

   -- treesitter
   set_hl("@attribute", { fg = palette.purple })
   set_hl("@boolean", { fg = palette.purple, bold = true })
   set_hl("@constant", { fg = palette.purple, bold = true })
   set_hl("@constant.builtin", { fg = palette.purple, bold = true })
   set_hl("@constructor", { fg = palette.fg })
   set_hl("@diff.plus", { link = "DiagnosticOk" })
   set_hl("@diff.delta", { link = "DiagnosticHint" })
   set_hl("@diff.minus", { link = "DiagnosticError" })
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
   set_hl("@tag", { fg = palette.orange, bold = true })
   set_hl("@tag.attribute", { fg = palette.aqua, bold = true })
   set_hl("@tag.delimiter", { fg = palette.red, bold = false })
   -- set_hl("@type", { fg = palette.yellow, bold = true })
   set_hl("@variable", { fg = palette.fg, bold = true })
   set_hl("@variable.builtin", { fg = palette.yellow })
   set_hl("@variable.member", { fg = palette.blue, bold = false })
   set_hl("@variable.parameter", { fg = palette.red, bold = true })

   -- treesitter-context
   set_hl("TreesitterContextBottom", { underline = true })

   -- eyeliner
   set_hl("EyelinerPrimary", { fg = palette.orange, bold = true, reverse = true })
   set_hl("EyelinerSecondary", { fg = palette.blue, bold = true, reverse = true })

   -- html
   set_hl("htmlArg", { link = "@tag.attribute" })
   set_hl("htmlEndTag", { link = "@tag.delimiter" })
   set_hl("htmlTag", { link = "@tag.delimiter" })
   set_hl("htmlTagName", { link = "@tag" })

   -- xml
   set_hl("xmlAttrib", { link = "@tag.attribute" })
   set_hl("xmlEndTag", { link = "@tag.delimiter" })
   set_hl("xmlTag", { link = "@tag.delimiter" })
   set_hl("xmlTagName", { link = "@tag" })

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
