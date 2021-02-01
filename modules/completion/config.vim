let g:coc_global_extensions =[
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-json',
	\ 'coc-highlight',
	\ 'coc-git',
	\ 'coc-emoji',
	\ 'coc-lists',
	\ 'coc-stylelint',
	\ 'coc-yaml',
	\ 'coc-gitignore',
	\ 'coc-yank',
	\ 'coc-actions',
	\ 'coc-db',
	\ 'coc-spell-checker',
	\ 'coc-vimlsp',
	\ 'coc-prettier',
   \]

" Don't pass messages to |ins-completion-menu|.
 set shortmess+=c

"--------------------------"
"     Coc Keymap           "
"--------------------------"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

nnoremap K :call Show_documentation()<CR>

" use <leader>fu to fuzzy errors
nnoremap <silent><nowait> <LEADER>fu :CocList diagnostics<cr>
" Use [e and ]e for navigate diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Remap keys for goto
nmap <silent> <leader>dp :<C-u>call initself#definition_other_window()<CR>
nmap <silent> <leader>du <Plug>(coc-type-definition)
nmap <silent> <Leader>di <Plug>(coc-implementation)
nmap <silent> <leader>do <Plug>(coc-references)

" Remap for rename current word
nmap <Leader>rn <Plug>(coc-rename)
" remap for translator
nmap <silent> <leader>dk <Plug>(coc-translator-p)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w

" Fix autofix problem of current line
nmap <Leader>qf  <Plug>(coc-fix-current)

nmap [g <Plug>(coc-git-prevcount)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <Leader>gi <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <Leader>gm <Plug>(coc-git-commit)

 xmap if <Plug>(coc-funcobj-i)
 xmap af <Plug>(coc-funcobj-a)
 omap if <Plug>(coc-funcobj-i)
 omap af <Plug>(coc-funcobj-a)
" nmap gcj :execute 'CocCommand docthis.documentThis'<CR>
