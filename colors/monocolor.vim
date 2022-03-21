" Author: Y. ZHOU

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "monocolor"
" Author: Y. ZHOU

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "monocolor"

""""""""""""""""""""""""""""""""""
" GUI colors
let s:m_black1_gui = "#3A3A3A"
let s:m_black0_gui = "#000000"
let s:m_gray0_gui = "#808080"
let s:m_gray1_gui = "#4E4E4E"
let s:m_gray3_gui = "#9E9E9E"
let s:m_gray2_gui = "#CCCCCC"
let s:m_white1_gui = "#E4E4E4"
let s:m_white0_gui = "#EEEEEE"

""""""""""""""""""""""""""""""""""
" 256 term colors
let s:m_black1_term = "237"
let s:m_black0_term = "0"
let s:m_gray0_term = "244"
let s:m_gray1_term = "239"
let s:m_gray3_term = "247"
let s:m_gray2_term = "251"
let s:m_white1_term = "254"
let s:m_white0_term = "255"

function! s:hi(group, guibg, guifg, ctermbg, ctermfg, attr)
    if a:guifg != ""
        exec "hi " . a:group . " guifg=" . a:guifg
    endif
    if a:guibg != ""
        exec "hi " . a:group . " guibg=" . a:guibg
    endif
    if a:ctermfg != ""
        exec "hi " . a:group . " ctermfg=" . a:ctermfg
    endif
    if a:ctermbg != ""
        exec "hi " . a:group . " ctermbg=" . a:ctermbg
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", "underline", "")
    endif
endfunction

if &background == "dark"

    let s:m_dark_bg = s:m_black1_gui
    let s:m_dark_bg_term = s:m_black1_term
    let s:m_dark_bg_2nd = s:m_gray0_gui
    let s:m_dark_bg_2nd_term = s:m_gray0_term
    let s:m_dark_fg = s:m_white1_gui
    let s:m_dark_fg_term = s:m_white1_term
    let s:m_dark_fg_2nd = s:m_gray3_gui
    let s:m_dark_fg_2nd_term = s:m_gray3_term

    " GUI:
    call s:hi("Cursor", s:m_dark_fg, "", "", "", "")
    call s:hi("CursorLine", s:m_dark_bg_2nd , "", s:m_dark_bg_2nd_term, "", "")
    call s:hi("Error", s:m_dark_bg, s:m_dark_fg, s:m_dark_bg_term, s:m_dark_fg_term, "")
    call s:hi("Visual", s:m_dark_fg, s:m_dark_bg, s:m_dark_fg_term, s:m_dark_bg_term, "")
    call s:hi("LineNr", "", s:m_dark_bg_2nd, "", s:m_dark_bg_2nd_term, "")
    call s:hi("Folded", "", s:m_dark_fg, "", s:m_dark_fg_term, "")
    call s:hi("Pmenu", s:m_dark_fg, s:m_dark_bg, s:m_dark_fg_term, s:m_dark_bg_term, "")

    " Syntax:
    call s:hi("Normal", s:m_dark_bg, s:m_dark_fg, s:m_dark_bg_term, s:m_dark_fg_term, "")
    call s:hi("Identifier", "", s:m_dark_fg, "", s:m_dark_fg_term, "bold")
    call s:hi("PreProc", "", s:m_dark_fg, "", s:m_dark_fg_term, "bold")
    call s:hi("Statement", "", s:m_dark_fg, "", s:m_dark_fg_term, "bold")
    call s:hi("Type", "", s:m_dark_fg, "", s:m_dark_fg_term, "bold")

    if has('gui_running')
        call s:hi("Comment", "", s:m_dark_fg_2nd, "", s:m_dark_fg_2nd_term, "italic")
        call s:hi("Constant", "", s:m_dark_fg, "", s:m_dark_fg_term, "italic")
        call s:hi("Special", "", s:m_dark_fg, "", s:m_dark_fg_term, "italic")
    else
        call s:hi("Comment", "", s:m_dark_fg_2nd, "", s:m_dark_fg_2nd_term, "")
        call s:hi("Constant", "", s:m_dark_fg, "", s:m_dark_fg_term, "")
        call s:hi("Special", "", s:m_dark_fg, "", s:m_dark_fg_term, "")
    endif

else

    let s:m_light_bg = s:m_white0_gui
    let s:m_light_bg_term = s:m_white0_term
    let s:m_light_bg_2nd = s:m_gray0_gui
    let s:m_light_bg_2nd_term = s:m_gray0_term
    let s:m_light_bg_3rd = s:m_black1_gui
    let s:m_light_bg_3rd_term = s:m_black1_term
    let s:m_light_fg = s:m_black0_gui
    let s:m_light_fg_term = s:m_black0_term
    let s:m_light_fg_2nd = s:m_gray1_gui
    let s:m_light_fg_2nd_term = s:m_gray1_term
    let s:m_light_fg_3nd = s:m_gray2_gui
    let s:m_light_fg_3nd_term = s:m_gray2_term

    " GUI:
    call s:hi("Cursor", s:m_light_fg, "", "", "", "")
    call s:hi("CursorLine", s:m_light_fg_3nd , "", s:m_light_fg_3nd_term, "", "")
    call s:hi("Error", s:m_light_bg_2nd, s:m_light_bg, s:m_light_bg_2nd_term, s:m_light_bg_term, "")
    call s:hi("Visual", s:m_light_bg_2nd, s:m_light_bg, s:m_light_fg_2nd_term, s:m_light_bg_term, "")
    call s:hi("LineNr", "", s:m_light_fg_3nd, "", s:m_light_fg_3nd_term, "")
    call s:hi("Folded", "", s:m_light_fg, "", s:m_light_fg_term, "")
    call s:hi("Pmenu", s:m_light_bg_3rd, s:m_light_bg, s:m_light_bg_3rd_term, s:m_light_bg_term, "")

    " Syntax:
    call s:hi("Normal", s:m_light_bg, s:m_light_fg, s:m_light_bg_term, s:m_light_fg_term, "")
    call s:hi("Identifier", "", s:m_light_fg, "", s:m_light_fg_term, "bold")
    call s:hi("PreProc", "", s:m_light_fg, "", s:m_light_fg_term, "bold")
    call s:hi("Statement", "", s:m_light_fg, "", s:m_light_fg_term, "bold")
    call s:hi("Type", "", s:m_light_fg, "", s:m_light_fg_term, "bold")

    if has('gui_running')
        call s:hi("Special", "", s:m_light_fg, "", s:m_light_fg_term, "italic")
        call s:hi("Constant", "", s:m_light_fg_2nd, s:m_light_bg_term, s:m_light_fg_2nd_term, "italic")
        call s:hi("Comment", s:m_light_bg, s:m_light_bg_2nd, s:m_light_bg_term, s:m_light_bg_2nd_term, "italic")
    else
        call s:hi("Special", "", s:m_light_fg, "", s:m_light_fg_term, "")
        call s:hi("Constant", "", s:m_light_fg_2nd, s:m_light_bg_term, s:m_light_fg_2nd_term, "")
        call s:hi("Comment", s:m_light_bg, s:m_light_bg_2nd, s:m_light_bg_term, s:m_light_bg_2nd_term, "")
    endif

endif

" Links
highlight! link Search		Visual
highlight! link NonText 	Normal
highlight! link Macro		PreProc
highlight! link Boolean		Constant
highlight! link Character	Constant
highlight! link Conditional	Statement
highlight! link CursorColumn	CursorLine
highlight! link Debug		PreProc	
highlight! link Define		PreProc
highlight! link Delimiter	Identifier
highlight! link Directory	Statement
highlight! link ErrorMsg	Error
highlight! link Exception	Statement
highlight! link Float		Constant
highlight! link FoldColumn	Folded
highlight! link Function	Identifier
highlight! link Ignore		Comment
highlight! link Include		PreProc
highlight! link IncSearch	Search
highlight! link Keyword		Identifier
highlight! link Label		Statement
highlight! link LineNr		LineNr
highlight! link MatchParen	Statement
highlight! link MoreMsg		Identifier
highlight! link NonText		Comment
highlight! link Number		Constant
highlight! link Operator	Identifier
highlight! link Question	MoreMsg
highlight! link PreCondit	PreProc
highlight! link Repeat		Statement
highlight! link SignColumn	Identifier
highlight! link SpecialChar	Special
highlight! link SpecialComment	Special
highlight! link SpecialKey	Special
highlight! link SpellBad	Error
highlight! link SpellCap	Error
highlight! link SpellLocal	Error
highlight! link SpellRare	Error
highlight! link StorageClass	Type
highlight! link String		Constant
highlight! link Structure	Type
highlight! link Title		Structure
highlight! link Todo		Error
highlight! link Typedef		Type
highlight! link WarningMsg	Error

