-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- use({
	 --  'rose-pine/neovim',
	 --  as = 'rose-pine',
	 --  config = function()
		-- vim.cmd('colorscheme rose-pine')
	 --  end
  -- })

  use({
	  'folke/tokyonight.nvim',
	  as = 'tokyonight',
	  config = function()
		vim.cmd('colorscheme tokyonight')
	  end
  })


  use {
	  "max397574/better-escape.nvim",
	  config = function()
		  require("better_escape").setup()
	  end,
  }
  use {'ojroques/nvim-bufdel'}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Lsp
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }

  use {
      "windwp/nvim-autopairs",
      config = function()
          require("nvim-autopairs").setup()
      end
  }

  use("p00f/nvim-ts-rainbow")
  use('folke/lsp-colors.nvim')
-- install without yarn or npm
  use({ "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  })

  use("tpope/vim-surround")
  use("tpope/vim-repeat")
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Lua
  use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
          require("trouble").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }
end)
