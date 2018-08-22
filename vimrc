"== Vundle configuation =="

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
" YCM configuration
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" set UltiSnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-e>"

Plugin 'taglist.vim'
" taglist configuration
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1

"Plugin 'universal-ctags/ctags'

Plugin 'scrooloose/nerdtree'
" NERDTree configuration
" start NERDTree when no files specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" toggle NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

Plugin 'kien/ctrlp.vim'
" ctrlp configuration
let g:ctrlp_map = '<leader>c'

"Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-syntastic/syntastic'
" Syntastic configuration

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'tpope/vim-fugitive'

Plugin 'tamlok/detorte'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"== Custom settings =="

set title " update terminal title
set number " show line numbers
set ruler " show cursor position
set wrap " wrap lines

set scrolloff=3 " display at least 3 lines around cursor

set ignorecase " ignore case when searching
set smartcase " enable case sensitive searching when uppercase is in pattern

set incsearch " highlight search results when typing
set hlsearch " highlight search results

set visualbell " no beep
set noerrorbells " no beep

" no beep
set vb t_vb=
au GuiEnter * set t_vb=

set backspace=indent,eol,start " normal backspace

set hidden " hide buffer when switching to another

syntax enable " enable syntax highlighting
filetype on " enable file specific highlighting
filetype plugin on
filetype indent on

" indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" color scheme
colorscheme detorte
DetorteHighContrast
let g:detorte_theme_mode = 'dark'

" do not expand tab for Makefile
autocmd filetype Makefile set noexpandtab

" shortcuts
let mapleader = ","
nnoremap <Leader>n :new<CR>
nnoremap <Leader>w :write<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>z ZZ

" disable directional keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" cscope configuration
"if has("cscope")
"  set csprg=/usr/bin/cscope
"  set csto=1
"  set cst
"  set nocsverb
"  " add any database in current directory
"  if filereadable("cscope.out")
"    cs add cscope.out
"  endif
"  set csverb
"endif
"nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
