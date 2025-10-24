return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ff', function() require('telescope.builtin').find_files() end, mode = 'n', desc = 'Find files' },
      { '<leader>fg', function() require('telescope.builtin').live_grep() end, mode = 'n', desc = 'Live grep' },
      { '<leader>fb', function() require('telescope.builtin').buffers() end, mode = 'n', desc = 'Live grep' },
    }
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        style = 'deep'
      }
      require('onedark').load()
    end
  },
  {
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
  },
}
