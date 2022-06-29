inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
"File is named coc but has other settings as well, give me a break
let g:vimwiki_list = [{'path': '~/.vimwiki/compilertheory',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
