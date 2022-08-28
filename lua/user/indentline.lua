local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}
vim.g.indentLine_enabled = 1
-- vim.g.indent_blankline_char = "│"
-- vim.g.indent_blankline_char = "▏"
-- vim.g.indent_blankline_char = "▎"
-- vim.g.indent_blankline_show_trailing_blankline_indent = true
-- vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_context_patterns = {
	"class",
	"return",
	"function",
	"method",
	"^if",
	"^while",
	"jsx_element",
	"^for",
	"^object",
	"^table",
	"block",
	"arguments",
	"if_statement",
	"else_clause",
	"jsx_element",
	"jsx_self_closing_element",
	"try_statement",
	"catch_clause",
	"import_statement",
	"operation_type",
}
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
-- vim.wo.colorcolumn = "#505050"

vim.cmd [[highlight IndentBlanklineIndent1 guibg=#26233a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1f1d2e gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guibg=#26233a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guibg=#1f1d2e gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guibg=#26233a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guibg=#1f1d2e gui=nocombine]]
-- vim.opt.list = true -- causes a dash instead of space. causes confusion.
vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol:↴"

indent_blankline.setup({
	show_end_of_line = true,
	char = " ",
	show_trailing_blankline_indent = false,
	space_char_blankline = " ",
	-- show_current_context = true,
	-- show_current_context_start = true,
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
	space_char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
})
