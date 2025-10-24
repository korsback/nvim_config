require("config.lazy")

config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = {"lua", "vim", "markdown", "gleam"},
  highlight = {enable = true},
  indent = {enable = true}
})
