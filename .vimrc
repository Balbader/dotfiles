" =============================================================================
" General Config
" =============================================================================
execute pathogen#infect()
let mapleader = " "
syntax on					       " turn on syntax highlighting
set termguicolors                  " true color suport
set term=xterm-256color
set t_Co=256
set encoding=UTF-8
set number                         " Show line number
set laststatus=2
set cursorline                     " Enables cursor line position tracking
set rnu                            " Set relative number
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
syntax enable					   " turn on syntax highlighting

set colorcolumn=80
hi clear CursorLine
augroup CLClear
	autocmd! ColorScheme * hi clear CursorLine
augroup END

augroup filetype javascript syntax=javascript

" =============================================================================
" Set Indentation lines
" =============================================================================
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

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
"set expandtab
set tabstop=4                      " Set tab to 4 spaces 
"set softtabstop=4                  " Set tab to 4 spaces when using '/t'
"set shiftwidth=4                   " Level of indentation set to 4
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually
set nowrap                         " To display long lines as just one line

call plug#begin('~/.vim/plugged')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TS Syntax
"Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'

" JS Syntax
Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plug 'jelera/vim-javascript-syntax'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/yajs.vim'

" HTML5 Syntax
Plug 'othree/html5.vim'

" JSX Syntax
Plug 'maxmellon/vim-jsx-pretty'

" React Syntax
Plug 'mlaursen/vim-react-snippets'

" Emmet
Plug 'mattn/emmet-vim'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" XO linter
Plug 'xojs/vim-xo'

" Snipets Completion
Plug 'SirVer/ultisnips'

" Color Picker
Plug 'KabbAmine/vCoolor.vim'

" TERN
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

" Rigrep
Plug 'jremmen/vim-ripgrep'

" Fugitive
Plug 'tpope/vim-fugitive'

" Indentation
Plug 'Yggdroot/indentLine'

" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File Man -> View man pages in vim
Plug 'vim-utils/vim-man'

" Vim rtags ->
Plug 'lyuts/vim-rtags'

Plug 'git@github.com:kien/ctrlp.vim.git'

" Undotree -> :UndotreeToggle to see undotree history
Plug 'mbbill/undotree'

" Close Brackets
"Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" Rainbow + {} ()
Plug 'luochen1990/rainbow'
let g:rainbow_active = 0

" MarkdownRunner -> Make markdown interactive
Plug 'dbridges/vim-markdown-runner'

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" cmd + // to comment out a line
Plug 'scrooloose/nerdcommenter'

" Icons for vim
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-rooter'

" GitGutter -> Visualize Git history it side bar
Plug 'airblade/vim-gitgutter'

" Polyglot -> languages packs for vim
Plug 'sheerun/vim-polyglot'

" Themes
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
Plug 'habamax/vim-gruvbit'
Plug 'ghifarit53/tokyonight-vim'
Plug 'pacokwon/onedarkhc.vim'
Plug 'joshdick/onedark.vim'
"Plug 'Softmotions/vim-dark-frost-theme'
"Plug 'ulwlu/elly.vim'
Plug 'mhartington/oceanic-next'
"Plug 'owickstrom/vim-colors-paramount'
"Plug 'mangeshrex/uwu.vim'
Plug 'EdenEast/nightfox.nvim'

" 42 Header
Plug '42Paris/42header'

call plug#end()

" =============================================================================
" Colorsheme presets
" =============================================================================
"
" gruvbox colorshemes backgrounds
"let g:gruvbox_termcolors = 16
"let g:gruvbox_transparent_bg = 1
"let g:gruvbox_italic = 1
"let g:gruvbox_contrast_dark = 'hard'

" ayu colorshemes backgrounds
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

" tokyonight colorshemes backgrounds
"let g:tokyonight_style = 'night' "
"let g:tokyonight_style = 'storm'
"let g:tokyonight_enable_italic = 1


" =============================================================================
" Colorsheme
" =============================================================================
"colorscheme gruvbox
"colorscheme gruvbit
"colorscheme nord
"colorscheme hybrid_reverse
"colorscheme hybrid
"colorscheme deus
"colorscheme base16-default-dark
"colorscheme base16-aquarium-dark
"colorscheme codedark
"colorscheme dark_plus
"colorscheme dracula
"colorscheme ayu
"colorscheme monokrom
"colorscheme two-firewatch
"colorscheme aquarium
"colorscheme raider
"colorscheme tokyonight
colorscheme nordfox
"colorscheme minimalist
"colorscheme onedarkhc
"colorscheme one
"colorscheme onedark
"colorscheme darkfrost
"colorscheme lake
"colorscheme elly
"colorscheme OceanicNext
"colorscheme paramount
"colorscheme uwu


" =============================================================================
" Airline
" =============================================================================
let g:airline_theme = 'gruvbox'
"let g:airline_theme = 'nord'
"let g:airline_theme = 'hybrid'
"let g:airline_theme = 'deus'
"let g:airline_theme = 'base16'
"let g:airline_theme = 'base16_classic_dark'
"let g:airline_theme = 'base16_aquarium_dark'
"let g:airline_theme = 'codedark'
"let g:airline_theme = 'onedark'

let g:airline_powerline_fonts = 0
set showtabline=2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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
nnoremap <leader>f <Esc>:Files<CR>


" =============================================================================
" Buffer Navigation
" =============================================================================
nnoremap <S-N> <Esc>:bnext<CR>
nnoremap <S-P> <Esc>:bprevious<CR>
nnoremap <S-C> <Esc>:bd<CR>


" =============================================================================
" MarkdownRunner Shortcuts
" =============================================================================
nnoremap <C-r> <Esc>:MarkdownRunnerInsert<CR>


" =============================================================================
" NERDTree Shortcuts
" =============================================================================
nnoremap <leader>e <Esc>:NERDTreeFind<CR>
nnoremap <leader>c <Esc>:NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIgnore = ['^node_modules$'] 

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" =============================================================================
" Coc
" =============================================================================
let g:coc_global_extensions = [
			\ 'coc-snippets',
			\ 'coc-pairs',
			\ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-tslint',
            \ 'coc-highlight',
            \ 'coc-git',
            \ 'coc-tailwindcss',
            \ 'coc-just-complete',
            \ 'coc-markdownlint',
            \ 'coc-yank',
            \ 'coc-rome',
            "\ 'coc-prettier',
			\ 'coc-json',
			\ 'coc-emmet',
			\ 'coc-html',
			\ 'coc-css',
			\ ]

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=yes
else
  set signcolumn=number
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" NOTE: Go to .vim/plugged/ultisnips/autoload/Ultisnips/map_keys.vim and
" comment out line 61
function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    " Insert <tab> when previous text is space, refresh completion if not.
    inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1):
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<Tab>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>aa  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>ee  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>oo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>ss  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>jj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>kk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>pp  :<C-u>CocListResume<CR>
