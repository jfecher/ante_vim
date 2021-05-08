" Vim color file

highlight clear

if exists("syntax_on")
  syntax reset
endif

set termguicolors
let g:colors_name = "ante"

hi Cursor       ctermfg=235  ctermbg=231  cterm=NONE      guifg=#272822 guibg=#f8f8f0 gui=NONE
hi LineNr       ctermfg=102  ctermbg=NONE cterm=NONE      guifg=#666666 guibg=NONE    gui=NONE
hi VertSplit    ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi MatchParen   ctermfg=197  ctermbg=NONE cterm=underline guifg=#aa0000 guibg=NONE    gui=bold
hi StatusLine   ctermfg=231  ctermbg=241  cterm=bold      guifg=#f8f8f2 guibg=#64645e gui=bold
hi StatusLineNC ctermfg=231  ctermbg=241  cterm=NONE      guifg=#f8f8f2 guibg=#64645e gui=NONE
hi IncSearch    ctermfg=235  ctermbg=186  cterm=NONE      guifg=#272822 guibg=#e6db74 gui=NONE
hi Search       ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE    guibg=NONE    gui=underline
hi Directory    ctermfg=141  ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
hi Folded       ctermfg=242  ctermbg=235  cterm=NONE      guifg=#75715e guibg=NONE    gui=NONE
hi SignColumn   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE

if &background == 'dark'
    hi Normal       ctermfg=254  ctermbg=234  cterm=NONE      guifg=#dddddd guibg=NONE    gui=NONE
    hi CursorLine   ctermfg=NONE ctermbg=237  cterm=NONE      guifg=NONE    guibg=#111111 gui=NONE
    hi StorageClass ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#56c9df guibg=NONE    gui=italic
    hi Type         ctermfg=30   ctermbg=NONE cterm=NONE      guifg=#56c9df guibg=NONE    gui=bold
    hi Identifier   ctermfg=81   ctermbg=NONE cterm=NONE      guifg=#56c9df guibg=NONE    gui=italic
    hi Special      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#009999 guibg=NONE    gui=NONE
    hi PreProc      ctermfg=31   ctermbg=NONE cterm=NONE      guifg=#009999 guibg=NONE    gui=NONE
    hi Number       ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#a370ae guibg=NONE    gui=NONE
    hi Float        ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#a370ae guibg=NONE    gui=NONE
    hi Boolean      ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#a370ae guibg=NONE    gui=NONE
    hi Constant     ctermfg=202  ctermbg=NONE cterm=NONE      guifg=#a370ae guibg=NONE    gui=NONE
    hi Character    ctermfg=3    ctermbg=NONE cterm=NONE      guifg=#ff6600 guibg=NONE    gui=NONE
    hi String       ctermfg=167  ctermbg=NONE cterm=NONE      guifg=#d44950 guibg=NONE    gui=NONE
    hi Function     ctermfg=254  ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
    hi Visual       ctermfg=NONE ctermbg=6    cterm=NONE      guifg=NONE    guibg=#393838 gui=NONE
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

hi Comment      ctermfg=245  ctermbg=NONE cterm=NONE      guifg=#999999 guibg=NONE    gui=italic
hi Conditional  ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=bold
hi Define       ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=NONE
hi DiffAdd      ctermfg=231  ctermbg=64   cterm=bold      guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE      guifg=#8b0807 guibg=NONE    gui=NONE
hi DiffChange   ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText     ctermfg=231  ctermbg=24   cterm=bold      guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg     ctermfg=231  ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
hi WarningMsg   ctermfg=3    ctermbg=197  cterm=NONE      guifg=#f8f8f0 guibg=#aa0000 gui=NONE
hi Keyword      ctermfg=124  ctermbg=NONE cterm=bold      guifg=#aa0000 guibg=NONE    gui=bold
hi Label        ctermfg=186  ctermbg=NONE cterm=NONE      guifg=#e6db74 guibg=NONE    gui=NONE
hi NonText      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#49483e guibg=NONE    gui=NONE
hi Operator     ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#aa0000 guibg=NONE    gui=bold
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

hi link CocErrorSign GruvboxRedSign
hi link CocWarningSign GruvboxOrangeSign
hi link CocInfoSign GruvboxYellowSign
hi link CocHintSign GruvboxBlueSign
hi link CocErrorFloat GruvboxRed
hi link CocWarningFloat GruvboxOrange
hi link CocInfoFloat GruvboxYellow
hi link CocHintFloat GruvboxBlue
hi link CocDiagnosticsError GruvboxRed
hi link CocDiagnosticsWarning GruvboxOrange
hi link CocDiagnosticsInfo GruvboxYellow
hi link CocDiagnosticsHint GruvboxBlue
hi link CocSelectedText GruvboxRed
hi link CocCodeLens GruvboxGray
" call s:HL('CocErrorHighlight', NONE, NONE, underline, #aa0000)
" call s:HL('CocWarningHighlight', NONE, NONE, underline, #aaaa00)
" call s:HL('CocInfoHighlight', NONE, NONE, underline, #00aa00)
" call s:HL('CocHintHighlight', NONE, NONE, underline, #0000aa)
