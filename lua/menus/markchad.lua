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
		name = " Markdown Preview",
		cmd = "PeekOpen",
		rtxt = "<A-o>",
	},
	{
		name = "󱩽 Zen Mode",
		cmd = "ZenMode",
		rtxt = "<leader>zm",
	},
	{
		name = " Render Markdown (toogle)",
		cmd = "RenderMarkdown toggle",
		rtxt = "<leader>M",
	},
	{
		name = "󰉴 Show Headers",
		cmd = "Trouble symbols toggle focus=false",
		rtxt = "<leader>ts",
	},

	{ name = "separator" },
	{
		name = " Show Errors (buffer)",
		cmd = "Trouble diagnostics toggle filter.buf=0",
		rtxt = "<leader>tb",
	},
	{
		name = " Show Errors (workspace)",
		cmd = "Trouble diagnostics toggle",
		rtxt = "<leader>tt",
	},

	{ name = "separator" },

	{
		name = " Search & Replace",
		hl = "Exblue",
		items = "search",
	},

	{ name = "separator" },

	{
		name = "󰅘 Close all buffers",
		cmd = "%bd!",
		rtxt = "<leader>cx",
	},
}
