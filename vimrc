set encoding=utf-8

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .eslintrc set filetype=json
  autocmd BufRead,BufNewFile *.{js,jsx,ts,tsx} set filetype=javascript syntax=javascript.jsx
augroup END

" ALE linting events
augroup ale
  autocmd!

  autocmd VimEnter *
    \ set updatetime=1000 |
    \ let g:ale_lint_on_text_changed = 0
  autocmd CursorHold * call ale#Queue(0)
  autocmd CursorHoldI * call ale#Queue(0)
  autocmd InsertEnter * call ale#Queue(0)
  autocmd InsertLeave * call ale#Queue(0)
augroup END

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in fzf for listing files. Lightning fast and respects .gitignore
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=221

" Numbers
set number
set numberwidth=5

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
nnoremap <silent> <Leader>gt :TestVisit<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<Space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Set tags for vim-fugitive
set tags^=.git/tags

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

" Map Ctrl + p to open fuzzy find (FZF)
nnoremap <c-p> :Files<cr>

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Set colorscheme
colorscheme cobalt2

" Highlight current line
set cursorline

" Relative line numbers
set relativenumber

" Set windowsettings
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" do not wrap lines if they exceed pane width
" most lines are under 80 chars, and this enables better visibility in small
" side by side panes, where otherwise a line could get wrapped over 3 lines
set nowrap

" set vertical split character (char between two side by side editors)
set fillchars+=vert:\│

" Highlight all matches after entering search pattern
set hlsearch

" Automatically update file unless buffer has unsaved changes
set autoread

" Case insensitive pattern matching
set ignorecase

" Overrides ignorecase if pattern contains upcase
set smartcase

" When at 3 spaces and I hit >>, go to 4, not 5
set shiftround

" Keep 5 lines of context when scrolling
set scrolloff=5

" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Move one displayed line at a time, default is one fysical line
nmap k gk
nmap j gj

" Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR><CR>

" Disable Ex mode
map Q <Nop>

" Allow undo history to persist after closing buffer
if has('persistent_undo')
  set undodir=~/.vim/_undo
  set undofile
end

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-t> <esc>:tabnew<CR>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
nn <F7> :setlocal spell! spell?<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Embrace typos
command! Q q
command! W w
command! Wq wq

" Tell NERD tree which files to ignore
let NERDTreeIgnore=['node_modules$']

" Tell Netrw which files to ignore
let g:netrw_list_hide= '.*\.swp$,'
let g:netrw_list_hide.= '\.git,\.gitkeep,\.keep,'
let g:netrw_list_hide.= 'node_modules,'
let g:netrw_list_hide.= '\.gem,\.bundle,'
let g:netrw_list_hide.= '\.DS_Store,'
let g:netrw_list_hide.= 'tmp,dist,log,coverage'

set wildignore=log/**,node_modules/**,target/**,tmp/**,dist/**,*.rbc
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" Activate jsx in .js files too
let g:jsx_ext_required = 0

" Airline separetors
let g:airline_left_sep = ''
let g:airline_right_sep = ''
