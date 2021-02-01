"--------------------------"
"     vim-buffet Keymap    "
"--------------------------"
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
nnoremap  [b :<C-u>bp<CR>
nnoremap  ]b :<C-u>bn<CR>
nnoremap <silent> <Leader>bc :Bonly<CR>
nnoremap <silent> <Leader>bx :Bw<CR>
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)



let g:spaceline_seperate_style= 'slant'

"--------------------------"
"     defx custom option   "
"--------------------------"
call defx#custom#option('_', {
  \ 'resume': 1,
  \ 'winwidth': 30,
  \ 'split': 'vertical',
  \ 'direction': 'topleft',
  \ 'show_ignored_files': 0,
  \ 'columns': 'indent:git:icons:filename',
  \ 'root_marker': ' ',
  \ 'floating_preview': 1,
  \ 'vertical_preview': 1,
  \ 'preview_height': 50,
	\ 'ignored_files':
	\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
	\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
  \ })

call defx#custom#column('git', {
  \   'indicators': {
  \     'Modified'  : '•',
  \     'Staged'    : '✚',
  \     'Untracked' : 'ᵁ',
  \     'Renamed'   : '≫',
  \     'Unmerged'  : '≠',
  \     'Ignored'   : 'ⁱ',
  \     'Deleted'   : '✖',
  \     'Unknown'   : '⁇'
  \   }
  \ })

call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

" Events
" ---

augroup userjplugin_defx
  autocmd!

  " Define defx window mappings
  autocmd FileType defx call <SID>defx_mappings()

  " Delete defx if it's the only buffer left in the window
  autocmd WinEnter * if &filetype == 'defx' && winnr('$') == 1 | bdel | endif

  " Move focus to the next window if current buffer is defx
  autocmd TabLeave * if &filetype == 'defx' | wincmd w | endif

augroup END



function! s:defx_mappings() abort
  " Defx window keyboard mappings
  setlocal signcolumn=no expandtab

	nnoremap <silent><buffer><expr> <CR>
	\ defx#is_directory() ?
	\ defx#do_action('open_tree', 'recursive:10') :
	\ defx#do_action('preview')
	nnoremap <silent><buffer><expr> b
	\ defx#do_action('multi', ['close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree', 'close_tree'])

	" open file 
  " nnoremap <silent><buffer><expr> st    defx#do_action('multi', [['drop', 'tabnew'], 'quit'])
  nnoremap <silent><buffer><expr> os     defx#do_action('open', 'botright vsplit')
  nnoremap <silent><buffer><expr> oh     defx#do_action('open', 'botright split')
  nnoremap <silent><buffer><expr> ot     defx#do_action('open', 'tabnew')
  nnoremap <silent><buffer><expr> ow     defx#do_action('open', 'choose')
	" nnoremap <silent><buffer><expr> o
	"\ (defx#is_directory() ? 0 : defx#do_action('multi', ['drop']))

	" 文件漫游
	nnoremap <silent><buffer><expr> h
	\ defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> l
	\ defx#is_directory() ? defx#do_action('open') : 0
	nnoremap <silent><buffer><expr> j
	\ line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k
	\ line('.') == 1 ? 'G' : 'k'
	" to home 
  nnoremap <silent><buffer><expr> ~     defx#async_action('cd')

	" change file and folder
	nnoremap <silent><buffer><expr> nd
	\ defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> nf
	\ defx#do_action('new_file')
	nnoremap <silent><buffer><expr> nm
	\ defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> c
	\ defx#do_action('copy')
	nnoremap <silent><buffer><expr> m
	\ defx#do_action('move')
	nnoremap <silent><buffer><expr> p
	\ defx#do_action('paste')
	nnoremap <silent><buffer><expr> d
	\ defx#do_action('remove')
  nnoremap <silent><buffer><expr> dd    defx#do_action('remove_trash')
	nnoremap <silent><buffer><expr> r
	\ defx#do_action('rename')
	nnoremap <silent><buffer><expr> yy
	\ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> *  defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr><nowait> <Space>
    \ defx#do_action('toggle_select') . 'j'

  nnoremap <silent><buffer><expr> zh     defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> q     defx#do_action('quit')
  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-p>  defx#do_action('print')
  nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
	nnoremap <silent><buffer><expr> .  defx#do_action('repeat')

  " File/dir management
  " Jump
	nnoremap <silent><buffer><expr> cd
	\ defx#do_action('change_vim_cwd')
  " Selection
  nnoremap <silent><buffer><expr> S  defx#do_action('toggle_sort', 'Time')
  nnoremap <silent><buffer><expr> C
    \ defx#do_action('toggle_columns', 'indent:mark:filename:type:size:time')
endfunction

let g:defx_git#indicators = {
  \ 'Modified'  : '•',
  \ 'Staged'    : '✚',
  \ 'Untracked' : 'ᵁ',
  \ 'Renamed'   : '≫',
  \ 'Unmerged'  : '≠',
  \ 'Ignored'   : 'ⁱ',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '⁇'
  \ }

let g:defx_icons_column_length = 1
let g:defx_icons_mark_icon = ''

nnoremap <silent> ;e
  \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
nnoremap <silent> ;a
	\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p') `<CR>





" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1



nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> ; :WhichKey ';'<CR>
