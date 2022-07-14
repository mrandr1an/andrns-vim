inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
nnoremap <leader>K :call ShowDocumentation()<CR>

"File is named coc but has other settings as well, give me a break
let g:vimwiki_list = [{'path': '~/.vimwiki/compilertheory',
		    \ 'syntax': 'markdown', 'ext': '.md'}]
syntax enable
filetype plugin indent on
syntax on
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
set rtp^="/home/andrn/.opam/cs3110-2021fa/share/ocp-indent/vim"
