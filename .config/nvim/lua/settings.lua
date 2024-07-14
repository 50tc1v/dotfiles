local opt = vim.opt 

-- :help options
opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.signcolumn = "yes"
opt.colorcolumn = "120"
opt.cursorline = true
opt.showmode = false

require('gruvbox').setup {
	transparent_mode = true,
}
require('gruvbox').load()

require('lualine').setup {
	options = {
  theme = 'gruvbox'
  }
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
