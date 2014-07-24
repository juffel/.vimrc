"####################
" Vundle requirements (src: https://github.com/gmarik/Vundle.vim#quick-start)
"####################
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" Prepared vim for JavaScript Development, setup taken from http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'

"Bundle 'scrooloose/syntastic'
" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
"let g:syntastic_check_on_open=1

Bundle 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

Bundle 'marijnh/tern_for_vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"####################
" /Vundle requirements
"####################

set number

set tabstop=4

set softtabstop=4
set shiftwidth=4
set expandtab

set history=700

set ignorecase "ignores case when searching

syntax enable "enables syntax highlighting

set ai "auto indet
set si "smart indet

set showmatch "Show matching parantheses/brackets when writing code

"diese zwei zeilen sind irgendwie dafuer zustaendig, dass die bodenleiste angezeigt wird
set modeline
set ls=2

" withoud delimitMate Bundle 
" imap {<ENTER> {<ENTER>}<ESC>ko
" with delimitMate Bundle
imap <C-c> <CR><Esc>O

" jump to the end of the line in insert mode (userful to jump over auto-added
" braces
inoremap <C-a> <Esc>$a

syntax enable
" enable html highlighting for mustache files
filetype on
au BufNewFile,BufRead *.mustache set filetype=html
au BufNewFile,BufRead *.mustachep set filetype=html
