if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
   echo "Downloading junegunn/vim-plug to manage plugins..."
   silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
   silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
   autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'morhetz/gruvbox'
Plug 'bfrg/vim-cpp-modern'
Plug 'derekwyatt/vim-fswitch'
call plug#end()

set bg=dark
set cinoptions=l1 " fix [switch] [case] indenting in C
set clipboard+=unnamedplus " always interact with system clipboard
set colorcolumn=80
set completeopt=
set expandtab
set guicursor=i:block " bring old Vim cursor back
set hidden
set ignorecase
set incsearch
set laststatus=0
set laststatus=0
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set mouse=a " window resizing using mouse
set nohlsearch
set noruler
set nowrap
set number
set relativenumber
set ruler
set scrolloff=8
set shiftwidth=0 " use [tabstop]
set smartcase
set smartindent
set splitbelow splitright
set tabstop=3
set title
set wildignore+=*.o,*.d,*.a,*.obj,*.png,*.jpg,*.pdf,*.zip

filetype on
filetype plugin on
syntax on
autocmd VimEnter * highlight ColorColumn ctermbg=0 " set color of the [colorcolumn]
let mapleader=" "
" delete trailing whitespaces at file save
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
colorscheme gruvbox

nnoremap <silent> <leader>/ :wincmd v<CR>
nnoremap <silent> <leader>- :wincmd s<CR>
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>s :wincmd p<CR>
nnoremap <silent> <leader>= :wincmd =<CR>
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
nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>sf :CtrlSF<SPACE>
vnoremap <leader>wf <Plug>CtrlSFVwordExec
nnoremap <leader>wf <Plug>CtrlSFCwordPath
vnoremap <silent> J :m '>+1<CR>gv=gv
vnoremap <silent> K :m '<-2<CR>gv=gv
nnoremap <silent> < v<
nnoremap <silent> > v>
nnoremap <silent> <leader>cc :call NERDComment(0,"toggle")<CR>
vnoremap <silent> <leader>cc :call NERDComment(0,"toggle")<CR>
nnoremap <silent> <leader>ca :call NERDComment(0,"append")<CR>
" for whatever reason this slows down Vim
" inoremap <silent> <leader>cc <C-O>:call NERDComment(0,"toggle")<CR>
nnoremap <silent> <leader>ga :FSHere<CR>
nnoremap <silent> <leader>gsa :FSSplitRight<CR>

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction

inoremap <silent> <Tab> <C-R>=CleverTab()<CR>
inoremap <silent> <S-TAB> <C-p>

" autocomplete parenthesis
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:ctrlp_map = '<leader>ff'
let g:ctrlp_working_path_mode='c'
let g:ctrlp_switch_buffer=0
