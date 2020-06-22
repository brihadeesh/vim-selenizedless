" Init {{{
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="selenizedless"
" }}}
" Colors {{{
let s:bg = "#103c48"
let s:fg = "#adbcbc"
let s:mute = "#72898f"

if exists("g:selenizedless_bg")
  let s:bg = g:selenizedless_bg
endif

if exists("g:selenizedless_fg")
  let s:bg = g:selenizedless_fg
endif

if exists("g:selenizedless_muted")
  let s:mute = g:selenizedless_muted
endif
" }}}
" Groups {{{
let s:normals = []
let s:lamrons = []
let s:muted = []
let s:clear = []
" }}}
" Syntax {{{
let s:normals = s:normals + [
      \ "Identifier",
      \ "Function",
      \ "Statement",
      \ "Conditional",
      \ "Repeat",
      \ "Constant",
      \ "Label",
      \ "Operator",
      \ "Keyword",
      \ "Exception",
      \ "PreProc",
      \ "Include",
      \ "Define",
      \ "Macro",
      \ "PreCondict",
      \ "Type",
      \ "StorageClass",
      \ "Structure",
      \ "Typedef",
      \ "Special",
      \ "SpecialChar",
      \ "Tag",
      \ "Delimiter",
      \ "Debug",
      \ "Ignore",
      \ ]
let s:muted = s:muted + [
      \ "Comment",
      \ "Todo",
      \ "Error",
      \ ]
let s:clear = s:clear + [
      \ "String",
      \ "Character",
      \ "Number",
      \ "Boolean",
      \ "Float",
      \ "SpecialComment",
      \ "Underlined",
      \ ]
" }}}
" Interface {{{
let s:normals = s:normals + [
      \ "ALEErrorSign",
      \ "ColorColumn",
      \ "CursorColumn",
      \ "CursorLineNr",
      \ "DiffAdd",
      \ "DiffChange",
      \ "DiffText",
      \ "Normal",
      \ "PmenuSbar",
      \ "PmenuSel",
      \ "PmenuThumb",
      \ "Title",
      \ ]
let s:lamrons = s:lamrons + [
      \ "Search",
      \ "Visual",
      \ ]
let s:muted = s:muted + [
      \ "ALEWarningSign",
      \ "Conceal",
      \ "DiffDelete",
      \ "Directory",
      \ "ErrorMsg",
      \ "FoldColumn",
      \ "Folded",
      \ "GitGutterAdd",
      \ "GitGutterChange",
      \ "GitGutterChangeDelete",
      \ "GitGutterDelete",
      \ "LineNr",
      \ "MatchParen",
      \ "MoreMsg",
      \ "NonText",
      \ "NvimInternalError",
      \ "Pmenu",
      \ "Question",
      \ "QuickFixLine",
      \ "SignColumn",
      \ "SpecialKey",
      \ "SpellBad",
      \ "SpellCap",
      \ "SpellLocal",
      \ "SpellRare",
      \ "StatusLine",
      \ "StatusLineNC",
      \ "TabLineFill",
      \ "VirtSplit",
      \ "WarningMsg",
      \ "WildMenu",
      \ ]
let s:clear = s:clear + [
      \ "ALESignColumnWithoutErrors",
      \ "Cursor",
      \ "CursorLine",
      \ "ModeMsg",
      \ "TabLine",
      \ "VertSplit",
      \ ]
" }}}
" Paint it all {{{
for group in s:normals
  exec("hi " . group . " cterm=none guibg=" . s:bg . " guifg=" . s:fg)
endfor

for group in s:lamrons
  exec("hi " . group . " cterm=none guibg=" . s:fg . " guifg=" . s:bg)
endfor

for group in s:muted
  exec("hi " . group . " cterm=none guibg=" . s:bg . " guifg=" . s:mute)
endfor

for group in s:clear
  exec("hi " . group . " cterm=none ")
endfor
" }}}
" Options {{{
if exists("g:selenizedless_syntax_bold")
  exec("hi Function cterm=bold")
  exec("hi Statement cterm=bold")
  exec("hi Conditional cterm=bold")
  exec("hi Keyword cterm=bold")
endif

if exists("g:selenizedless_syntax_mute")
  exec("hi Function guifg=" . s:mute)
  exec("hi Statement guifg=" . s:mute)
  exec("hi Conditional guifg=" . s:mute)
  exec("hi Keyword guifg=" . s:mute)
endif
" }}}
" vim:foldmethod=marker:foldlevel=0
