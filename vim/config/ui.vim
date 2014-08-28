"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Change opening file tab completion behaviour
set wildmode=longest,list

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch

"Modify title for screen
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

"Change the color of 81 column.
set colorcolumn=81

" http://effectif.com/vim/changing-window-size
"nmap <leader>1 :set lines=40 columns=85<CR><C-w>o
"nmap <leader>2 :set lines=50 columns=171<CR><C-w>v

"Change the depth of CCTree call.
let g:CCTreeRecursiveDepth = 1
let g:CCTreeWindowVertical = 0
