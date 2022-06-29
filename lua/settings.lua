local o = vim.o
local wo = vim.wo
local bo = vim.bo



--Settings
o.hlsearch = true
wo.number = true
o.backspace = 'indent,eol,start'
vim.opt.clipboard = 'unnamedplus'

--plugin settings
require "paq" {
'vim-airline/vim-airline';
'kyazdani42/nvim-web-devicons';
 'kyazdani42/nvim-tree.lua';
'sainnhe/gruvbox-material';
'nvim-lua/plenary.nvim';
 'ray-x/lsp_signature.nvim';
 'nvim-telescope/telescope.nvim';
'lewis6991/gitsigns.nvim';
 'tribela/vim-transparent';
'tpope/vim-commentary';
{'neoclide/coc.nvim', branch="release"};
'vimwiki/vimwiki';
'sudormrfbin/cheatsheet.nvim';
'nvim-lua/popup.nvim';
'nvim-treesitter/nvim-treesitter';
"jbyuki/venn.nvim";
'numToStr/FTerm.nvim';
'jbyuki/nabla.nvim';
'junegunn/goyo.vim';
{"ellisonleao/glow.nvim", branch = 'main'};
'ixru/nvim-markdown';
}

--Colorscheme
vim.cmd("colorscheme gruvbox-material")

--NvimTree
require("nvim-tree").setup()
vim.cmd("NvimTreeToggle")
require("nvim-treesitter.configs").setup {
	ensure_installed = {"java", "c", "rust", "lua", "java", "cpp"},
	highlight={enable = true};
}


