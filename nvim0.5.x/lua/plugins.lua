return require('packer').startup(function()
	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', opt = true}

    -- Colorscheme
    use  'joshdick/onedark.vim' 
    use  'Mofiqul/vscode.nvim' 

	-- finder
	use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

	-- LSP and completion
	use  'neovim/nvim-lspconfig' 
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-buffer",
        }
    }
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- Lua development
	use  'tjdevries/nlua.nvim' 

    -- Git
	use  'tpope/vim-fugitive' 
    use 'sindrets/diffview.nvim'

    -- Misselanious
    use 'tpope/vim-surround'

    -- Commenter
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'

    -- Tree
    -- use {
    --     'kyazdani42/nvim-tree.lua',
    --     requires = 'kyazdani42/nvim-web-devicons'
    -- }
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'

    -- BottomLine
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Formater
    use 'sbdchd/neoformat' 

    -- tmux-navigator
    use 'christoomey/vim-tmux-navigator'

    -- Close html tags
    use {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup({enable = true})
        end
    }
    -- vimspector
    use 'puremourning/vimspector'
end)
