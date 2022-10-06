vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'williamboman/mason.nvim' 
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'williamboman/nvim-lsp-installer'
    use 'jose-elias-alvarez/null-ls.nvim'
    
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- For ultisnips users.
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'

    -- For snippy users.
    use 'dcampos/nvim-snippy'
    use 'dcampos/cmp-snippy'

    use 'navarasu/onedark.nvim'
    use 'lewis6991/gitsigns.nvim'

    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'nvim-treesitter/nvim-treesitter'

    use({"glepnir/lspsaga.nvim",branch = "main"})

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

