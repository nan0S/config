" VimPlug:
	if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
		echo "Downloading junegunn/vim-plug to manage plugins..."
		silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
		silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
		autocmd VimEnter * PlugInstall
	endif

" Legacy:
	" relative line numbers to current line position
	set relativenumber
	" line numbering
	set number
	" don't look back
	set nocompatible
	" enables syntax highlighting
	" recognizes filetypes (syntax highlighting)
	syntax enable
	" special options for different filetypes
	" automatic ident
	filetype plugin indent on
	" ** is a file glob - any file in this folder or subfolder get's catched
	" that means that when we use find it searches in the whole working directory
	set path+=**
	" tab completions/propositions menu (lets you shift through completions)
	set wildmenu
	" position in the file in lower right corner
	set ruler
	" faster reaction to pressing ESC
	set ttimeout
	set ttimeoutlen=50
	" show matchings of pattern while typing
	set incsearch
	" highlight all matches
	set hlsearch
	" show vim command as you type
	set showcmd
	" some indenting
	set smartindent
	" do not ignore case when ignore case is on when you type uppercase in search
	set smartcase
	" add hidden buffers to switch buffers even when changes are made but not written
	set hidden
	" add ignore case when searching with /
	set ignorecase
	" tab width when pressing <Tab>
	set tabstop=4
	" tab visual when breaking line in loop
	set shiftwidth=4
	" do not wrap lines when screen is to narrow
	set nowrap
	" number of lines to move when using Ctrl-D, Ctrl-U (0 means half page)
	set scroll=10 " (I don't know why it doesn't work - variable is not set so I added alias to .bashrc)
	" bring back the block cursor to nvim
	set guicursor=i:block
	" if hidden is not set, TextEdit might fail.
	set hidden
	" Some servers have issues with backup files, see #649
	set nobackup
	set nowritebackup
	" Better display for messages
	set cmdheight=1
	" You will have bad experience for diagnostic messages when it's default 4000
	set updatetime=300
	" don't give |ins-completion-menu| messages
	set shortmess+=c
	" always show signcolumns
	set signcolumn=yes
	" remap mapleader key for convenience
	let mapleader = " "
	" automatically deletes all trailing whitespace and newlines at end of file on save
	" autocmd BufWritePre * %s/\s\+$//e
	" autocmd BufWritePre * %s/\n\+\%$//e
	" autocmd BufWritePre *.[ch] %s/\%$/\r/e
	" use spaces instead of tabs
	set expandtab
	" set how to show whitespaces
	set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
    " highlight current line
    set cursorline

" Plugins:
call plug#begin('~/.config/nvim/plugged')
	" gruvbox theme
	Plug 'morhetz/gruvbox'
	" automatically close brackets
	Plug 'jiangmiao/auto-pairs'
	" very fast grep for project files
	Plug 'jremmen/vim-ripgrep'
	" tree of directory
	Plug 'preservim/nerdtree'
	" search for files
	Plug 'kien/ctrlp.vim'
	" comment and uncomment lines easily
	Plug 'preservim/nerdcommenter'
	" autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" lightline
	Plug 'itchyny/lightline.vim'
	" move lines and visual blocks like in VSCode
	Plug 'matze/vim-move'
    " C++ richer syntax highlighting
    Plug 'bfrg/vim-cpp-modern'
    " vim-github-dark colorscheme
    Plug 'wojciechkepka/vim-github-dark'
call plug#end()

" Shortcuts:
	" split vertically
	nnoremap <silent> <leader>v :wincmd v<CR>
	" split horizontally
	nnoremap <silent> <leader>b :wincmd s<CR>
	" move left
	nnoremap <silent> <leader>h :wincmd h<CR>
	" move down
	nnoremap <silent> <leader>j :wincmd j<CR>
	" move up
	nnoremap <silent> <leader>k :wincmd k<CR>
	" move right
	nnoremap <silent> <leader>l :wincmd l<CR>
	" move next
	nnoremap <silent> <leader>w :wincmd w<CR>
	" move previous
	nnoremap <silent> <leader>W :wincmd W<CR>
	" close and save window
	nnoremap <silent> <leader>q :x<CR>
	" go to last window
	nnoremap <silent> <leader>s :wincmd p<CR>
	" make all windows equal
	nnoremap <silent> <leader>= :wincmd =<CR>
	" reindent
	nnoremap <silent> <leader>i gg=G<C-o>zz
	" move split to new tab
	nnoremap <silent> <leader>T :wincmd T<CR>
	" go to precious tab
	nnoremap <C-h> :tabprevious<CR>
	" go to next tab
	nnoremap <C-l> :tabnext<CR>
	" go to the next tag
	nnoremap <silent> <leader>d :<c-u>call search('<++>')<cr> ca<
	" set fullscreen mode when split
	nnoremap <silent> <leader>f :wincmd _ <Bar> :wincmd <Bar><CR>
	" copy to clipboard mappings
	vnoremap <C-c> "+y
	nnoremap <C-c> "+yy
	vnoremap <leader>y "+y
	nnoremap <leader>y "+yy
	" when indenting/reindenting keep visual block selected all the time
	vnoremap > >gv
	vnoremap < <gv
	" disable highlight
	nnoremap <Esc><Esc> :noh<CR>
	" lightline theme
	" let g:lightline = {
		  " \ 'colorscheme': 'seoul256',
		  " \ }
	" resizing splitted files
	nnoremap - :resize -5<CR>
	nnoremap + :resize +5<CR>
	nnoremap <leader>< :vert resize -5<CR>
	nnoremap <leader>> :vert resize +5<CR>
	" swap ; and :
	noremap : ;
	noremap ; :
	" add and remove tabs in normal mode
	nnoremap < v<
	nnoremap > v>
	" copy current file contents to clipboard
	nnoremap <leader>cp :!clipcp %<CR>
	" close all buffers force without saving
	nnoremap <leader>x :qa!<CR>
	" find files in project with CtrlP
	" nnoremap <leader>pf :CtrlP<CR>
	" easy use of rip grep
	nnoremap <leader>ps :Rg<SPACE>
	" exit terminal mode
	tnoremap <Esc> <C-\><C-n>
	" open terminal and go to insert mode in terminal
	nnoremap <leader>t :vsplit<Bar>terminal<CR><Bar>:wincmd x<CR><Bar>:wincmd p<CR>i
	" save file with Ctrl-S
	nnoremap <C-S> :update<CR>
	vnoremap <C-S> <C-C>:update<CR>
	inoremap <C-S> <C-O>:update<CR>
	" toggle showing whitespace
	nnoremap <C-C> :set list!<CR>
    " source vimrc
    nnoremap <leader>rc :source $MYVIMRC<CR>

" NERDTree:
	" Check if NERDTree is open or active
	function! IsNERDTreeOpen()
	  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
	endfunction

	" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
	" file, and we're not in vimdiff
	function! SyncTree()
	  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
		normal! zz
		wincmd p
	  endif
	endfunction

	" Highlight currently open buffer in NERDTree
	autocmd BufEnter * call SyncTree()

	" make NERD tree first open to open once not twice
	function! ToggleNerdTree()
	  set eventignore=BufEnter
	  NERDTreeToggle
	  set eventignore=
	endfunction

	" custom NERD tree Find function
	function! FindNerdTree()
		set eventignore=BufEnter
		NERDTreeFind
		set eventignore=
	endfunction

	" custom toggle NERD tree
	nnoremap <leader>pt :call ToggleNerdTree()<CR>
	" open NERD tree and select current file
	nnoremap <leader>pv :call FindNerdTree()<CR>
	" refresh CtrlP and NERD tree
	nnoremap <silent> <leader>pr :NERDTreeRefreshRoot<CR><Bar>:CtrlPClearCache<CR><Bar>:CocRestart<CR>
	" auto exit when NERD tree is the only window open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

	" add spaces after comment delimeters by default
	let g:NERDSpaceDelims = 1

	" comment with Ctrl-/ (Vim sees Ctrl-/ as Ctrl-_)
	vnoremap <C-_> :call NERDComment(0,"toggle")<CR>
	nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
	inoremap <C-_> <C-O>:call NERDComment(0,"toggle")<CR>

" Coc:
	" refresh Coc
	nnoremap <silent> <leader>rf :CocDisable <CR> :CocEnable <CR>

	" Use tab for trigger completion with characters ahead and navigate.
	" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
	inoremap <silent><expr> <TAB>
		 \ pumvisible() ? "\<C-n>" :
		 \ <SID>check_back_space() ? "\<TAB>" :
		 \ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
	" Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[c` and `]c` to navigate diagnostics
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  else
		call CocAction('doHover')
	  endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Remap for rename current word
	nmap <leader>rn <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	" xmap <leader>a  <Plug>(coc-codeaction-selected)
	" nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	" nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>gf  <Plug>(coc-fix-current)

	" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
	" nmap <silent> <TAB> <Plug>(coc-range-select)
	" xmap <silent> <TAB> <Plug>(coc-range-select)
	" xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" use `:OR` for organize import of current buffer
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add status line support, for integration with other plugin, checkout `:h coc-status`
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Using CocList
	" Show all diagnostics
	nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions
	" Manage extensions
	nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
	" Show commands
	nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document
	nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols
	" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list

	command! -nargs=0 Prettier :CocCommand prettier.formatFile
	nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Theme:
	" set colorscheme to gruvbox
    colorscheme gruvbox
	" background to dark
	set background=dark
    " for vim-github-dark
    " let g:gh_color = "soft"

" Other:
	let g:python3_host_prog='/bin/python'
	" mapping for vim-move Plugin to move up and down
	" remember that I changed vim-move plugin .vim to not map <C-h>, <C-l>
	let g:move_key_modifier = 'C'
	" ignore custom files when searching with CtrlP
	" let g:ctrlp_custom_ignore = {
	" \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	" \ 'file': '\v\.(o|d|exe|so|dll)$',
	" \ 'link': 'some_bad_symbolic_links',
	" \ }
    let g:ctrlp_user_command = 'ag %s -l --nocolor --path-to-ignore ~/.config/ag/ignore -g ""'
    " set current directory to look in to be nearest ancestor with .git folder ('r' option)
    " if jumped to another file, outside of our working tree, search there ('a' option)
    let g:ctrlp_working_path_mode = 'ra'
