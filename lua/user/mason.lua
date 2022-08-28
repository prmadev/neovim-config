

require("mason").setup({
	ui = {
		border = "none",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		},
	},
	pip = {
		install_args = { "--proxy", "\"\"" }
	}
})

require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua", "awk_ls", "bashls", "cssls", "dockerls", "golangci_lint_ls", "gopls", "graphql",
		"html", "jsonls", "marksman", "rnix", "sqls", "taplo", "lemminx", "yamlls" },
	automatic_installation = true
})


--[[ require("mason_toolinstaller").setup({ ]]
--[[ 	ensure_installed = { ]]
--[[ 		'golangci-lint', ]]
--[[ 		'gopls', ]]
--[[ 		'stylua', ]]
--[[ 		'shellcheck', ]]
--[[ 		'gofumpt', ]]
--[[ 		'golines', ]]
--[[ 		'gomodifytags', ]]
--[[ 		'gotests', ]]
--[[ 		'impl', ]]
--[[ 		'json-to-struct', ]]
--[[ 		'revive', ]]
--[[ 		'shellcheck', ]]
--[[ 		'shfmt', ]]
--[[ 		'staticcheck', ]]
--[[ 	}, ]]
--[[ 	auto_update = true, ]]
--[[ 	run_on_start = true ]]
--[[]]
--[[ }) ]]
