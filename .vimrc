" vim-plug: Vim plugin manager
" ============================
"
" Download plug.vim and put it in ~/.vim/autoload
"
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Edit your .vimrc
"
"   call plug#begin('~/.vim/plugged')
"
"   " Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" Airline nice status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()



" Include user's custom vim configurations
 let custom_configs_path = "~/.vim/custom.vim"

 if filereadable(expand(custom_configs_path))
   execute "source " . custom_configs_path
   endif

