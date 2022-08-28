return {
	-- create user commands such as :ZkNew
	create_user_commands = true,

	lsp = {
		-- `config` is passed to `vim.lsp.start_client(config)`
		config = {
			cmd = { "zk", "lsp" },
			name = "zk",
			-- init_options = ...
			-- on_attach = ...
			-- etc, see `:h vim.lsp.start_client()`
			on_attach = require("user/lsp/handlers").on_attach,
			capabilities = require("user/lsp/handlers").capabilities,
		},

		-- automatically attach buffers in a zk notebook that match the given filetypes
		auto_attach = {
			enabled = true,
			filetypes = { "markdown" },
		},
	},
}
