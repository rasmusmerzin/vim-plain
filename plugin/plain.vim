colo default

" theme override
au ColorScheme * hi Normal         term=NONE   cterm=NONE   ctermbg=NONE
au ColorScheme * hi Visual         term=NONE   cterm=NONE   ctermbg=240
au ColorScheme * hi TabLineFill    term=NONE   cterm=NONE   ctermbg=245
au ColorScheme * hi TabLineSel     term=NONE   cterm=NONE   ctermbg=7    ctermfg=0
au ColorScheme * hi TabLine        term=NONE   cterm=NONE   ctermbg=245  ctermfg=0
au ColorScheme * hi StatusLine     term=NONE   cterm=NONE   ctermbg=NONE ctermfg=15
au ColorScheme * hi StatusLineNC   term=NONE   cterm=NONE   ctermbg=NONE ctermfg=8
au ColorScheme * hi VertSplit      term=NONE   cterm=NONE   ctermbg=NONE ctermfg=8
au ColorScheme * hi EndOfBuffer    term=NONE   cterm=NONE   ctermbg=NONE ctermfg=8
au ColorScheme * hi NonText        term=italic cterm=italic ctermbg=NONE ctermfg=7
au ColorScheme * hi SpecialKey     term=italic cterm=italic ctermbg=NONE ctermfg=7
au ColorScheme * hi LineNr         term=NONE   cterm=NONE   ctermbg=NONE ctermfg=7
au ColorScheme * hi CursorLineNr   term=NONE   cterm=NONE   ctermbg=236  ctermfg=15
au ColorScheme * hi CursorLine     term=NONE   cterm=NONE   ctermbg=236
au ColorScheme * hi CursorColumn   term=NONE   cterm=NONE   ctermbg=236
au ColorScheme * hi ColorColumn    term=NONE   cterm=NONE   ctermbg=236
au ColorScheme * hi Folded         term=italic cterm=italic ctermbg=NONE ctermfg=7
au ColorScheme * hi DiffAdd        term=NONE   cterm=NONE   ctermbg=22
au ColorScheme * hi DiffChange     term=NONE   cterm=NONE   ctermbg=98
au ColorScheme * hi DiffDelete     term=NONE   cterm=NONE   ctermbg=88   ctermfg=88

" toggle syntax highlighting
syntax enable
function! ToggleSyntax()
   execute "syntax " . (exists("g:syntax_on") ? "off" : "enable")
endfunction
nnoremap <F2> :call ToggleSyntax()<CR>
inoremap <F2> <Esc>:call ToggleSyntax()<CR>a

" whitespace
set listchars=eol:¬,tab:\\_,space:·
nnoremap <F3> :set list!<CR>
inoremap <F3> <Esc>:set list!<CR>a

" line numbers
set number relativenumber
nnoremap <F15> :set relativenumber! wrap!<CR>
inoremap <F15> <Esc>:set relativenumber! wrap!<CR>a

" cursor
set cursorline
nnoremap <F4> :set cursorcolumn!<CR>
inoremap <F4> <Esc>:set cursorcolumn!<CR>a

" column mark
set colorcolumn=80
function! ToggleColumnMark()
   execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")
endfunction
nnoremap <F16> :call ToggleColumnMark()<CR>
inoremap <F16> <Esc>:call ToggleColumnMark()<CR>a

" search hl
set hlsearch
nnoremap <F5> :noh<CR>
inoremap <F5> <Esc>:noh<CR>a
