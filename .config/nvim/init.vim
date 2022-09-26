if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
   echo "Downloading junegunn/vim-plug to manage plugins..."
   silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
   silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
   autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
call plug#end()

set bg=light
set clipboard+=unnamedplus " always interact with system clipboard
set colorcolumn=100
set expandtab
set guicursor=i:block " bring old Vim cursor back
set laststatus=0
set laststatus=0
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nohlsearch
set nowrap
set number
set relativenumber
set ruler
set shiftwidth=0 " use [tabstop]
set smartcase
set smartindent
set tabstop=3
set title

filetype on
syntax on
highlight ColorColumn ctermbg=0 " set color of the [colorcolumn]
let mapleader=" "
" delete trailing whitespaces at file save
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e

nnoremap <silent> <leader>/ :wincmd v<CR>
nnoremap <silent> <leader>- :wincmd s<CR>
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>s :wincmd p<CR>
nnoremap <silent> <C-j> :tabprevious<CR>
nnoremap <silent> <C-k> :tabnext<CR>
nnoremap <silent> <leader>q :x<CR>
nnoremap <silent> <Esc> :noh<CR>
nnoremap <silent> <leader>x :qa!<CR>
nnoremap <silent> <leader>ws :set list!<CR> " toggle showing whitespace
nnoremap <silent> <leader>cp :!clipcp %<CR>
nnoremap <silent> <leader>pdf :w! \| !texmake "%" <CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>vim :source ~/.config/nvim/init.vim<CR>
