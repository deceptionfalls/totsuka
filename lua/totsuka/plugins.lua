vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

   ----------------
    -- Functionality
    ----------------

    -- Telescope
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Better navigation
	use 'theprimeagen/harpoon'

	-- Better undoing of files
	use 'mbbill/undotree'

	-- Git integration
	use 'tpope/vim-fugitive'

    -- Smart brackets and quotes
    use 'Raimondi/delimitMate'

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

    -- Comment.nvim
    use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
    }
end)
