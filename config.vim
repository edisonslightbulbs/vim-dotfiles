" auto-install PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" allow external file updates
set autoread

" encoding
set encoding=utf-8
scriptencoding utf-8

" use gui colors
set termguicolors

" use 256 terminal colors
set t_Co=256

" always show status
set laststatus=2

" enable syntax highlight
syntax on

" enable search highlight
set hlsearch
set incsearch

" enable cursor line
set cursorline

" indent rules
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

" detect file type
filetype indent on
filetype plugin on

" line wrap
set nowrap
set colorcolumn=65,80

" number line style (keep order!)
set relativenumber
set number
set number relativenumber

" use clipboard for all yanking
" set clipboard=unnamedplus

" cmd message row (1 = default)
set cmdheight=2

" abbreviate, and truncate message when necessary
set shortmess=at

" repeat yanking with [.]
set cpoptions+=y

" silence
set visualbell
set t_vb=

" no backup files
set nobackup
set noswapfile
set nowritebackup

" split on RHS
set splitright

" ignore patterns
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

" remove delay ESC key-press
set timeoutlen=1000 ttimeoutlen=0

" set spelling dictionaries
" fist check if its installed ! there seems to be something amiss here
set spelllang=en_us,de_de spell
set spellfile=$HOME/Dropbox/resources/vim/spellings.utf-8.add


" list and source keymap and augroup configurations
let g:other_config=[
            \'keymaps.vim',
            \'augroups.vim']

for file in g:other_config
    execute 'source $VIM_DOTFILES_PATH/' . file
endfor


" list and source plugin configurations
let g:pluginconfig=[
            \'plugins.vim',
            \'gruvbox.vim',
            \'undo.vim',
            \'ale.vim',
            \'fzf.vim',
            \'goyo.vim',
            \'cmake.vim',
            \'cursor.vim',
            \'necoghc.vim',
            \'vimtext.vim',
            \'airline.vim',
            \'bufonly.vim',
            \'fugitive.vim',
            \'surround.vim',
            \'repeat.vim',
            \'nerdtree.vim',
            \'floaterm.vim',
            \'supertab.vim',
            \'clipboard.vim',
            \'gitgutter.vim',
            \'ultisnips.vim',
            \'autoformat.vim',
            \'indentline.vim',
            \'motion-tutor.vim',
            \'youcompleteme.vim',
            \'rainbowparenth.vim']

for file in g:pluginconfig
    execute 'source $VIM_DOTFILES_PATH/pluginconfig/' . file
endfor


" TEMP: list and source arbitrary vim scripts
let g:functions=[
            \'helpers.vim',
            \'terminal.vim']

for file in g:functions
    execute 'source $VIM_DOTFILES_PATH/functions/' . file
endfor

" sandbox for plugin development
source $VIM_DOTFILES_PATH/sandbox/sandbox.vim
