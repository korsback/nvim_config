require("config.lazy")
require("setup")

-- Open telescope if no fileargument is provided to nvim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("telescope.builtin").find_files()
    end
  end,
})
