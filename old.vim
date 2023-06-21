set number
let NERDTreeShowHidden=1
set relativenumber



set guifont=:h
set guifont=DroidSansMono_Nerd_Font:h11
let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


let g:closetag_enable_react_fragment = 1













call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter'


Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'


Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'

nmap <C-f> :NERDTreeFocus<CR>
nmap <C-s> :NERDTreeToggle<CR>
nmap <C-w> :resize 60<CR>
inoremap jj <Esc>
nnoremap <space>w :w!<CR>
nnoremap <space>q :q!<CR>
nnoremap <C-b> <c-v>
nnoremap <space>b :bp<CR>
nnoremap <space>n :bn<CR>
nnoremap <space>d bufdo bd<CR>


call plug#end()
