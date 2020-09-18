colo default

" theme override
au ColorScheme * hi Normal         term=NONE   cterm=NONE   ctermbg=NONE
au ColorScheme * hi Visual         term=NONE   cterm=NONE   ctermbg=240
au ColorScheme * hi TabLineFill    term=NONE   cterm=NONE   ctermbg=7
au ColorScheme * hi TabLineSel     term=bold   cterm=bold   ctermbg=NONE ctermfg=15
au ColorScheme * hi TabLine        term=NONE   cterm=NONE   ctermbg=7    ctermfg=8
au ColorScheme * hi StatusLine     term=bold   cterm=bold   ctermbg=NONE ctermfg=15
au ColorScheme * hi StatusLineNC   term=NONE   cterm=NONE   ctermbg=NONE ctermfg=7
au ColorScheme * hi VertSplit      term=NONE   cterm=NONE   ctermbg=NONE ctermfg=8
au ColorScheme * hi EndOfBuffer    term=NONE   cterm=NONE   ctermbg=NONE ctermfg=8
au ColorScheme * hi NonText        term=italic cterm=italic ctermbg=NONE ctermfg=7
au ColorScheme * hi SpecialKey     term=italic cterm=italic ctermbg=NONE ctermfg=7
au ColorScheme * hi LineNr         term=NONE   cterm=NONE   ctermbg=NONE ctermfg=7
au ColorScheme * hi CursorLineNr   term=NONE   cterm=NONE   ctermbg=8    ctermfg=15
au ColorScheme * hi CursorLine     term=NONE   cterm=NONE   ctermbg=8
au ColorScheme * hi CursorColumn   term=NONE   cterm=NONE   ctermbg=8
au ColorScheme * hi Folded         term=italic cterm=italic ctermbg=NONE ctermfg=7

" toggle syntax highlighting
syntax enable
function! ToggleSyntax()
   if exists("g:syntax_on")
      syntax off
   else
      syntax enable
   endif
endfunction

nnoremap <F2> :call ToggleSyntax()<CR>
inoremap <F2> <Esc>:call ToggleSyntax()<CR>a

" whitespace
set listchars=eol:¬,tab:\\_,space:·
nnoremap <F3> :set list!<CR>
inoremap <F3> <Esc>:set list!<CR>a

" cursor
set cursorline
nnoremap <F4> :set cursorcolumn!<CR>
inoremap <F4> <Esc>:set cursorcolumn!<CR>a

" searchhl
set hlsearch
nnoremap <F5> :noh<CR>
inoremap <F5> <Esc>:noh<CR>a
