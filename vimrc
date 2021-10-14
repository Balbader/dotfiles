" ============== General Config ===============
execute pathogen#infect()
syntax on                          " turn on syntax highlighting
set termguicolors                  " true color suport
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
set scrolloff=8                    " Minimal number of screen lines to keep above and below the cursor
set signcolumn=yes                " Displays an extra column that will show errors on left side of screen
set background=dark
"set background=light

set colorcolumn=80
hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END

"augroup filetype javascript syntax=javascript


" ============== Set buffer line at top of window  ===============
set title titlestring=%F


" ============== File Search Highlithing and case sensitive  ===============
set incsearch                      " Highlight search
set hlsearch                       " Highlight all occurences of search
set nohlsearch                     " Removes Highlight from result
set ignorecase                     " Ignore case when searching...
set smartcase                      " ... we use a caps


" ============== Turn off Swap Files ===============
set noswapfile                     " Disable swap files permanently
set nobackup                       " Backup file is immediately deleted upon successfully writing the original file
set undodir=~/.vim/undodir         " Save your history and undo changes
set undofile


" ============== Indentation ===============
set tabstop=4                      " Set tab to 4 spaces
set softtabstop=4                  " Set tab to 4 spaces when using '/t'
set shiftwidth=4                   " Level of indentation set to 4
"set smartindent                    " Automatically inserts one extra level of indentation
"set smarttab                       " Affects how <TAB> key presses are interpreted depending on where the cursor is
"set autoindent                     " Copy the indentation from the previous line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually
set nowrap                         " To display long lines as just one line
"set linebreak                     " Wrap lines at convenient points without putting EOL
"set breakindent                    " Line is visually indented


" ================= Plugins ======================
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-ruby/vim-ruby'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
"Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'severin-lemaignan/vim-minimap'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'dbridges/vim-markdown-runner'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'codota/tabnine-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jelera/vim-javascript-syntax'


" ================= Themes ======================
Plug 'gruvbox-community/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajmwagar/vim-deus'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'fxn/vim-monochrome'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'whatyouhide/vim-gotham'
Plug 'glepnir/oceanic-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }


" ================= Vim Norminette 42 ======================
"Plug 'vim-syntastic/syntastic'
"Plug 'alexandregv/norminette-vim'

call plug#end()


" ================= colorshemes ======================
"colorscheme gruvbox
"colorscheme tender
"colorscheme nord
"colorscheme palenight
"colorscheme hybrid_reverse
"colorscheme deus
"colorscheme jellybeans
"colorscheme base16-default-dark
"colorscheme monochrome
"colorscheme purify
"colorscheme cobalt2
"colorscheme codedark
"colorscheme challenger_deep
"colorscheme gotham
"colorscheme new-moon
"colorscheme reloaded
"colorscheme apprentice
"colorscheme oceanic_material
"colorscheme archery
"colorscheme alduin
"colorscheme dracula
"colorscheme papercolor
"colorscheme github
"colorscheme iceberg
colorscheme hybrid


" ================= airlines ======================
"let g:airline_theme='gruvbox'
"let g:airline_theme='tender'
"let g:airline_theme='nord'
"let g:airline_theme='palenight'
"let g:airline_theme='hybrid'
"let g:airline_theme='deus'
"let g:airline_theme='jellybeans'
"let g:airline_theme='base16'
"let g:airline_theme='monochrome'
"let g:airline_theme='purify'
"let g:airline_theme ='codedark'
"let g:airline_theme ='gotham'
"let g:airline_theme = 'archery'
"let g:airline_theme='papercolor'


" ================= comments ======================
let g:monochrome_italic_comments = 1
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59


" ============== Emmet Shortcuts ===============
let g:user_emmet_mode="n"
let g:user_emmet_leader_key=","


" ============== File Search Shortcuts ============
nnoremap <C-f> <Esc>:Files<CR>


" ============== MarkdownRunner Shortcuts ============
nnoremap <C-r> <Esc>:MarkdownRunnerInsert<CR>


" ============== NERDTree Shortcuts ============
nnoremap <C-e> <Esc>:NERDTreeFind<CR>
nnoremap <C-c> <Esc>:NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIgnore = ['^node_modules$'] 

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle


"============== coc config ===============
let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-prettier',
            \ 'coc-json',
            \ ]

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

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
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

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
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"============== syntastic config ===============
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0



"============== Norminette 42 config ===============
" Enable norminette-vim (and gcc)
"let g:syntastic_c_checkers = ['norminette', 'gcc']
"let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
"let g:syntastic_c_norminette_exec = '~/.norminette/norminette.rb'

" Support headers (.h)
"let g:c_syntax_for_h = 1
"let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
"let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
"let g:syntastic_check_on_open = 1

" Enable error list
"let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
"let g:syntastic_auto_loc_list = 1

" Skip check when closing
"let g:syntastic_check_on_wq = 0
