" Gif config
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap t <Plug>(easymotion-overwin-f2)
nmap s <Plug>(easymotion-overwin-w)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
