local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end -- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end
-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use 'wbthomason/packer.nvim' -- Have packer manage itself
	use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
	use 'tami5/sqlite.lua'
	use 'nathom/filetype.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'MunifTanjim/nui.nvim'
	use 'lewis6991/impatient.nvim'


	use 'rcarriga/nvim-notify'
	use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
	use 'ray-x/guihua.lua'
	use 'folke/trouble.nvim'
	use 'stevearc/dressing.nvim'
	use 'j-hui/fidget.nvim'



	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'WhoIsSethDaniel/mason-tool-installer.nvim'
	-- Treesitter
	use({
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	})
	use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'nvim-treesitter/nvim-treesitter-context'
	use 'neovim/nvim-lspconfig' -- enable LSP
	use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
	use 'tamago324/nlsp-settings.nvim' -- language server settings defined in json for
	use 'jose-elias-alvarez/null-ls.nvim' -- for formatters and linters
	use 'hrsh7th/nvim-cmp' -- The completion plugin
	use 'hrsh7th/cmp-buffer' -- buffer completions
	use 'hrsh7th/cmp-path' -- path completions
	use 'saadparwaiz1/cmp_luasnip' -- snippet completions
	use 'hrsh7th/cmp-nvim-lsp'

	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'leoluz/nvim-dap-go'
	use 'theHamsta/nvim-dap-virtual-text'
	use 'nvim-telescope/telescope-dap.nvim'

	use'nvim-treesitter/playground'
	use 'L3MON4D3/LuaSnip' --snippet engine
	use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

	-- Telescope
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-bibtex.nvim'
	use 'jvgrootveld/telescope-zoxide'
	use 'nvim-telescope/telescope-packer.nvim'
	use 'nvim-telescope/telescope-symbols.nvim'
	use 'chaosbaby/telescope-gitignore.nvim'

	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}

	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/toggleterm.nvim'


	use 'koenverburg/peepsight.nvim'

	use 'elkowar/yuck.vim'

	use 'ray-x/go.nvim'

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})




	use 'lukas-reineke/indent-blankline.nvim'


	use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter

	use 'numToStr/Comment.nvim' -- Easily comment stuff
	use { "folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim", }


	use 'moll/vim-bbye'
	use 'lewis6991/spellsitter.nvim'
	use 'ethanholz/nvim-lastplace'
	use 'sakshamgupta05/vim-todo-highlight'

	use 'nacro90/numb.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use 'jbyuki/nabla.nvim'

	-- snippets

	use 'lewis6991/gitsigns.nvim'
	use 'mrjones2014/lighthaus.nvim'
	use 'mvllow/modes.nvim'

	use({
		'filipdutescu/renamer.nvim',
		branch = 'master',
		requires = { { 'nvim-lua/plenary.nvim' } },
	})


	use 'echasnovski/mini.nvim'



	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
