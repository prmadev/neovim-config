local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
local status_ok, parsers = pcall(require, "nvim-treesitter.parsers")
if not status_ok then
	return
end



parsers.get_parser_configs().just = {
	install_info = {
		url = "https://github.com/IndianBoy42/tree-sitter-just", -- local path or git repo
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main",
	},
	maintainers = { "@IndianBoy42" },
}

configs.setup({
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = true, -- install languages synchronously (only applied to `ensure_installed`)

	ignore_install = { "fusion", "jsonc" }, -- List of parsers to ignore installing
	autotag = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		-- disable = { "markdown" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
})
-- vim.o.foldmethod = 'expr'
-- vim.o.foldmethod = 'syntax'
-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.o.foldminlines = 'nvim_treesitter#foldexpr()'
-- vim.g.markdown_folding = true
