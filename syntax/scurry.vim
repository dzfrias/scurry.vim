if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn keyword   scurryConditional switch case if else
syn keyword   scurryLoop        for while in

syn keyword   scurryKeyword     break
syn keyword   scurryKeyword     continue
syn keyword   scurryKeyword     return
syn keyword   scurryKeyword     import
syn keyword   scurryKeyword     exp
syn keyword   scurryKeyword     decl nextgroup=scurryIdentifier skipwhite skipempty
syn keyword   scurryKeyword     fn nextgroup=scurryIdentifier skipwhite skipempty

syn keyword   scurryType        Int Float Array Map String Any Fn Decl Mod Bool

syn match     scurryOperator    display "\%(\$\|+\|-\|/\|*\|=\|\^\|&&\|||\|!\|>\|<\|%\)=\?"
syn match     scurryFuncCall    "\w\(\w\)*("he=e-1,me=e-1

syn match     scurryEscapeError   display contained /\\./
syn match     scurryEscape        display contained /\\\([nrt0\\'"]\|x\x\{2}\)/
syn match     scurryEscapeUnicode display contained /\\u{\%(\x_*\)\{1,6}}/
syn match     scurryStringContinuation display contained /\\\n\s*/
syn region    scurryString      matchgroup=scurryStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=scurryEscape,scurryEscapeUnicode,scurryEscapeError,scurryStringContinuation,@Spell
syn match     scurryNumber      display "\<[0-9][0-9_]*"

syn match     scurryIdentifier  "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn region    scurryComment     start="//" end="$" contains=@Spell

syn keyword   scurrySelf        self
syn keyword   scurryBoolean     True False

hi def link scurryEscape        Special
hi def link scurryEscapeUnicode scurryEscape
hi def link scurryEscapeError   Error
hi def link scurryStringContinuation Special
hi def link scurryString        String
hi def link scurryStringDelimiter String
hi def link scurryBoolean       Boolean
hi def link scurryNumber        Number
hi def link scurrySelf          Identifier
hi def link scurryOperator      Operator
hi def link scurryKeyword       Keyword
hi def link scurryLoop          Conditional
hi def link scurryConditional   Conditional
hi def link scurryIdentifier    Identifier
hi def link scurryFunction      Function
hi def link scurryFuncCall      Function
hi def link scurryType          Type
hi def link scurryComment       Comment

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax = "scurry"

" vim: set et sw=4 sts=4 ts=8:
