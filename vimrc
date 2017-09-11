" ladowanie odpowiednich plikow konfiguracyjnych na podstawie typu edytowanego
" pliku
filetype plugin on
filetype on
" ulepszony indent
set smartindent
set number
" wylacza kompatybilnosc z vi
set nocompatible
set backspace=2
" nie tworzy plikow z backupami
set backup
set ruler "show the cursor position all the time
set showcmd "display incomplete commands
" nie piszczy
set noerrorbells
" wylacza plik ~/.viminfo
"set viminfo=\"0,'0,:0,<0,@0,f0,%0,/0,s0
set lazyredraw
"set scrolljump=10
" kursor zawsze na srodku ekranu
set scrolloff=999
"set nomodeline
set modeline
set modelines=5

map <F6> :set paste!<CR>
" pokazuje numery wierszy
map <F7> :set number!<CR>
" wylaczenie podswietlania skladni
map <F9>  :syntax off<CR>
" wlaczenie podswietlania skladni
map <F10> :syntax on<CR>
" jak mamy linie wieksza niz szerokosc terminala, to przechodzenie strzalkami
" w dol i gore przeskakuje miedzy liniami wyswietlanymi, a nie rzeczywistymi
map <s-Down> <C-E>
map <s-Up> <C-Y>
" nastepny bufor
map <F2> :bn!<CR>
imap <F2> <ESC>:bn!<CR>
" poprzedni bufor
map <F3> :bp!<CR>
imap <F3> <ESC>:bp!<CR>
"map <silent> <F4> :call BufferList()<CR>
"map <silent> <F4> :BufExplorer<CR>
inoremap <Down> <C-O>gj
inoremap <Up> <C-O>gk
" backspace
":if &term == "xterm-color"
":  set t_kb=
":  fixdel
":endif
" podswietlania wynikow wyszukiwania
set hlsearch
" ciemne tlo terminala
set bg=dark
set showmatch
set autowrite
" sprawdzanie pisowni
" map <Leader>s <Esc>:!aspell -e -c --dont-backup "%"<CR>:e! "%"<CR><CR>
" tam, gdzie mamy znak tabulacji, to zamiast pierwszej z osmiu spacji
" wyswietlany jest pipe. Jesli formatujemy kod tabulacjami, to wtedy
" otrzymujemy pionowe kreski laczace poczatek i koniec danego zaglebienia kodu
set list listchars=tab:\|\ 
" tabulacja to 8 spacji
set tabstop=8

set backupdir=~/tmp/.vim
set dir=~/tmp/.vim

" matchowanie bracketow
set nosm
" visual bell
set novb
" szybki terminal
set tf
" dlugosc pokazywania nawiasow
set mat=0

" przydaje sie do << i >>
set shiftwidth=8
" auto lamanie linii
set fo=tcrq

"set sm		" pokazuje dopasowanie nawiasow
set sc		" pokazuje komende w wierszu statusu
"set ic		" wlacza ignorowanie wielkosci liter przy szukaniu
"set is		" wlacza inkrementalne szukanie
set ai		" wlacza autowcinanie kolejnego wiersza
set si		" wlacza inteligentne wcinanie
set nocp	" tryb zaawansowany vima (niekompatybilny z vi)
"set go=fc	" wylacza wszystkie dodatki gui
set wildmenu

"syntax on
set nofoldenable

"set tw=160

nnoremap <silent> <F12> :CommandT<CR>
nnoremap <silent> <F11> :CommandTBuffer<CR>

" wyswietlanie menu i innych bajerow w gvimie
"set go+=mTr

" podswietlanie calej linii w ktorej jest kuror
set cul

nnoremap <silent> <F8> :TlistToggle<CR>
set t_Co=256
let mapleader=","
"colorscheme desert
colo elflord

if &diff
	colorscheme evening
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

map <C-k> :NERDTree<CR>
