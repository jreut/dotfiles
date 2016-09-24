hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'jreut'

hi Normal       cterm=NONE      ctermfg=251     ctermbg=0
hi Visual       cterm=NONE      ctermfg=NONE    ctermbg=59

hi EndOfBuffer  cterm=NONE      ctermfg=bg      ctermbg=bg
hi ColorColumn  cterm=underline      ctermfg=NONE    ctermbg=NONE
hi NonText      cterm=NONE      ctermfg=238     ctermbg=NONE
hi VertSplit    cterm=NONE      ctermfg=59      ctermbg=NONE
hi StatusLine   cterm=bold      ctermfg=fg      ctermbg=NONE
hi! default link StatusLineNC NonText
hi TabLine      cterm=underline ctermfg=NONE    ctermbg=NONE
hi TabLineFill  cterm=underline ctermfg=NONE    ctermbg=NONE
hi TabLineSel   cterm=bold      ctermfg=NONE    ctermbg=NONE
hi! default link CursorLine Visual
hi! default link CursorColumn Visual
hi LineNr       cterm=NONE      ctermfg=59      ctermbg=bg
hi CursorLineNr cterm=reverse   ctermfg=59      ctermbg=bg

hi Folded       cterm=NONE      ctermfg=fg      ctermbg=235
hi! default link FoldColumn CursorLineNr
hi! default link Conceal Folded

hi DiffAdd      cterm=NONE      ctermfg=16      ctermbg=34
hi DiffChange   cterm=NONE      ctermfg=16      ctermbg=184
hi DiffDelete   cterm=NONE      ctermfg=16      ctermbg=161
hi DiffText     cterm=bold      ctermfg=16      ctermbg=184

hi Title        cterm=underline ctermfg=255     ctermbg=NONE

hi SpellBad     cterm=undercurl ctermfg=NONE    ctermbg=88
hi SpellCap     cterm=undercurl ctermfg=NONE    ctermbg=91
hi SpellRare    cterm=undercurl ctermfg=NONE    ctermbg=93

hi Pmenu        cterm=NONE      ctermfg=250     ctermbg=23
hi PmenuSel     cterm=bold      ctermfg=250     ctermbg=25
hi PmenuSbar    cterm=NONE      ctermfg=NONE    ctermbg=61
hi PmenuThumb   cterm=NONE      ctermfg=NONE    ctermbg=63

hi Todo         cterm=underline ctermfg=178     ctermbg=NONE
hi Type         cterm=bold      ctermfg=43      ctermbg=NONE
hi Keyword      cterm=NONE      ctermfg=202     ctermbg=NONE
hi Statement    cterm=NONE      ctermfg=209     ctermbg=NONE
hi String       cterm=NONE      ctermfg=157     ctermbg=NONE
hi Number       cterm=NONE      ctermfg=147     ctermbg=NONE
hi Comment      cterm=NONE      ctermfg=244     ctermbg=NONE
hi Special      cterm=NONE      ctermfg=220     ctermbg=NONE
hi Identifier   cterm=NONE      ctermfg=87      ctermbg=NONE
hi Function     cterm=bold      ctermfg=86     ctermbg=NONE

""" Ruby syntax
" XXX: for finding unstyled things
hi PickerUpper          cterm=underline ctermfg=red     ctermbg=blue

"" keyword-like
hi! def link rubyKeyword Keyword
hi rubyInclude          cterm=underline ctermfg=202     ctermbg=NONE
hi rubyModule           cterm=underline ctermfg=203     ctermbg=NONE
hi rubyClass            cterm=underline ctermfg=204     ctermbg=NONE
hi rubyAttribute        cterm=underline ctermfg=205     ctermbg=NONE
hi rubyAccess           cterm=underline ctermfg=206     ctermbg=NONE
hi rubyDefine           cterm=underline ctermfg=207     ctermbg=NONE
hi rubyControl          cterm=bold      ctermfg=173     ctermbg=NONE
hi! def link rubyOptionalDo     rubyControl
hi! def link rubyConditional    rubyControl
hi! def link rubyConditionalModifier rubyControl
hi! def link rubyRepeat rubyControl
hi! def link rubyRepeatModifier rubyControl
hi rubyEval             cterm=bold      ctermfg=210     ctermbg=NONE
hi rubyExceptional      cterm=bold      ctermfg=211     ctermbg=NONE
hi rubyMethodExceptional cterm=bold     ctermfg=212     ctermbg=NONE
hi rubyException        cterm=bold      ctermfg=213     ctermbg=NONE

"" variables and identifiers
hi rubyPredefinedIdentifier cterm=bold  ctermfg=185      ctermbg=NONE
hi! def link rubyPredefinedVariable rubyPredefinedIdentifier
hi! def link rubyPredefinedConstant rubyPredefinedIdentifier
hi! def link rubyPseudoVariable rubyPredefinedIdentifier
hi! def link rubyBoolean rubyPredefinedIdentifier
hi rubySymbol           cterm=NONE      ctermfg=42      ctermbg=NONE
hi! def link rubyConstant Type
hi rubyGlobalVariable   cterm=bold      ctermfg=125      ctermbg=NONE
hi rubyClassVariable    cterm=NONE      ctermfg=126      ctermbg=NONE
hi rubyInstanceVariable cterm=NONE      ctermfg=217      ctermbg=NONE
hi! def link rubyIdentifier Identifier
hi! def link rubyFunction Function

"" literals
hi! def link rubyInteger Number
hi! def link rubyFloat rubyInteger

"" strings and regexen
hi! def link rubyString String
hi rubyStringEscape     cterm=bold      ctermfg=203     ctermbg=NONE
hi! def link rubyInterpolation rubyMethodBlock
hi! link rubyNoInterpolation PickerUpper
" TODO: make this make sense
hi rubyRegexp           cterm=NONE      ctermfg=155     ctermbg=NONE
hi rubyRegexpAnchor     cterm=NONE      ctermfg=159     ctermbg=NONE
hi rubyRegexpBrackets   cterm=NONE      ctermfg=153     ctermbg=NONE
hi rubyRegexpCharClass  cterm=NONE      ctermfg=147     ctermbg=NONE
hi! def link rubyRegexpDot rubyRegexpAnchor
hi! def link rubyRegexpParens rubyRegexpAnchor
hi! def link rubyRegexpQuantifier rubyRegexpAnchor
hi! def link rubyRegexpSpecial rubyRegexpAnchor
hi! def link rubyRegexpEscape rubyRegexpAnchor
hi! def link rubyRegexpComment rubyComment

"" specials and escapes
hi! link rubyASCIICode PickerUpper
hi! link rubyBeginEnd PickerUpper
hi! link rubyDelimiterEscape PickerUpper
hi! link rubyError PickerUpper
hi! link rubyInvalidVariable PickerUpper
hi! link rubyQuoteEscape PickerUpper
hi! link rubySpaceError PickerUpper
hi! link rubyStringSpecial PickerUpper

"" operators and delimiters
hi rubyStringDelimiter  cterm=NONE      ctermfg=225     ctermbg=NONE
hi rubyRegexpDelimiter  cterm=NONE      ctermfg=219     ctermbg=NONE
hi rubySymbolDelimiter  cterm=NONE      ctermfg=213     ctermbg=NONE
hi rubyInterpolationDelimiter cterm=bold ctermfg=203    ctermbg=NONE
hi rubyArrayDelimiter   cterm=NONE      ctermfg=223     ctermbg=NONE
hi rubyCurlyBlockDelimiter cterm=NONE   ctermfg=222     ctermbg=NONE
hi! def link rubyBracketOperator  rubyArrayDelimiter
hi rubyBlockParameterList cterm=NONE    ctermfg=221     ctermbg=NONE
hi! def link rubyOperator Special

"" comments
hi! def link rubyComment Comment
hi rubyMultilineComment cterm=NONE      ctermfg=243     ctermbg=NONE
hi rubyDocumentation    cterm=NONE      ctermfg=242     ctermbg=NONE
hi rubyDataDirective    cterm=NONE      ctermfg=241     ctermbg=NONE
hi rubyData             cterm=NONE      ctermfg=240     ctermbg=NONE
hi rubySharpBang        cterm=bold      ctermfg=239     ctermbg=NONE
hi! def link rubyTodo Todo

"" regions
hi! def link rubyMethodBlock Normal
hi! def link rubyBlock Normal
hi! link rubyBlockExpression PickerUpper
hi! def link rubyCaseExpression Normal
hi! link rubyClassDeclaration PickerUpper
hi! link rubyConditionalExpression PickerUpper
hi! def link rubyCurlyBlock Normal
hi! link rubyDeclaration PickerUpper
hi! def link rubyDoBlock Normal
hi! link rubyMethodDeclaration PickerUpper
hi! link rubyModuleDeclaration PickerUpper
hi! link rubyNestedAngleBrackets PickerUpper
hi! link rubyNestedCurlyBraces PickerUpper
hi! link rubyNestedParentheses PickerUpper
hi! link rubyNestedSquareBrackets PickerUpper
hi! link rubyOptionalDoLine PickerUpper
hi! link rubyRepeatExpression PickerUpper

"" unused
hi! link rubyAliasDeclaration PickerUpper
hi! link rubyAliasDeclaration PickerUpper
hi! link rubyAliasDeclaration2 PickerUpper
hi! link rubyArrayLiteral PickerUpper
hi! link rubyBlockArgument PickerUpper
hi! link rubyBlockParameter PickerUpper
hi! link rubyCapitalizedMethod PickerUpper
hi! link rubyExtendedStringSpecial PickerUpper
hi! link rubyHeredoc PickerUpper
hi! link rubyHeredocStart PickerUpper
hi! link rubyLineContinuation PickerUpper
hi! link rubyNotTop PickerUpper

"" transparents
hi! link rubyKeywordAsMethod PickerUpper
hi! link rubyLocalVariableOrMethod PickerUpper

""" RSpec syntax
hi rspecBeforeAndAfter  cterm=bold      ctermfg=162     ctermbg=NONE
hi rspecGroupMethods    cterm=bold      ctermfg=168     ctermbg=NONE
hi rspecMatchers        cterm=bold      ctermfg=174     ctermbg=NONE
hi rspecMessageExpectation cterm=bold   ctermfg=180     ctermbg=NONE
hi rspecKeywords        cterm=bold      ctermfg=186     ctermbg=NONE
hi rspecMockMethods     cterm=bold      ctermfg=192     ctermbg=NONE
hi rspecMocks           cterm=bold      ctermfg=180     ctermbg=NONE

""" GitGutter syntax
hi GitGutterAdd         cterm=NONE      ctermfg=34      ctermbg=NONE
hi GitGutterChange      cterm=NONE      ctermfg=184     ctermbg=NONE
hi GitGutterDelete      cterm=NONE      ctermfg=161     ctermbg=NONE

set bg=dark
