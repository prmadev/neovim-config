return {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "notify", "awesome" },
				configs = { virtual_text = false, }
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
				telemetry = {
					enable = false,
				},
			},
		},
	},
}
