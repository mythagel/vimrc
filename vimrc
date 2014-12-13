set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=120

if version >= 703
    set relativenumber
    set number
endif

set background=dark
colorscheme desert
set guioptions=

if has("gui_running")
    set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
    let g:airline_powerline_fonts = 1
else
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

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
endif

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
