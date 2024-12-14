return {
	defaults = {
		border = true,
	},
	extensions_list = { "ui-select" },
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
}
