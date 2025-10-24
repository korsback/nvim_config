return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { '<leader>t', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file explorer' },
      { '<leader>tf', '<cmd>NvimTreeFocus<CR>', desc = 'Focus file explorer' },
      { '<leader>tff', '<cmd>NvimTreeFindFileToggle<CR>', desc = 'Find current file in tree' },
    },
    config = function()
      require("nvim-tree").setup {}
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ff', function() require('telescope.builtin').find_files() end, mode = 'n', desc = 'Find files' },
      { '<leader>fg', function() require('telescope.builtin').live_grep() end, mode = 'n', desc = 'Live grep' },
    }
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  },
  {
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
  },
}
