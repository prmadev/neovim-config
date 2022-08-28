local status_ok, filetype = pcall(require, "filetype")
if not status_ok then
	return
end


-- In init.lua or filetype.nvim's config file
filetype.setup({
	overrides = {
		extensions = {
			md = "markdown",
		},
		literal = {
			-- Set the filetype of files named "MyBackupFile" to lua
			-- MyBackupFile = "lua",
		},
		complex = {
			-- Set the filetype of any full filename matching the regex to gitconfig
			[".*git/config"] = "gitconfig", -- Included in the plugin
		},

		-- The same as the ones above except the keys map to functions
		function_extensions = {
			["pdf"] = function()
				vim.bo.filetype = "pdf"
				-- Open in PDF viewer (Skim.app) automatically
				vim.fn.jobstart(
					"open -a fzf " .. '"' .. vim.fn.expand("%") .. '"'
				)
			end,
		},
		function_literal = {
			["md"] = function()
				vim.bo.filetype = "markdown"
				vim.cmd("syntax match relationWrds 'and'")
				vim.cmd("highlight link relationWrds Operator")
			end,
		},
	},
})
