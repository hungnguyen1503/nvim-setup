local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

require 'nvim-treesitter.install'.compilers = { "clang" }

configs.setup({
    ensure_installed = { "lua", "c", "cpp" }, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})