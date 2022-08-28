local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

keymap("n", ";", ";;", opts)
keymap("n", ";", ":", opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-1<CR>==gi", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-1<CR>==", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>d", ":DapUiToggle<cr>", opts)
keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F3>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F2>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<Leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n","<Leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",opts)
keymap("n", "<Leader>dp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap("n", "<Leader>dr", ":lua require'dap'.repl.open()<CR>", opts)
keymap("n", "<Leader>dl", ":lua require'dap'.run_last()<CR>", opts)
keymap("n", "<Leader>dl", ":lua require'dap-go'.debug_test()<CR>", opts)

keymap("n", "<Leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "<C-e>", ":Neotree toggle<CR>", opts)
keymap("n", "<Leader>b",
	":Telescope buffers<cr>"
	, opts)
-- keymap("n", "<Leader>w", ":w<CR>", opts)
-- keymap("n", "<Leader>q", ":q<CR>", opts)
keymap("n", "<Leader>bc", ":Bdelete<CR>", opts)

keymap("n", "<Leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>/", ":Telescope live_grep<CR>", opts)

keymap("n", "<Leader>D", ":call delete(expand('%')) | bdelete!<CR>", opts)

keymap("n", "<Leader>lp", ":PackerSync<CR>", opts)

keymap("n", "<Leader>r", ":GoRename<CR>", opts)
-- keymap("n", "<Leader>gl", ":GoLint<CR>", opts)
keymap("n", "<Leader>gi", ":GoImport<CR>", opts)
keymap("n", "<Leader>gc", ":GoCmt<CR>", opts)
keymap("n", "<Leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)
keymap("n", "<Leader>li", ":LspInstallInfo<CR>", opts)
keymap("n", "<Leader>ls", ":Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<Leader>st", ":Telescope colorscheme<CR>", opts)
keymap("n", "<Leader>sh", ":Telescope help_tags<CR>", opts)
keymap("n", "<Leader>sm", ":Telescope man_pages<CR>", opts)
keymap("n", "<Leader>sr", ":Telescope registers<CR>", opts)
keymap("n", "<Leader>sk", ":Telescope keymaps<CR>", opts)
keymap("n", "<Leader>sc", ":Telescope commands<CR>", opts)
keymap("n", "<Leader>sf", ":Telescope filetypes<CR>", opts)
keymap("n", "<Leader>zf", ":ZkNotes<CR>", opts)
keymap("n", "<Leader>zn", ":ZkNew<CR>", opts)
keymap("n", "<Leader>zl", ":ZkLinks<CR>", opts)
keymap("n", "<Leader>zb", ":ZkBacklinks<CR>", opts)
keymap("n", "<Leader>zi", ":ZkIndex<CR>", opts)
keymap("v", "<Leader>nc", ":ZkNewFromContentSelection<CR>", opts)
keymap("v", "<Leader>nt", ":ZkNewFromTitleSelection<CR>", opts)
keymap("v", "<Leader>nm", ":ZkMatch<CR>", opts)
keymap("n", "<Leader>zj", ":lua require('zk').new(nil, { group = 'journal' })<CR>", opts)
