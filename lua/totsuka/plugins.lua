vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

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

    use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
    }

    use 'norcalli/nvim-colorizer.lua'
    -- use 'lukas-reineke/indent-blankline.nvim'
    use 'nekonako/xresources-nvim'
    use 'nyoom-engineering/oxocarbon.nvim'
    use 'Mofiqul/vscode.nvim'

end)
