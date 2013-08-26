" plugin specific
"
" Tagbar
nnoremap <silent> <leader>tt :TagbarOpen fj<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['jsl']

" FuzzyFinder
" disables caching :FufRenewCache
let g:fuf_help_cache_dir = ''
let g:fuf_tag_cache_dir = ''
let g:fuf_taggedfile_cache_dir = ''
" "FufBuffer        - Buffer mode (|fuf-buffer-mode|)
nnoremap <silent> <leader>fb :FufBuffer<CR>
" :FufFile|         - File mode (|fuf-file-mode|)
nnoremap <silent> <leader>ff :FufFile<CR>
" :FufDir|          - Directory mode (|fuf-dir-mode|)
nnoremap <silent> <leader>fd :FufDir<CR>
" :FufMruFile|      - MRU-File mode (|fuf-mrufile-mode|)
nnoremap <silent> <leader>fmf :FufMruFile<CR>
" :FufTag|          - Tag mode (|fuf-tag-mode|)
nnoremap <silent> <leader>ft :FufTag<CR>
" :FufTaggedFile|   - Tagged-File mode (|fuf-taggedfile-mode|)
nnoremap <silent> <leader>ftf :FufTaggedFile<CR>

