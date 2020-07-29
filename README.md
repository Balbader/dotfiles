# my-.vimrc
```
 syntax on                                                                       
                                                                                  
 set tabstop=4                                                                   
 set softtabstop=4                                                               
 set shiftwidth=4                                                                
 set expandtab                                                                   
 set smartindent                                                                 
 set number                                                                      
 set nowrap                                                                      
 set smartcase                                                                   
 set noswapfile                                                                  
 set nobackup                                                                    
 set undodir=~/.vim/undodir                                                      
 set undofile                                                                    
 set incsearch                                                                   
 set backspace=indent,eol,start                                                  
                                                                                  
 set colorcolumn=80                                                              
 highlight ColorColumn ctermbg=0 guibg=lightgrey                                 
                                                                                  
 call plug#begin('~/.vim/plugged')                                               
                                                                                  
 Plug 'neoclide/coc.nvim', {'branch': 'release'}                                 
 Plug 'morhetz/gruvbox'                                                          
 Plug 'jremmen/vim-ripgrep'                                                      
 Plug 'tpope/vim-fugitive'                                                       
 Plug 'vim-airline/vim-airline'                                                  
 Plug 'vim-utils/vim-man'                                                        
 Plug 'lyuts/vim-rtags'                                                          
 Plug 'git@github.com:kien/ctrlp.vim.git'                                        
 Plug 'mbbill/undotree'                                                          
 Plug 'severin-lemaignan/vim-minimap'                                            
                                                                                 
 call plug#end()                                                                 
                                                                                  
 colorscheme gruvbox                                                             
 set background=dark                                                             
 highlight Normal guibg=black guifg=black 

```
