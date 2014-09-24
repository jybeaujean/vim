" Vim color file
"
" Author: Jean-Yves Beaujean <jybeaujean@webismymind.be>
" Based on a Textmate theme called putty.
hi clear

"set background=dark
if version > 580
    hi clear
   " if exists("syntax_on")
   "     syntax reset
   " endif
endif                 

let g:colors_name="jybeaujean"


" Background color
hi Normal guibg=#302f2d guifg=#ffffff

" String and text  
"---------------- 
hi Character       guifg=#6bd753
hi String          guifg=#6bd753


" Boolean, Constant, Number
"--------------------------
hi Constant        guifg=#AE81FF             
hi Boolean         guifg=#AE81FF
hi Number          guifg=#AE81FF             
hi Float           guifg=#AE81FF


" Comment and Todo
"-------------------
"hi Todo            guifg=#6d6d6d               gui=bold,italic
"hi SpecialComment  guifg=#6d6d6d               gui=italic  
"hi Comment         guifg=#6d6d6d               gui=italic
" One day, I've read this : https://medium.com/web-dev/6f83add748c9. Since,
" i've changed the color of comment and todo
hi Todo            guifg=#ff58dd    gui=italic
hi SpecialComment  guifg=#ff58dd    gui=italic  
hi Comment         guifg=#ff58dd    gui=italic

              
" Statement	any statement        
"------------------------
hi Statement       guifg=#e9eec2
hi Conditional     guifg=#e9eec2                
hi Repeat          guifg=#e9eec2               
hi Label           guifg=#e9eec2               
hi Operator        guifg=#e9eec2
hi Keyword         guifg=#e9eec2               
hi Exception       guifg=#e9eec2 

" Var 
hi Identifier      guifg=#77bfef


" Function      
hi Function        guifg=#ef3776
                       

hi Cursor          guifg=#000000 guibg=#0cd70b
hi Debug           guifg=#FFFFFF               gui=bold
hi Define          guifg=#FFFFFF
hi Delimiter       guifg=#8F8F8F

" Diff
hi DiffAdd                       guibg=#6bd753
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#ef3776
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#77bfef gui=bold
hi Error           guifg=#ef3776 guibg=#1E0010
hi ErrorMsg        guifg=#FFFFFF guibg=#ef3776 gui=bold
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000


hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#FFFFFF guibg=#000000

hi Macro           guifg=#FFFFFF               gui=italic
hi SpecialKey      guifg=#FFFFFF               gui=italic

hi MatchParen      guifg=#000000 guibg=#FFFFFF gui=bold
hi ModeMsg         guifg=#FFFFFF
hi MoreMsg         guifg=#FFFFFF

" complete menu
hi Pmenu           guifg=#FFFFFF guibg=#000000
hi PmenuSel                      guibg=#080808
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#FFFFFF

hi PreCondit       guifg=#FFFFFF               gui=bold
hi PreProc         guifg=#FFFFFF
hi Question        guifg=#FFFFFF
hi Search          guifg=#FFFFFF guibg=#ff2142
" marks column
hi SignColumn      guifg=#FFFFFF guibg=#232526
hi SpecialChar     guifg=#FFFFFF               gui=bold
hi Special         guifg=#FFFFFF guibg=bg      gui=italic
hi SpecialKey      guifg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi Title           guifg=#ffffff

" Object, Class, Structure, etc..
hi Typedef         guifg=#dfc0c2
hi StorageClass    guifg=#dfc0c2               gui=italic
hi Structure       guifg=#dfc0c2
hi Tag             guifg=#dfc0c2              gui=italic
hi Type            guifg=#dfc0c2              gui=none

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS       guibg=#656f82
hi Visual          guibg=#656f82
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#FFFFFF guibg=#000000

hi CursorLine      				 guibg=#232526
hi CursorIM     				 guibg=#232526
hi CursorColumn    				 guibg=#42423f
hi LineNr          guifg=#BCBCBC guibg=#232526

" Non used
" hi NonText         guifg=#BCBCBC guibg=#232526

    

" HTML Stuff         
"-----------
hi htmlTag              guifg=#e8744c ctermfg=2                   gui=none
hi htmlTagN             guifg=#e8744c ctermfg=2                   gui=none
hi htmlTagName          guifg=#e8744c ctermfg=2                   gui=none
hi htmlEndTag           guifg=#e8744c ctermfg=2                   gui=none
hi htmlSpecialTagName   guifg=#e8744c ctermfg=2                   gui=none
hi htmlArg              guifg=#e8744c ctermfg=39                  gui=none
hi htmlString           guifg=#9aef56 ctermfg=118                 gui=none
hi htmlLink             guifg=#ffffff ctermfg=15                  gui=none
"hi htmlComment          guifg=#FFFFFF ctermfg=15                  gui=none
"hi htmlCommentPart      guifg=#BBBBBB ctermfg=250                 gui=none
"hi htmlCSSStyleComment  guifg=#BBBBBB ctermfg=250                 gui=none

" PHP Stuff
"-----------
"hi phpParent            guifg=#FFFFFF ctermfg=15                  gui=none
"hi phpInclude           guifg=#FF9900 ctermfg=208                 gui=none
hi phpIdentifier        guifg=#77bfef ctermfg=2                   gui=none
hi phpVarSelector        guifg=#77bfef ctermfg=2                   gui=none
"hi phpBoolean        guifg=#91cbf9 ctermfg=2                   gui=none
hi phpFunctions         guifg=#ef3776 ctermfg=2                   gui=none 


" Javascript Stuff
"-----------------
hi javaScriptNull       guifg=#AE81FF ctermfg=206                 gui=none
hi javaScriptIdentifier guifg=#77bfef ctermfg=208                 gui=none


"hi javaScript		    guifg=#FFFFFF ctermfg=15                  gui=none 
"hi javaScriptGlobal		guifg=#ff0000 ctermfg=15                  gui=none 
"hi javaScriptNumber		guifg=#ff0000 ctermfg=42                  gui=none 
"hi javaScriptOperator   guifg=#ff0000 ctermfg=208                 gui=none
"hi javaScriptFunction   guifg=#ff0000 ctermfg=208                 gui=none
hi javaScriptStatement  guifg=#ff0000 ctermfg=208                 gui=none
hi javaScriptMember     guifg=#ff0000 ctermfg=2                   gui=none




"
" Support for 256-color terminal
"
if &t_Co > 255
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          ctermfg=252 ctermbg=233
   hi Comment         ctermfg=59
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=234
   hi NonText         ctermfg=250 ctermbg=234
end
