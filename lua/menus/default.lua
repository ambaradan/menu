return {
	{
		name = " Open File",
		cmd = "Telescope find_files",
		rtxt = "<leader>ff",
	},
	{
		name = " Recent Files",
		cmd = "Telescope oldfiles",
		rtxt = "<leader>fo",
	},
	{
		name = " File Manager",
		cmd = "Neotree float toggle",
		rtxt = "-",
	},

	{ name = "separator" },

	{
		name = " Git Manager",
		cmd = "Neogit kind=vsplit",
		rtxt = "<leader>ng",
	},

	{ name = "separator" },

	{
		name = "󰉸 Format Buffer",
		cmd = function()
			local ok, conform = pcall(require, "conform")

			if ok then
				conform.format({ lsp_fallback = true })
			else
				vim.lsp.buf.format()
			end
		end,
		rtxt = "<leader>fm",
	},

	{ name = "separator" },

	{
		name = " Code Actions",
		cmd = vim.lsp.buf.code_action,
		rtxt = "<leader>ca",
	},

	{ name = "separator" },

	{
		name = "󰘦 Lsp Actions",
		hl = "Exblue",
		items = "lsp",
	},

	{ name = "separator" },


	{
		name = " Search & Replace",
		hl = "Exblue",
		items = "search",
	},

	{ name = "separator" },

	{
		name = "  Command Line",
		hl = "ExRed",
		cmd = "Telescope cmdline",
		rtxt = ",",
	},
	{
		name = " Terminal",
		cmd = function()
			require("nvchad.term").toggle({
				pos = "float",
				id = "floatTerm",
				float_opts = {
					row = 0.45,
					col = 0.40,
					width = 0.6,
					height = 0.4,
				},
			})
		end,
		rtxt = "<A-i>",
	},
	{ name = "separator" },
	{
		name = "󰅘 Close all buffers",
		cmd = "%bd!",
		rtxt = "<leader>cx",
	},
	{
		name = "󰞋 Help",
		cmd = "Telescope help_tags",
		rtxt = "<leader>fh",
	},
}
