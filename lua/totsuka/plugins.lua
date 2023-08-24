vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Telescope
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorscheme, the worst of all time
	use {
	  'nyoom-engineering/oxocarbon.nvim',
	  config = function()
	  	vim.cmd("colorscheme oxocarbon")
	  end
	}

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Better navigation
	use 'theprimeagen/harpoon'

	-- Better undoing of files
	use 'mbbill/undotree'

	-- Git integration
	use 'tpope/vim-fugitive'

	-- LSP
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}

    -- Zen mode
    use 'folke/zen-mode.nvim'
    use 'folke/twilight.nvim'

    -- Toggleterm
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}

    -- Comment.nvim
    use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
    }

    -- Colorizer for hex code previews
    use 'norcalli/nvim-colorizer.lua'

end)
