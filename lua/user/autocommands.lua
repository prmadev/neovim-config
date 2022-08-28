local api = vim.api

-- Highlight on yank
local yankGrp = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
	command = "silent! lua vim.highlight.on_yank()",
	group = yankGrp,
})

-- windows to close with "q"
local generalGrp = api.nvim_create_augroup("_general_settings", { clear = true })
api.nvim_create_autocmd(
	"FileType",
	{
		pattern = { "help", "startuptime", "qf", "lspinfo" },
		command = [[nnoremap <buffer><silent> q :close<CR>]],
		group = generalGrp,
	}
)

api.nvim_create_autocmd("FileType", { pattern = "man", command = [[nnoremap <buffer><silent> q :quit<CR>]] })

api.nvim_create_autocmd("FileType", { pattern = { "qf" }, command = [[set nobuflisted<CR>]] })
api.nvim_create_autocmd("FileType", { pattern = { "gitcommit", "markdown" }, command = [[setlocal spell]] })
api.nvim_create_autocmd("FileType", { pattern = { "markdown" }, command = [[syntax match relationWrds "and"]] })
api.nvim_create_autocmd("VimResized", { command = [[tabdo wincmd =]] })

