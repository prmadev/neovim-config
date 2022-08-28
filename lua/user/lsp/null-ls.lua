local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		-- formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		-- formatting.stylua,
		-- diagnostics.flake8
		formatting.prettier.with({
			extra_args = { "--use-tabs" },
			filetypes = { "html", "json", "yaml", "markdown", "css" },
		}),

        formatting.alejandra.with({
        	command = "alejandra",
			filetypes = { "nix" },
        }),

		-- formatting.black.with({ extra_args = { "--fast" } }),
		-- formatting.stylua, --lua, formatting
		formatting.isort, -- Python, formatting, sorting imports
		-- formatting.black, -- Python, formatting
		formatting.yapf, -- Python, formatting
		-- diagnostics.flake8, -- Python, linting
		-- formatting.mypy,
		-- diagnostics.mypy,
		-- formatting.codespell,
		-- diagnostics.write_good.with({
		--   filetypes = { "norg", "markdown", "org", "txt" },
		-- }),
		formatting.eslint.with({
			filetypes = { "javascript", "jsx" },
		}),
		formatting.format_r,
		-- formatting.reorder_python_imports,
		-- formatting.nixfmt,
		formatting.shfmt,
		formatting.stylelint,
		formatting.styler,
		-- diagnostics.codespell,
		-- diagnostics.eslint,
		-- diagnostics.jsonlint,
		-- diagnostics.luacheck,
		-- diagnostics.pylint,
		-- diagnostics.shellcheck,
		-- diagnostics.statix,
		-- diagnostics.stylelint,
		-- diagnostics.yamllint,
		-- actions.eslint,
		-- actions.gitsigns,
		-- actions.shellcheck,
		-- actions.statix,
	},
})
