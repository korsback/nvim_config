-- Treesitter
config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = {"lua", "vim", "markdown", "gleam"},
  highlight = {enable = true},
  indent = {enable = true}
})

-- Neotree
vim.keymap.set('n', '<leader>tt', '<Cmd>Neotree toggle current reveal_force_cwd<CR>')
vim.keymap.set('n', '<leader>tg', '<Cmd>Neotree float git_status<CR>')


