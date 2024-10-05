return {

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
		name = " File Manager (float)",
		cmd = "Neotree float toggle",
		rtxt = "-",
	},
	{
		name = " Git Manager",
		cmd = "LazyGit",
		rtxt = "<leader>lg",
	},

	{ name = "separator" },

	{
		name = " Markdown Preview",
		cmd = "PeekOpen",
		rtxt = "<A-o>",
	},
	{
		name = " Render Markdown (toogle)",
		cmd = "RenderMarkdown toggle",
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

	{ name = "separator" },

	{
		name = "Close all buffers",
		cmd = "%bd!",
		rtxt = "<leader>cx",
	},
}
