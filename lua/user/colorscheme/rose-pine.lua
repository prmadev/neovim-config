require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = true,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'rose',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' },
		TsKeywordFunction = { fg = 'love', style = 'bolditalic' },
		TsFunction = { fg = 'foam', style = 'bolditalic' },
		TsKeyword = { style = 'bolditalic' },
		TsString = { fg = 'foam', style = 'italic' },
		TsVariable = { style = 'none' },
		TsOperator = { fg = 'gold', style = 'bold' },
		TsRepeat = { fg = 'gold', style = 'bold' },
		TSMethodCall = { fg = 'text', style = 'none' },
		TSProperty = { style = 'none' },
		TSComment = { fg = 'highlight_med', style = 'italic' },

		MiniTabLineCurrent = { fg = "base", bg = 'pine' },
		MiniTabLineModifiedCurrent = { fg = "base", bg = 'pine', style = 'boldItalic' },
		MiniTabLineModifiedVisible = { style = 'boldItalic' },

		NeotreeGitModified = { style = 'bold' },
		NeotreeGitUntracked = { fg ='gold', style = 'bold' },


		MiniCursorWord = { fg = 'love', bg = 'overlay', style = 'bold' },
		MiniCursorWordCurrent = { fg = 'love', bg = 'overlay', style = 'bold' }
	}
})

-- Set colorscheme after options
vim.cmd("colorscheme rose-pine")
