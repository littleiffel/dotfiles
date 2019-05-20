"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins List
"""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Async FuzzyFind
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Airline
Plug 'vim-airline/vim-airline'

" neomake
Plug 'neomake/neomake'

" Syntax highlightin
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""

" Neomake async hooks
call neomake#configure#automake('w')


"""""""""""""""""""""""""""""
" Keybinings
"""""""""""""""""""""""""""""

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" map fzf to ctrl+p
nnoremap <C-P> :Files<CR><Paste>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

