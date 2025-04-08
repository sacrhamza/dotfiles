syntax on
set mouse=a
set number


colorscheme gruvbox

" set the background
set background=dark



" Map /c to run macro on selected lines
" vnoremap /c :<C-u>normal! gv@c<CR>

" Automatically copy yanked text to the clipboard using xclip
"  au TextYankPost * if v:event.operator ==# 'y' | execute 'w !copy' | endif



let @c = '0i//ji'  


" Yank to system clipboard using xclip
augroup Yank
  autocmd!
  autocmd TextYankPost * if v:event.operator ==# 'y' | call system('xclip -selection clipboard', @") | endif
augroup END


vnoremap /c :normal @c<CR>
