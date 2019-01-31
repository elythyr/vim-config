let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|_site|node_modules|var)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

let g:ctrlp_working_path_mode = 'ra' " Set the nearest ancesstor that contains .git
let g:ctrlp_map = '<C-F>' " To open CtrlP in 'File' (standard) mode without conflicting with pdv
let g:ctrlp_by_filename = 1 " Search by filename (as opposed to full path)
let g:ctrlp_clear_cache_on_exit = 0 " Enable cross-session caching

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:100'

" Change the root of CtrlP when editing something in my Vim directory
" Example: When I edit a plugin, I may want to be able to use CtrlP to find a
" config or another plugin, etc.
augroup ely_ctrlp
  autocmd!
  " autocmd BufRead,BufWrite ~/.vim/* let b:ctrlp_root_markers = ['vimrc']
  execute 'autocmd BufRead,BufWrite ' . fnamemodify(resolve(expand('%')), ':p:h:h') . '/* let b:ctrlp_root_markers = ["vimrc"]'
augroup END
