return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			offsets = {
				{
					filetype = "neo-tree",
					text = "Nvim Tree",
					separator = true,
					text_align = "left",
				},
			},
			diagnostics = "nvim_lsp",
			separator_style = { "", "" },
			modified_icon = "●",
			show_close_icon = false,
			show_buffer_close_icons = true,
			highlights = {
				fill = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "StatusLineNC" },
				},
				background = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "StatusLine" },
				},
				buffer_visible = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "Normal" },
				},
				buffer_selected = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "Normal" },
				},
				separator = {
					fg = { attribute = "bg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "StatusLine" },
				},
				separator_selected = {
					fg = { attribute = "fg", highlight = "Special" },
					bg = { attribute = "bg", highlight = "Normal" },
				},
				separator_visible = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "StatusLineNC" },
				},
				close_button = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "StatusLine" },
				},
				close_button_selected = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "Normal" },
				},
				close_button_visible = {
					fg = { attribute = "fg", highlight = "Normal" },
					bg = { attribute = "bg", highlight = "Normal" },
				},
			},
		},
	},
}
