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

    -- Sensible closings
    use 'tpope/vim-endwise'
    use 'rstacruz/vim-closer'

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

    -- null-ls
    use "jose-elias-alvarez/null-ls.nvim"

    -- Which-key
    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
            icons = {
                    group      = '+',
                    breadcrumb = '=',
                    separator  = '->',
            },
        }
      end
    }
    --------
    -- UI --
    --------

    -- Statusline
    -- I wanted not to, but the default statusline infuriates me
	use 'echasnovski/mini.statusline'

	-- Colorscheme, the worst of all time
	use 'nyoom-engineering/oxocarbon.nvim'

    -- Zen mode
    use 'folke/zen-mode.nvim'
    use 'folke/twilight.nvim'

end)
