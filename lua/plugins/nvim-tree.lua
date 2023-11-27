return {
	'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	opts = {
  	 actions = {
	  open_file = {
	   window_picker = {
		   enable = false
	   },
	  },
	 },
	},
	config = function (_, opts)
		vim.g.loaded = 1
		vim.g.loaded_netrwPlugin = 1
		require("nvim-tree").setup(opts)
	end
}
