
"accelerated-jk
nmap <silent>j <Plug>(accelerated_jk_gj)
nmap <silent>k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [2, 4, 7, 15]

nnoremap <silent> <Leader>m :MundoToggle<CR>

" Easymotion
let g:EasyMotion_smartcase = 1

nmap <leader>s <Plug>(easymotion-s2)
" JK motions: Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" hi link EasyMotionTarget Search
" hi link EasyMotionShade  Search
" 
" hi link EasyMotionTarget2First MatchParen
" hi link EasyMotionTarget2Second MatchParen
" 
" hi link EasyMotionMoveHL Search
" hi link EasyMotionIncSearch Search

" Rainbow
let g:rainbow_active = 1

" nnoremap <silent> <Leader>t :<C-u>FloatermToggle<CR>
"
let g:floaterm_width=0.8
let g:floaterm_height=0.8

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'



" 内嵌终端 切换 normal 模式
tnoremap <c-[> <c-\><c-n>


" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 0

" vim keysound
 let g:keysound_enable = 1
 let g:keysound_py_version = 3
 " default typewriter mario sword bubble
 let g:keysound_theme = 'typewriter'
 let g:keysound_volume = 800

 " vim auto save
 let g:auto_save = 1  " enable AutoSave on Vim startup



