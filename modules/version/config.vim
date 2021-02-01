
autocmd User VimagitEnterCommit startinsert

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support

" setup mapping to call :LazyGit
" nnoremap <silent> <leader>lg :LazyGit<CR>


" nnoremap <silent> <Leader>ga :Git add %:p<CR>
" nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
" nnoremap <silent> <Leader>gc :Git commit<CR>
" nnoremap <silent> <Leader>gb :Git blame<CR>
" nnoremap <silent> <Leader>gf :Gfetch<CR>
" nnoremap <silent> <Leader>gs :Git<CR>
" nnoremap <silent> <Leader>gp :Gpush<CR>
