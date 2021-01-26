
" call coc#add_extension('coc-vetur')
" 
" call coc#config('languageserver', {
"\ 'bash': {
"	\ "command": "bash-language-server",
"	\ "args" : ["start"],
"	\ "ignoredRootPaths": ["~"],
"	\ "filetypes": ["sh"]
"	\ }
"	\})
" 
" " Auto generate the comment for function or method
" nnoremap gcg :GoAuToComment<CR>
" 
" call coc#config('languageserver', {
"\ 'golang': {
"	\ "command": "gopls",
"	\ "rootPatterns": ["go.mod"],
"	\ "disableWorkspaceFolders": "true",
"	\ "filetypes": ["go"]
"	\ }
"	\})
" 
" let g:html5_event_handler_attributes_complete = 0
" let g:html5_rdfa_attributes_complete = 0
" let g:html5_microdata_attributes_complete = 0
" let g:html5_aria_attributes_complete = 0
" 
" call coc#add_extension('coc-html')
" 
" let g:python_highlight_all = 1
" call coc#add_extension('coc-python')
" 
" call coc#add_extension('coc-css')
" 
" " ccls config
" call coc#config('languageserver', {
"\ 'ccls': {
"	\ "command": "ccls",
"	\ "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
"	\ "filetypes": ["c","cpp","objc","objcpp"],
"	\ "initializationOptions": {
"	\ "cache":{
"		\ "directory": "/tmp/ccls"
"	\ }
"	\ }
"	\ }
"	\})
" 
" " call coc#add_extension('coc-rust-analyzer')
