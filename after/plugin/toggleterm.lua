-- toggleterm.lua

require("toggleterm").setup{
	size = 8
}

vim.keymap.set('n', '<leader>t', vim.cmd.ToggleTerm)
