
" let s:zshrc = expand($HOME . '/.zshrc')
" let s:tmux_conf = expand($HOME . '/.tmux.conf')
" let g:clap_cache_directory = $DATA_PATH . '/clap'
" let g:clap_theme = 'material_design_dark'
" let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
" let g:clap_layout = { 'relative': 'editor' }
" let g:clap_enable_icon = 1
" let g:clap_search_box_border_style = 'curve'
" let g:clap_provider_grep_enable_icon = 1
" let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '
" let g:clap_provider_personalconf = {
"      \ 'source': [s:zshrc,s:tmux_conf],
"     \ 'sink': 'e',
"      \ }
" 
" 
" " A funtion to config highlight of ClapSymbol
" " when the background color is opactiy
" function! s:ClapSymbolHL() abort
"     let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
"     if s:current_bgcolor == ''
"         hi ClapSymbol guibg=NONE ctermbg=NONE
"     endif
" endfunction
" 
" autocmd User ClapOnEnter call s:ClapSymbolHL()
" 
" "--------------------------"
" "     vim-clap Keymap      "
" "--------------------------"
" let g:clap_open_action =  { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
" " use <C-n> and <C-p>
" autocmd FileType clap_input inoremap <silent> <buffer> <C-n> <C-R>=clap#navigation#linewise('down')<CR>
" autocmd FileType clap_input inoremap <silent> <buffer> <C-p> <C-R>=clap#navigation#linewise('up')<CR>
" 
" nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
" nnoremap <silent> <Leader>bb :<C-u>Clap buffers<CR>
" nnoremap <silent> <Leader>fa :<C-u>Clap grep2<CR>
" nnoremap <silent> <Leader>fb :<C-u>Clap marks<CR>
" "like emacs counsel-find-file
" nnoremap <silent> <C-x><C-f> :<C-u>Clap filer<CR>
" nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
" nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
" nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
" nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
" nnoremap <silent> <Leader>fW :<C-u>Clap windows<CR>
" nnoremap <silent> <Leader>fl :<C-u>Clap loclist<CR>
" nnoremap <silent> <Leader>fu :<C-u>Clap git_diff_files<CR>
" nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
" nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>
" 
" "--------------------------"
" "     coc-clap Keymap      "
" "--------------------------"
" " Show all diagnostics
" nnoremap <silent> <Leader>ce  :Clap coc_diagnostics<CR>
" " Manage extensions
" nnoremap <silent> <Leader>;   :Clap coc_extensions<CR>
" " Show commands
" nnoremap <silent> <Leader>,   :Clap coc_commands<CR>
" " Search workspace symbols
" nnoremap <silent> <Leader>cs  :Clap coc_symbols<CR>
" nnoremap <silent> <Leader>cS  :Clap coc_services<CR>
" nnoremap <silent> <leader>ct  :Clap coc_outline<CR>



"--------------------------"
"    LeaderF  configuration      "
"--------------------------"
" preview the result in a popup window.
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_NormalMap = {
	\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
	\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
	\ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
	\ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
	\ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
	\ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
	\ }

"--------------------------"
"    LeaderF  mapping      "
"--------------------------"
" search file
let g:Lf_ShortcutF = '<Leader>ff' 
noremap <Leader>fm :LeaderfMru<cr>
" search function
noremap <Leader>fp :LeaderfFunction<cr>
noremap <Leader>fu :LeaderfTag<cr>
noremap <Leader>fo :LeaderfBuffer<cr>
" let g:Lf_ShortcutB = '<Leader>fn'
" search line
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <Leader>fw :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR><CR>
noremap <Leader>fa :Leaderf rg<CR>


" search word under cursor, the pattern is treated as regex,

" search word under cursor literally only in current buffer
noremap <Leader>frb :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

" search word under cursor literally in all listed buffers
noremap <Leader>fra :<C-U><C-R>=printf("Leaderf! rg -F --all-buffers -e %s ", expand("<cword>"))<CR>

" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap <Leader>frs :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>

" recall last search. If the result window is closed, reopen it.
noremap go :<C-U>Leaderf! rg --recall<CR>


" search word under cursor in *.h and *.cpp files.
"noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.h -g *.cpp", expand("<cword>"))<CR>
" search word under cursor in *.h and *.cpp files.
"noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.h -g *.cpp", expand("<cword>"))<CR>
" the same as above
"noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.{h,cpp}", expand("<cword>"))<CR>

" search word under cursor in cpp and java files.
" noremap <Leader>b :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -t java", expand("<cword>"))<CR>

" search word under cursor in cpp files, exclude the *.hpp files
" noremap <Leader>c :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -g !*.hpp", expand("<cword>"))<CR>
" the same as above

" 
