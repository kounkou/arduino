"---------------------------------------
" godbod _c_, All rights reserved 2014
"
" godbod coloration standard class A
"---------------------------------------

syntax on
au BufNewFile *.sh r ~/.vim/skeleton.sh
set background=light
highlight clear
set number
set cursorline
set hlsearch
filetype on
set nowrap
set cindent
set sw=3
set enc=utf-8
set formatexpr=
set formatprg=fold\ -w\ 200
set path=.
set t_Co=256
set nohlsearch

hi Cursor       ctermfg=235  ctermbg=231 cterm=NONE guifg=272822 guibg=f8f8f0
hi Visual       ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=49483e
hi CursorLine   ctermfg=NONE    ctermbg=237 cterm=NONE guifg=NONE guibg=3c3d37
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=3c3d37
hi ColorColumn  ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=3c3d37
hi VertSplit    ctermfg=241 ctermbg=241 cterm=NONE guifg=64645e guibg=3c3d37
hi MatchParen   ctermfg=197 ctermbg=NONE cterm=underline guifg=f92672 guibg=3c3d37
hi StatusLine   ctermfg=231 ctermbg=241 cterm=bold guifg=f8f8f2 guibg=3c3d37
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=f8f8f2 guibg=3c3d37
hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi PmenuSel     ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=49483e
hi IncSearch    ctermfg=235 ctermbg=186 cterm=NONE guifg=272822 guibg=3c3d37
hi Search       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE
hi Directory    ctermfg=141 ctermbg=NONE cterm=NONE guifg=ae81ff guibg=NONE
hi Folded       ctermfg=242 ctermbg=235 cterm=NONE guifg=75715e guibg=272822
hi Normal       ctermfg=231 ctermbg=235 cterm=NONE guifg=f8f8f2 guibg=272822
hi Boolean      ctermfg=141 ctermbg=NONE cterm=NONE guifg=ae81ff guibg=NONE
hi Character    ctermfg=141 ctermbg=NONE cterm=NONE guifg=ae81ff guibg=NONE
hi Comment      ctermfg=242 ctermbg=NONE cterm=NONE guifg=75715e guibg=NONE
hi Conditional  ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi Constant     ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi Define       ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi DiffAdd      ctermfg=231 ctermbg=64 cterm=bold guifg=f8f8f2 guibg=46830c
hi DiffDelete   ctermfg=88 ctermbg=NONE cterm=NONE guifg=8b0807 guibg=NONE
hi DiffChange   ctermfg=231 ctermbg=23 cterm=NONE guifg=f8f8f2 guibg=NONE
hi DiffText     ctermfg=231 ctermbg=24 cterm=bold guifg=f8f8f2 guibg=204a87
hi ErrorMsg     ctermfg=231 ctermbg=197 cterm=NONE guifg=f8f8f0 guibg=f92672
hi WarningMsg   ctermfg=231 ctermbg=197 cterm=NONE guifg=f8f8f0 guibg=NONE
hi Function     ctermfg=148 ctermbg=NONE cterm=NONE guifg=a6e22e guibg=NONE
hi Identifier   ctermfg=81 ctermbg=NONE cterm=NONE guifg=66d9ef guibg=NONE
hi Keyword      ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=e6db74 guibg=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=49483e guibg=31322c
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=ae81ff guibg=NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=f8f8f2 guibg=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=49483e guibg=NONE
hi Statement ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=66d9ef guibg=NONE
hi String ctermfg=87 ctermbg=NONE cterm=NONE guifg=e6db74 guibg=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=f92672 guibg=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=f8f8f2 guibg=NONE
hi Type ctermfg=197 ctermfg=197 cterm=NONE guifg=f8f8f2 guifg=31322c
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE
hi Todo ctermfg=NONE ctermbg=NONE cterm=inverse guifg=75715e guibg=NONE

syntax match logTRACE /TRACE.*/
syntax match logDEBUG /DEBUG.*/
syntax match logINFO /INFO.*/
syntax match logWARNING /WARN.*/
syntax match logERROR /ERROR.*/
syntax match logFATAL /FATAL.*/

highlight logTRACE     ctermfg=cyan    guifg=cyan
highlight logDEBUG     ctermfg=green   guifg=green
highlight logINFO      ctermfg=blue    guifg=blue
highlight logWARNING   ctermfg=magenta   guifg=magenta
highlight logERROR  ctermfg=red     guifg=red
highlight logFATAL     ctermfg=red     guifg=red     ctermbg=white   guifg=white
