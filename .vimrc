" =============================================================================
" General Config
" =============================================================================
execute pathogen#infect()
syntax on                          " turn on syntax highlighting
set termguicolors                  " true color suport
set term=xterm-256color
set t_Co=256
set encoding=UTF-8
set number                         " Show line number
set laststatus=2
set cursorline                     " Enables cursor line position tracking
"set rnu                            " Set relative number
set backspace=indent,eol,start     " Allow backspace in insert mode
set history=1000                   " Store lots of :cmdline history
set showcmd                        " Show incomplete cmds down the bottom
set hidden                         " Keeps any buffer being edited in the background
set noerrorbells                   " No sound effect
set completeopt-=preview           " No preview buffer on autocomplete
set list
set scrolloff=8                    " Minimal number of screen lines to keep above and below the cursor
set signcolumn=yes				   " Displays an extra column that will show errors on left side of screen
set updatetime=100
set background=dark

set colorcolumn=80
hi clear CursorLine
augroup CLClear
	autocmd! ColorScheme * hi clear CursorLine
augroup END

augroup filetype javascript syntax=javascript

" =============================================================================
" Set Indentation lines
" =============================================================================
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 1

" =============================================================================
" Set buffer line at top of window
" =============================================================================
set title							" enable setting title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70 " configure title to look like: Vim /path/to/file


" =============================================================================
" File Search Highlithing and case sensitive
" =============================================================================
set incsearch                      " Highlight search
set hlsearch                       " Highlight all occurences of search
set nohlsearch                     " Removes Highlight from result
set ignorecase                     " Ignore case when searching...
set smartcase                      " ... we use a caps


" =============================================================================
" Turn off Swap Files
" =============================================================================
set noswapfile                     " Disable swap files permanently
set nobackup                       " Backup file is immediately deleted upon successfully writing the original file
set undodir=~/.vim/undodir         " Save your history and undo changes
set undofile


" =============================================================================
" Indentation
" =============================================================================
set expandtab
set tabstop=4                      " Set tab to 4 spaces 
set softtabstop=4                  " Set tab to 4 spaces when using '/t'
set shiftwidth=4                   " Level of indentation set to 4
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually
set nowrap                         " To display long lines as just one line


call plug#begin('~/.vim/plugged')

" =============================================================================
" TS Syntax
" =============================================================================
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" =============================================================================
" JS Syntax
" =============================================================================
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug '1995eaton/vim-better-javascript-completion'

" =============================================================================
" JSX Syntax
" =============================================================================
Plug 'maxmellon/vim-jsx-pretty'

" =============================================================================
" React Syntax
" =============================================================================
Plug 'mlaursen/vim-react-snippets'

" =============================================================================
" Emmet
" =============================================================================
Plug 'mattn/emmet-vim'

" =============================================================================
" Syntastic
" =============================================================================
Plug 'vim-syntastic/syntastic'

" =============================================================================
" Prettier
" =============================================================================
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" =============================================================================
" XO linter
" =============================================================================
Plug 'xojs/vim-xo'

" =============================================================================
" COC Completion
" =============================================================================
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" =============================================================================
" Snipets Completion
" =============================================================================
Plug 'SirVer/ultisnips'

" =============================================================================
" TERN
" =============================================================================
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'

" =============================================================================
" AirLine
" =============================================================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" =============================================================================
" File Search
" =============================================================================
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" =============================================================================
" File Man -> View man pages in vim
" =============================================================================
Plug 'vim-utils/vim-man'

" =============================================================================
" Vim rtags ->
" =============================================================================
Plug 'lyuts/vim-rtags'

Plug 'git@github.com:kien/ctrlp.vim.git'

" =============================================================================
" Undotree -> :UndotreeToggle to see undotree history
" =============================================================================
Plug 'mbbill/undotree'

" =============================================================================
" Close Brackets
" =============================================================================
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" =============================================================================
" Rainbow + {} ()
" =============================================================================
Plug 'luochen1990/rainbow'
let g:rainbow_active = 0

" =============================================================================
" MarkdownRunner -> Make markdown interactive
" =============================================================================
Plug 'dbridges/vim-markdown-runner'

" =============================================================================
" NerdTree
" =============================================================================
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" =============================================================================
" cmd + // to comment out a line
" =============================================================================
Plug 'scrooloose/nerdcommenter'

" =============================================================================
" Icons for vim
" =============================================================================
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-rooter'

" =============================================================================
" GitGutter -> Visualize Git history it side bar
" =============================================================================
Plug 'airblade/vim-gitgutter'

" =============================================================================
" Polyglot -> languages packs for vim
" =============================================================================
Plug 'sheerun/vim-polyglot'

" =============================================================================
" Themes
" =============================================================================
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'casonadams/nord.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajmwagar/vim-deus'
Plug 'chriskempson/base16-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'
Plug 'alexanderheldt/monokrom.vim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'srcery-colors/srcery-vim'
Plug 'habamax/vim-gruvbit'
Plug 'ghifarit53/tokyonight-vim'
Plug 'pacokwon/onedarkhc.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'Softmotions/vim-dark-frost-theme'
Plug 'ulwlu/elly.vim'

call plug#end()


" =============================================================================
" Colorsheme
" =============================================================================
"colorscheme gruvbox
"colorscheme gruvbit
"colorscheme nord
"colorscheme hybrid_reverse
"colorscheme hybrid
"colorscheme deus
"colorscheme jellybeans
"colorscheme base16-default-dark
"colorscheme monochrome
"colorscheme srcery
"colorscheme codedark
colorscheme dark_plus
"colorscheme dracula
"colorscheme ayu
"colorscheme monokrom
"colorscheme two-firewatch
"colorscheme aquarium
"colorscheme raider
"colorscheme tokyonight
"colorscheme onedarkhc
"colorscheme one
"colorscheme xcodedarkhc
"colorscheme xcodedark
"colorscheme xcodewwdc
"colorscheme darkfrost
"colorscheme lake
"colorscheme elly

" gruvbox colorshemes backgrounds
"let g:gruvbox_termcolors=16
"let g:gruvbox_transparent_bg=1

" ayu colorshemes backgrounds
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

" tokyonight colorshemes backgrounds
"let g:tokyonight_style = 'night' "
"let g:tokyonight_style = 'storm'
"let g:tokyonight_enable_italic = 1


" =============================================================================
" Airline
" =============================================================================
"let g:airline_theme='gruvbox'
"let g:airline_theme='nord'
"let g:airline_theme='hybrid'
"let g:airline_theme='deus'
"let g:airline_theme='jellybeans'
"let g:airline_theme='base16'
"let g:airline_theme='base16_classic_dark'
"let g:airline_theme='base16_aquarium_dark'
"let g:airline_theme='monochrome'
let g:airline_theme='codedark'

let g:airline_powerline_fonts = 0
let g:airline_skip_empty_sections = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
set showtabline=2

let g:gruvbox_termcolors=16


" =============================================================================
" GitGutter
" =============================================================================
let g:gitgutter_terminal_reports_focus=1



" =============================================================================
" Comments
" =============================================================================
"let g:monochrome_italic_comments = 1
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59



" =============================================================================
" Emmet Shortcuts
" =============================================================================
let g:user_emmet_mode="n"
let g:user_emmet_leader_key=","



" =============================================================================
" File Search Shortcuts -> fzf
" =============================================================================
nnoremap <C-f> <Esc>:Files<CR>



" =============================================================================
" MarkdownRunner Shortcuts
" =============================================================================
nnoremap <C-r> <Esc>:MarkdownRunnerInsert<CR>



" =============================================================================
" NERDTree Shortcuts
" =============================================================================
nnoremap <C-e> <Esc>:NERDTreeFind<CR>
nnoremap <C-c> <Esc>:NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIgnore = ['^node_modules$'] 

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle



" =============================================================================
" coc config
" =============================================================================
let mapleader=" "
let g:coc_global_extensions = [
			\ 'coc-snippets',
			\ 'coc-pairs',
			\ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-prettier',
			\ 'coc-json',
			\ 'coc-emmet',
			\ 'coc-html',
			\ 'coc-css',
			\ ]

"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup

" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
"set updatetime=300

" don't give |ins-completion-menu| messages.
"set shortmess+=c

" always show signcolumns
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
			"\ pumvisible() ? "\<C-n>" :
			"\ <SID>check_back_space() ? "\<TAB>" :
			"\ coc#refresh()

"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
	"let col = col('.') - 1
	"return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
	"if (index(['vim','help'], &filetype) >= 0)
		"execute 'h '.expand('<cword>')
	"else
		"call CocAction('doHover')
	"endif
"endfunction

" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

"augroup mygroup
	"autocmd!
	" Setup formatexpr specified filetype(s).
	"autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	"autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>



" =============================================================================
" syntastic config
" =============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['xo']
let g:syntastic_always_populate_loc_list = 1

"When set to 2 the error window will be automatically closed when no errors are
"detected, but not opened automatically.
let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
