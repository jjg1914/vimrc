" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" general
let mapleader = ","

set number

set ruler
set colorcolumn=81

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

syntax on
filetype on
filetype plugin on

if has('win32')
  set nobackup
  set nowritebackup
  set backspace=2
  set fileformats=unix,dos
  set fileformat=unix
end

map <Leader>h :tabp<CR>
map <Leader>l :tabn<CR>

" NERDTree
map <F2> :NERDTreeToggle<CR>

" syntastic
map <Leader>en :lnext<CR>
map <Leader>ep :lprev<CR>
map <Leader>ee :ll<CR>

" syntastic
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:syntastic_c_compiler_options = "-std=c11"
" let g:syntastic_typescript_checkers = [ "tsuquyomi" ]
" let g:syntastic_javascript_checkers = [ 'jscs', 'jshint' ]

" tagbar
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

" rust.vim trys to make us indent 4 instead of 2
let g:rust_recommended_style = 0

" vim-test
map <Leader>t :TestNearest<CR>
map <Leader>tf :TestFile<CR>
map <Leader>T :TestSuite<CR>
map <Leader>tt :TestLast<CR>
map <Leader>tv :TestVisit<CR>
let test#strategy = "vimterminal"

" vim-lsp
map <Leader>sd :LspDefinition<CR>
map <Leader>sh :LspHover<CR>
