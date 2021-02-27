"~\AppData\Local\nvim\init.vim
"Install coc plugins with: CocInstall coc-tsserver coc-tslint-plugin coc-css coc-html coc-tag
"~\AppData\Local\nvim\coc-settings.json
"{ \"suggest.noselect\": false } without the \

" =============================================================================
" Plugins
" =============================================================================
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ghifarit53/tokyonight-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
call plug#end()

" =============================================================================
" Settings
" =============================================================================
set noswapfile
set splitright splitbelow
set tabstop=4 shiftwidth=4
set nowrap expandtab
set noequalalways
set bs=2
set nohls
set cursorline
set columns=140
set lines=42
" set colorcolumn=80
set wildmenu
set wildignore+=*.o,*.ttf,*.woff2,*.woff,*.eot,*.svg,*.jpg,*.png,*.gif
set number
set tags=tags;
" set shortmess+=c
" set complete+=t
" set completeopt=menuone,noinsert,preview
let mapleader=","
let g:AutoPairsMultilineClose=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" =============================================================================
" Theming
" =============================================================================
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

syntax on
set background=dark
colorscheme subtlecolors
" let g:tokyonight_style = 'night'
" colorscheme tokyonight
" hi TabLine    guifg=#a9b1d6 guibg=#232433
" hi TabLineSel guifg=#a9b1d6 guibg=#3b3d57

" =============================================================================
" Remaps
" =============================================================================
noremap <c-up> {
noremap <c-down> }
noremap <leader>s :so %<cr>
nnoremap <leader>d <c-]>zzw
nnoremap <leader>a <c-t>zz
" nnoremap <c-l> :!runghc %<cr>
nnoremap <c-l> :!npm start<cr>
nmap <c-'> gcc
vmap <c-'> gc
nnoremap <silent> <special> <c-b> :NERDTreeToggle <Bar> if &filetype ==# 
    \'nerdtree' <Bar> wincmd p <Bar> endif<CR>
tnoremap <Esc> <C-\><C-n>
command! W w
command! Wq wq
command! UpdateTags !ctags --recurse --languages=JavaScript --exclude=node_modules

call coc#config('suggest.enablePreselect', 'false')

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
