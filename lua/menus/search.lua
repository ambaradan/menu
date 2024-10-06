return {
  	{
		name = " Search & Replace (toogle)",
		cmd = function()
			require("spectre").toggle()
		end,
		rtxt = "<leader>R",
	},
	{
		name = "󰩉 Search & Replace (buffer)",
		cmd = function()
			require("spectre").open_file_search({ select_word = true })
		end,
		rtxt = "<leader>rp",
	},
	{
		name = "󰥨 Search & Replace (workspace)",
		cmd = function()
			require("spectre").open_visual({ select_word = true })
		end,
		rtxt = "<leader>rw",
	},
}
