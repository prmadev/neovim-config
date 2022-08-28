local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end


local colors = {
	black = '#505050',
	white = '#E0E0E0',
	forest_breeze = '#b0c8b0',
	gold = '#d8a838',
	green = '#2e8b57',
	plum = '#DDA0DD',
	pink = '#e4a9a9'
}


local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.forest_breeze },
		b = { fg = colors.black, bg = colors.white },
		c = { fg = colors.black, bg = colors.white },
		z = { fg = colors.black, bg = colors.forest_breeze },
	},
	insert = { a = { fg = colors.black, bg = colors.gold } },
	visual = { a = { fg = colors.black, bg = colors.plum } },
	replace = { a = { fg = colors.black, bg = colors.pink } },
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	-- symbols = { error = "E:", warn = "W:" },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}



local mode = {
	"mode",
	colored = true,
	icons_enabled = true,
	padding = 1,
	fmt = function(str)
		return "[" .. str .. "]"
	end,
}
local filename = {
	"filename",
	colored = true,
	icons_enabled = true,
}
local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
	padding = 0,
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
	options = {
		icons_enabled = true,
		-- theme = theme,
		-- theme = "mountain-peek-night",
		theme = "auto",
		-- component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		-- lualine_a = { branch, diagnostics },
		lualine_a = { mode },
		lualine_b = { diagnostics },
		-- lualine_c = { "filename" },
		lualine_c = { filename },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		-- lualine_x = { diff, spaces, "encoding", filetype },
		lualine_x = {branch},
		lualine_y = { location },
		lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
