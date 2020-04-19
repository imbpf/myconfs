" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai_bpf"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
"hi DiffAdd                       guibg=#13354A
"hi DiffChange      guifg=#89807D guibg=#4C4745
"hi DiffDelete      guifg=#960050 guibg=#1E0010
"hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
"hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
"hi Search          guifg=#FFFFFF guibg=#455354
" marks column
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
hi SpecialKey      guifg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
"hi VisualNOS                     guibg=#403D3D
"hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorColumn                  guibg=#3E3D32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#BCBCBC guibg=#3B3A32
else
   hi Normal          guifg=#F8F8F2 guibg=#1B1D1E
   hi Comment         guifg=#465457
   hi CursorLine                    guibg=#293739
   hi CursorColumn                  guibg=#293739
   hi LineNr          guifg=#BCBCBC guibg=#232526
   hi NonText         guifg=#BCBCBC guibg=#232526
end

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

"   hi DiffAdd                     ctermbg=24
"   hi DiffChange      ctermfg=181 ctermbg=239
"   hi DiffDelete      ctermfg=162 ctermbg=53
"   hi DiffText                    ctermbg=102 cterm=bold

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
   "hi IncSearch       ctermfg=193 ctermbg=16

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
   "hi Search          ctermfg=253 ctermbg=66

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
"   hi VisualNOS                   ctermbg=238
"   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          ctermfg=252 ctermbg=233
   hi Comment         ctermfg=59
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=234
   hi NonText         ctermfg=250 ctermbg=234
end

"-----------------------------------------------------------------------------
"Migrated from Tomorrow-theme

let s:foreground = "cccccc"
let s:background = "2d2d2d"
let s:selection = "515151"
let s:line = "393939"
let s:comment = "75715E"
let s:red = "f2777a"
let s:orange = "f99157"
let s:yellow = "ffcc66"
let s:green = "99cc99"
let s:aqua = "009999"
let s:blue = "99cccc"
let s:purple = "cc99cc"
let s:window = "4d5057"


if has("gui_running") || &t_Co == 88 || &t_Co == 256
        " Returns an approximate grey index for the given grey level
        fun <SID>grey_number(x)
                if &t_Co == 88
                        if a:x < 23
                                return 0
                        elseif a:x < 69
                                return 1
                        elseif a:x < 103
                                return 2
                        elseif a:x < 127
                                return 3
                        elseif a:x < 150
                                return 4
                        elseif a:x < 173
                                return 5
                        elseif a:x < 196
                                return 6
                        elseif a:x < 219
                                return 7
                        elseif a:x < 243
                                return 8
                        else
                                return 9
                        endif
                else
                        if a:x < 14
                                return 0
                        else
                                let l:n = (a:x - 8) / 10
                                let l:m = (a:x - 8) % 10
                                if l:m < 5
                                        return l:n
                                else
                                        return l:n + 1
                                endif
                        endif
                endif
        endfun

        " Returns the actual grey level represented by the grey index
        fun <SID>grey_level(n)
                if &t_Co == 88
                        if a:n == 0
                                return 0
                        elseif a:n == 1
                                return 46
                        elseif a:n == 2
                                return 92
                        elseif a:n == 3
                                return 115
                        elseif a:n == 4
                                return 139
                        elseif a:n == 5
                                return 162
                        elseif a:n == 6
                                return 185
                        elseif a:n == 7
                                return 208
                        elseif a:n == 8
                                return 231
                        else
                                return 255
                        endif
                else
                        if a:n == 0
                                return 0
                        else
                                return 8 + (a:n * 10)
                        endif
                endif
        endfun

        " Returns the palette index for the given grey index
        fun <SID>grey_colour(n)
                if &t_Co == 88
                        if a:n == 0
                                return 16
                        elseif a:n == 9
                                return 79
                        else
                                return 79 + a:n
                        endif
                else
                        if a:n == 0
                                return 16
                        elseif a:n == 25
                                return 231
                        else
                                return 231 + a:n
                        endif
                endif
        endfun

        " Returns an approximate colour index for the given colour level
        fun <SID>rgb_number(x)
                if &t_Co == 88
                        if a:x < 69
                                return 0
                        elseif a:x < 172
                                return 1
                        elseif a:x < 230
                                return 2
                        else
                                return 3
                        endif
                else
                        if a:x < 75
                                return 0
                        else
                                let l:n = (a:x - 55) / 40
                                let l:m = (a:x - 55) % 40
                                if l:m < 20
                                        return l:n
                                else
                                        return l:n + 1
                                endif
                        endif
                endif
        endfun

        " Returns the actual colour level for the given colour index
        fun <SID>rgb_level(n)
                if &t_Co == 88
                        if a:n == 0
                                return 0
                        elseif a:n == 1
                                return 139
                        elseif a:n == 2
                                return 205
                        else
                                return 255
                        endif
                else
                        if a:n == 0
                                return 0
                        else
                                return 55 + (a:n * 40)
                        endif
                endif
        endfun

        " Returns the palette index for the given R/G/B colour indices
        fun <SID>rgb_colour(x, y, z)
                if &t_Co == 88
                        return 16 + (a:x * 16) + (a:y * 4) + a:z
                else
                        return 16 + (a:x * 36) + (a:y * 6) + a:z
                endif
        endfun

        " Returns the palette index to approximate the given R/G/B colour levels
        fun <SID>colour(r, g, b)
                " Get the closest grey
                let l:gx = <SID>grey_number(a:r)
                let l:gy = <SID>grey_number(a:g)
                let l:gz = <SID>grey_number(a:b)

                " Get the closest colour
                let l:x = <SID>rgb_number(a:r)
                let l:y = <SID>rgb_number(a:g)
                let l:z = <SID>rgb_number(a:b)

                if l:gx == l:gy && l:gy == l:gz
                        " There are two possibilities
                        let l:dgr = <SID>grey_level(l:gx) - a:r
                        let l:dgg = <SID>grey_level(l:gy) - a:g
                        let l:dgb = <SID>grey_level(l:gz) - a:b
                        let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
                        let l:dr = <SID>rgb_level(l:gx) - a:r
                        let l:dg = <SID>rgb_level(l:gy) - a:g
                        let l:db = <SID>rgb_level(l:gz) - a:b
                        let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
                        if l:dgrey < l:drgb
                                " Use the grey
                                return <SID>grey_colour(l:gx)
                        else
                                " Use the colour
                                return <SID>rgb_colour(l:x, l:y, l:z)
                        endif
                else
                        " Only one possibility
                        return <SID>rgb_colour(l:x, l:y, l:z)
                endif
        endfun

        " Returns the palette index to approximate the 'rrggbb' hex string
        fun <SID>rgb(rgb)
                let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
                let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
                let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

                return <SID>colour(l:r, l:g, l:b)
        endfun

        " Sets the highlighting for the given group
        fun <SID>X(group, fg, bg, attr)
                if a:fg != ""
                        exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
                endif
                if a:bg != ""
                        exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
                endif
                if a:attr != ""
                        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
                endif
        endfun



        " Vim Highlighting
        call <SID>X("diffAdded", s:green, "", "")
        call <SID>X("diffRemoved", s:red, "", "")
        "call <SID>X("Visual", "", s:selection, "")
        "call <SID>X("VisualNOS", "", s:selection, "")
        call <SID>X("Visual", s:background, s:blue, "")
        call <SID>X("VisualNOS", s:background, s:blue, "")
        call <SID>X("Search", s:background, s:orange, "")
        call <SID>X("IncSearch", s:background, s:orange, "")


        " Delete Functions
        delf <SID>X
        delf <SID>rgb
        delf <SID>colour
        delf <SID>rgb_colour
        delf <SID>rgb_level
        delf <SID>rgb_number
        delf <SID>grey_colour
        delf <SID>grey_level
        delf <SID>grey_number
endif
