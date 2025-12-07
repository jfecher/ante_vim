" Vim color file

highlight clear

if exists("syntax_on")
  syntax reset
endif

set termguicolors
let g:colors_name = "ante"

let s:ante_white = '#f8f8f2'
let s:ante_grey1 = '#cccccc'
let s:ante_grey2 = '#aaaaaa'
let s:ante_grey3 = '#555555'
let s:ante_bg = '#101010'
let s:ante_red = '#fa4040'
let s:ante_light_green = '#9fbf6a ' " #7ccc6c   #9bdc7c  #9fbf6a  #86b95c
let s:ante_light_blue = '#56c9df' " 81
let s:ante_blue = '#83a5f8' " 109
let s:ante_green = '#a8bb26' " 108
let s:ante_yellow = '#f8bb26' " 108
let s:ante_purple = '#a370fe' " 202

function s:HL(group, fg, ...) " group, fg, bg, gui
    if a:0 >= 1
      let bg = a:1
    else
      let bg = 'NONE'
    endif

    if a:0 >= 2 && strlen(a:2)
      let gui = a:2
    else
      let gui ='NONE'
    endif

    execute 'hi ' . a:group . ' guifg=' . a:fg . ' guibg=' . bg . ' gui=' . gui
endfunction

hi Cursor       ctermfg=235  ctermbg=231  cterm=NONE      guifg=#272822 guibg=s:ante_white gui=NONE
hi LineNr       ctermfg=102  ctermbg=NONE cterm=NONE      guifg=#666666 guibg=NONE    gui=NONE
hi VertSplit    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
call s:HL('MatchParen', s:ante_red)
call s:HL('StatusLine', s:ante_white, s:ante_grey3, 'bold')
call s:HL('StatusLineNC', s:ante_white, s:ante_grey3)
hi IncSearch    ctermfg=235  ctermbg=186  cterm=NONE      guifg=#272822 guibg=#e6db74 gui=NONE
hi Search       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE    guibg=NONE    gui=underline
hi Directory    ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
hi Folded       ctermfg=242  ctermbg=235  cterm=NONE      guifg=#75715e guibg=NONE    gui=NONE
hi SignColumn   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE

if &background == 'dark'
    call s:HL('Normal', s:ante_white, s:ante_bg)
    call s:HL('CursorLine', 'NONE')
    call s:HL('StorageClass', s:ante_blue)
    call s:HL('Type', s:ante_blue, 'NONE', 'bold')
    call s:HL('Identifier', s:ante_white)
    call s:HL('Module', s:ante_light_green)
    call s:HL('@module', s:ante_light_green) " highlight the module tree-sitter capture group
    call s:HL('Special', s:ante_light_green)
    call s:HL('PreProc', s:ante_light_green)
    call s:HL('@variable', s:ante_white)

    call s:HL('Number', s:ante_purple)
    call s:HL('Float', s:ante_purple)
    call s:HL('Boolean', s:ante_purple)
    call s:HL('Constant', s:ante_purple)
    call s:HL('Character', s:ante_yellow)
    call s:HL('String', s:ante_yellow) " 167
    call s:HL('Function', s:ante_green, 'NONE', 'bold')
    call s:HL('Visual', 'NONE', s:ante_grey3)
    hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
    hi PmenuSel     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#49483e gui=NONE
    hi CursorColumn ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#3c3d37 gui=NONE
else
    hi Normal       ctermfg=234  ctermbg=254  cterm=NONE      guifg=#000000 guibg=#f3fff9 gui=NONE
    hi CursorLine   ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#eeeeee gui=NONE
    hi StorageClass ctermfg=80   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=italic
    hi Type         ctermfg=30   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=bold
    hi Identifier   ctermfg=30   ctermbg=NONE cterm=NONE      guifg=#1184de guibg=NONE    gui=italic
    hi Special      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#008888 guibg=NONE    gui=NONE
    hi PreProc      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#008888 guibg=NONE    gui=NONE
    hi Number       ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Float        ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Boolean      ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Constant     ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi Character    ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#93609e guibg=NONE    gui=NONE
    hi String       ctermfg=167  ctermbg=NONE cterm=NONE      guifg=#847327 guibg=NONE    gui=NONE
    hi Function     ctermfg=254  ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
    hi Visual       ctermfg=NONE ctermbg=6    cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi CursorColumn ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=#e4e4e4 gui=NONE
    hi PmenuSel     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#d3d3d0 gui=NONE
endif

call s:HL('Comment', s:ante_grey1, 'NONE', 'italic')
call s:HL('Conditional', s:ante_red)
hi Define       ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi DiffAdd      ctermfg=231  ctermbg=64   cterm=bold      guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE      guifg=#8b0807 guibg=NONE    gui=NONE
hi DiffChange   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText     ctermfg=231  ctermbg=24   cterm=bold      guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg     ctermfg=231  ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
hi WarningMsg   ctermfg=3    ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
call s:HL('Keyword', s:ante_red, 'NONE', 'bold')
hi Label        ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74 guibg=NONE    gui=NONE
hi NonText      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#49483e guibg=NONE    gui=NONE
call s:HL('Operator', s:ante_white)
hi SpecialKey   ctermfg=1    ctermbg=237  cterm=NONE      guifg=#49483e guibg=#3c3d37 gui=NONE
hi Statement    ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=bold
hi Tag          ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi Title        ctermfg=231  ctermbg=NONE cterm=bold      guifg=#f8f8f2 guibg=NONE    gui=bold
hi Todo         ctermfg=95   ctermbg=NONE cterm=bold      guifg=#75715e guibg=NONE    gui=bold
hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE    guibg=NONE    gui=underline

hi htmlTag      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlEndTag   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlTagName  ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi htmlArg      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi yamlKey      ctermfg=197  ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi yamlAnchor   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi yamlAlias    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi cssURL       ctermfg=208  ctermbg=NONE cterm=NONE      guifg=#fd971f guibg=NONE    gui=italic
hi cssColor     ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
hi cssClassName ctermfg=148  ctermbg=NONE cterm=NONE      guifg=#a6e22e guibg=NONE    gui=NONE
hi cssBraces    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
