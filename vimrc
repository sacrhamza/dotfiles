syntax on
set mouse=a
set number


colorscheme gruvbox

set background=dark

" Always highlight search results
"set hlsearch
set incsearch
" Basic color customization (GUI/terminal)
"highlight Search ctermfg=Black ctermbg=Yellow guifg=#000000 guibg=#FFFF00

function! SetFiletypeMacro()
	if &filetype == 'sh'
		let @c = '0i#ji' 
	else	
		let @c = '0i//ji'
	endif
endfunction

augroup filetype_macros
  autocmd!
  autocmd FileType * call SetFiletypeMacro()
  autocmd BufEnter * call SetFiletypeMacro()
augroup END


" Yank to system clipboard using xclip
augroup Yank
  autocmd!
  autocmd TextYankPost * if v:event.operator ==# 'y' | call system('xclip -selection clipboard', @") | endif
augroup END


vnoremap /c :normal @c<CR>
