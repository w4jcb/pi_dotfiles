if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin("~/.config/nvim/plugged")

" Airline nice status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python autocompletion
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'

" Better file browser
Plug 'scrooloose/nerdtree'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autocomplete
Plug 'davidhalter/jedi-vim'

call plug#end()

" Include user's custom vim configurations
 let custom_configs_path = "~/.vim/custom.vim"

 if filereadable(expand(custom_configs_path))
   execute "source " . custom_configs_path
   endif

