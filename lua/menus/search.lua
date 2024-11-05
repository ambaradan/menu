return {
  	{
		name = "Toggle Search",
		cmd = function()
			require("spectre").toggle()
		end,
		rtxt = "<leader>R",
	},
	{
		name = "Buffer Search",
		cmd = function()
			require("spectre").open_file_search({ select_word = true })
		end,
		rtxt = "<leader>rp",
	},
	{
		name = "Workspace Search",
		cmd = function()
			require("spectre").open_visual({ select_word = true })
		end,
		rtxt = "<leader>rw",
	},
}
