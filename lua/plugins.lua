vim.cmd [[packadd packer.nvim]]

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- For languages server protocol on neovim
    use 'williamboman/mason.nvim' 
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'williamboman/nvim-lsp-installer'
    use 'jose-elias-alvarez/null-ls.nvim'
    use({"glepnir/lspsaga.nvim",branch = "main"}) -- lsp saga to improve UI 
    use "folke/lua-dev.nvim"
    
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

    -- For colorscheme
    use 'navarasu/onedark.nvim'

    -- For git
    use 'lewis6991/gitsigns.nvim'
    use 'rhysd/git-messenger.vim'                
    use 'kdheepak/lazygit.nvim'                  

    -- For status line
    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

    -- For start up neovim
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- For highlight syntax languages
    use 'nvim-treesitter/nvim-treesitter'

    -- For editor code
    use 'numToStr/Comment.nvim' -- Commnet
    use 'frazrepo/vim-rainbow'  -- highlight bracket
    use 'kylechui/nvim-surround'-- easy to 
    use 'windwp/nvim-autopairs'
    

    -- For improve performance nvim
    use 'lewis6991/impatient.nvim'

    -- For terminal
    use 'voldikss/vim-floaterm'

    -- For 
    use 'kyazdani42/nvim-tree.lua'

    -- For icon
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'


    use 'moll/vim-bbye'
    use 'machakann/vim-highlightedyank'          

    use 'camspiers/animate.vim'
    use 'camspiers/lens.vim'

    -- use 'tversteeg/registers.nvim'
    use 'kqito/vim-easy-replace'                 
    use 'matze/vim-move'                         

    use 'foosoft/vim-argwrap'                    

    use 'MunifTanjim/nui.nvim'

    use 'VonHeikemen/searchbox.nvim'             

    use 'unblevable/quick-scope'                 

    use 'nvim-lua/plenary.nvim'

    use 'folke/todo-comments.nvim'              

    use 'nvim-telescope/telescope.nvim'

    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'yamatsum/nvim-cursorline'

    use 'rcarriga/nvim-notify'

    use 'romgrk/barbar.nvim'

    use 'tenxsoydev/size-matters.nvim'

    use 'nvim-telescope/telescope-project.nvim'

    use 'karb94/neoscroll.nvim'

    use 'arafatamim/trouble.nvim'

    use 'antoinemadec/FixCursorHold.nvim'

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

