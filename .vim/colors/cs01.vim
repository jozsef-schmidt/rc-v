hi clear
let g:colors_name = 'cs01'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m')

let s:italics = s:italics && get(g:, 'italics', 1)
hi! link CursorColumn         CursorLine
hi! link QuickFixLine         Search
hi! link StatusLineTermNC     StatusLineNC
hi! link StatusLineTerm       StatusLine
hi! link Tag                  Special
hi! link VisualNOS            Visual

if s:t_Co >= 256
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=187  ctermbg=none cterm=none
      hi CursorLineNr         ctermfg=214  ctermbg=none cterm=none
      hi FoldColumn           ctermfg=102  ctermbg=none cterm=none
      hi SignColumn           ctermfg=187  ctermbg=none cterm=none
      hi VertSplit            ctermfg=59   ctermbg=none cterm=none
    else
      hi Normal               ctermfg=187  ctermbg=235  cterm=none
      if !has('patch-8.0.0616')
        set background=dark
      endif
      hi CursorLineNr         ctermfg=214  ctermbg=237  cterm=none
      hi FoldColumn           ctermfg=102  ctermbg=237  cterm=none
      hi SignColumn           ctermfg=187  ctermbg=237  cterm=none
      hi VertSplit            ctermfg=59   ctermbg=235  cterm=none
    endif
    hi Boolean                ctermfg=175  ctermbg=none cterm=none
    hi Character              ctermfg=175  ctermbg=none cterm=none
    hi ColorColumn            ctermfg=none ctermbg=237  cterm=none
    hi Comment                ctermfg=102  ctermbg=none cterm=italic
    hi Conceal                ctermfg=109  ctermbg=none cterm=none
    hi Conditional            ctermfg=203  ctermbg=none cterm=none
    hi Constant               ctermfg=175  ctermbg=none cterm=none
    hi Cursor                 ctermfg=none ctermbg=none cterm=reverse
    hi CursorIM               ctermfg=none ctermbg=none cterm=reverse
    hi CursorLine             ctermfg=none ctermbg=237  cterm=none
    hi Debug                  ctermfg=203  ctermbg=none cterm=none
    hi Define                 ctermfg=107  ctermbg=none cterm=none
    hi Delimiter              ctermfg=208  ctermbg=none cterm=none
    hi DiffAdd                ctermfg=142  ctermbg=235  cterm=reverse
    hi DiffChange             ctermfg=107  ctermbg=235  cterm=reverse
    hi DiffDelete             ctermfg=203  ctermbg=235  cterm=reverse
    hi DiffText               ctermfg=214  ctermbg=235  cterm=reverse
    hi Directory              ctermfg=142  ctermbg=none cterm=bold
    hi EndOfBuffer            ctermfg=235  ctermbg=none cterm=none
    hi Error                  ctermfg=203  ctermbg=235  cterm=bold,reverse
    hi Error                  ctermfg=203  ctermbg=235  cterm=bold,reverse
    hi ErrorMsg               ctermfg=235  ctermbg=203  cterm=bold
    hi Exception              ctermfg=203  ctermbg=none cterm=none
    hi Float                  ctermfg=175  ctermbg=none cterm=none
    hi Folded                 ctermfg=102  ctermbg=237  cterm=italic
    hi Function               ctermfg=142  ctermbg=none cterm=bold
    hi Identifier             ctermfg=109  ctermbg=none cterm=none
    hi Ignore                 ctermfg=fg   ctermbg=none cterm=none
    hi Include                ctermfg=107  ctermbg=none cterm=none
    hi IncSearch              ctermfg=208  ctermbg=235  cterm=reverse
    hi Keyword                ctermfg=203  ctermbg=none cterm=none
    hi Label                  ctermfg=203  ctermbg=none cterm=none
    hi LineNr                 ctermfg=243  ctermbg=none cterm=none
    hi Macro                  ctermfg=107  ctermbg=none cterm=none
    hi MatchParen             ctermfg=none ctermbg=59   cterm=bold,underline
    hi ModeMsg                ctermfg=214  ctermbg=none cterm=bold
    hi MoreMsg                ctermfg=214  ctermbg=none cterm=bold
    hi NonText                ctermfg=239  ctermbg=none cterm=none
    hi Number                 ctermfg=175  ctermbg=none cterm=none
    hi Operator               ctermfg=107  ctermbg=none cterm=none
    hi Pmenu                  ctermfg=187  ctermbg=239  cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=239  cterm=none
    hi PmenuSel               ctermfg=239  ctermbg=109  cterm=bold
    hi PmenuThumb             ctermfg=none ctermbg=243  cterm=none
    hi PreCondit              ctermfg=107  ctermbg=none cterm=none
    hi PreProc                ctermfg=107  ctermbg=none cterm=none
    hi Question               ctermfg=208  ctermbg=none cterm=bold
    hi Repeat                 ctermfg=203  ctermbg=none cterm=none
    hi Search                 ctermfg=214  ctermbg=235  cterm=reverse
    hi SpecialChar            ctermfg=203  ctermbg=none cterm=none
    hi SpecialComment         ctermfg=203  ctermbg=none cterm=none
    hi Special                ctermfg=208  ctermbg=none cterm=italic
    hi SpecialKey             ctermfg=102  ctermbg=none cterm=none
    hi SpellBad               ctermfg=203  ctermbg=none cterm=italic,underline
    hi SpellCap               ctermfg=109  ctermbg=none cterm=italic,underline
    hi SpellLocal             ctermfg=107  ctermbg=none cterm=italic,underline
    hi SpellRare              ctermfg=175  ctermbg=none cterm=italic,underline
    hi Statement              ctermfg=203  ctermbg=none cterm=none
    hi StatusLine             ctermfg=239  ctermbg=187  cterm=reverse
    hi StatusLineNC           ctermfg=237  ctermbg=137  cterm=reverse
    hi StorageClass           ctermfg=208  ctermbg=none cterm=none
    hi String                 ctermfg=142  ctermbg=none cterm=italic
    hi Structure              ctermfg=107  ctermbg=none cterm=none
    hi TabLine                ctermfg=243  ctermbg=237  cterm=none
    hi TabLineFill            ctermfg=243  ctermbg=237  cterm=none
    hi TabLineSel             ctermfg=142  ctermbg=237  cterm=none
    hi Title                  ctermfg=142  ctermbg=none cterm=bold
    hi Todo                   ctermfg=fg   ctermbg=235  cterm=bold,italic
    hi ToolbarButton          ctermfg=230  ctermbg=59   cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=59   cterm=none
    hi Type                   ctermfg=214  ctermbg=none cterm=none
    hi Typedef                ctermfg=214  ctermbg=none cterm=none
    hi Underlined             ctermfg=109  ctermbg=none cterm=underline
    hi Visual                 ctermfg=none ctermbg=59   cterm=none
    hi WarningMsg             ctermfg=203  ctermbg=none cterm=bold
    hi WildMenu               ctermfg=109  ctermbg=239  cterm=bold
    if !s:italics
      hi Comment                                        cterm=none
      hi Folded                                         cterm=none
      hi Special                                        cterm=none
      hi SpellBad                                       cterm=underline
      hi SpellCap                                       cterm=underline
      hi SpellLocal                                     cterm=underline
      hi SpellRare                                      cterm=underline
      hi String                                         cterm=none
      hi Todo                                           cterm=bold
    endif
    hi NormalMode             ctermfg=137  ctermbg=235  cterm=reverse
    hi InsertMode             ctermfg=109  ctermbg=235  cterm=reverse
    hi ReplaceMode            ctermfg=107  ctermbg=235  cterm=reverse
    hi VisualMode             ctermfg=208  ctermbg=235  cterm=reverse
    hi CommandMode            ctermfg=175  ctermbg=235  cterm=reverse
    hi Warnings               ctermfg=208  ctermbg=235  cterm=reverse
    hi Terminal               ctermfg=187  ctermbg=235  cterm=none
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=237  ctermbg=none cterm=none
    hi CursorLineNr           ctermfg=172  ctermbg=none cterm=none
    hi FoldColumn             ctermfg=102  ctermbg=none cterm=none
    hi SignColumn             ctermfg=237  ctermbg=none cterm=none
    hi VertSplit              ctermfg=144  ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=237  ctermbg=230  cterm=none
    hi CursorLineNr           ctermfg=172  ctermbg=187  cterm=none
    hi FoldColumn             ctermfg=102  ctermbg=187  cterm=none
    hi SignColumn             ctermfg=237  ctermbg=187  cterm=none
    hi VertSplit              ctermfg=144  ctermbg=230  cterm=none
  endif
  hi Boolean                  ctermfg=126  ctermbg=none cterm=none
  hi Character                ctermfg=126  ctermbg=none cterm=none
  hi ColorColumn              ctermfg=none ctermbg=187  cterm=none
  hi Comment                  ctermfg=102  ctermbg=none cterm=italic
  hi Conceal                  ctermfg=23   ctermbg=none cterm=none
  hi Conditional              ctermfg=124  ctermbg=none cterm=none
  hi Constant                 ctermfg=126  ctermbg=none cterm=none
  hi Cursor                   ctermfg=none ctermbg=none cterm=reverse
  hi CursorIM                 ctermfg=none ctermbg=none cterm=reverse
  hi CursorLine               ctermfg=none ctermbg=187  cterm=none
  hi Debug                    ctermfg=124  ctermbg=none cterm=none
  hi Define                   ctermfg=29   ctermbg=none cterm=none
  hi Delimiter                ctermfg=124  ctermbg=none cterm=none
  hi DiffAdd                  ctermfg=100  ctermbg=230  cterm=reverse
  hi DiffChange               ctermfg=29   ctermbg=230  cterm=reverse
  hi DiffDelete               ctermfg=124  ctermbg=230  cterm=reverse
  hi DiffText                 ctermfg=172  ctermbg=230  cterm=reverse
  hi Directory                ctermfg=100  ctermbg=none cterm=bold
  hi EndOfBuffer              ctermfg=230  ctermbg=none cterm=none
  hi Error                    ctermfg=124  ctermbg=230  cterm=bold,reverse
  hi Error                    ctermfg=124  ctermbg=230  cterm=bold,reverse
  hi ErrorMsg                 ctermfg=230  ctermbg=124  cterm=bold
  hi Exception                ctermfg=124  ctermbg=none cterm=none
  hi Float                    ctermfg=126  ctermbg=none cterm=none
  hi Folded                   ctermfg=102  ctermbg=187  cterm=italic
  hi Function                 ctermfg=100  ctermbg=none cterm=bold
  hi Identifier               ctermfg=23   ctermbg=none cterm=none
  hi Ignore                   ctermfg=fg   ctermbg=none cterm=none
  hi Include                  ctermfg=29   ctermbg=none cterm=none
  hi IncSearch                ctermfg=124  ctermbg=230  cterm=reverse
  hi Keyword                  ctermfg=124  ctermbg=none cterm=none
  hi Label                    ctermfg=124  ctermbg=none cterm=none
  hi LineNr                   ctermfg=137  ctermbg=none cterm=none
  hi Macro                    ctermfg=29   ctermbg=none cterm=none
  hi MatchParen               ctermfg=none ctermbg=144  cterm=bold,underline
  hi ModeMsg                  ctermfg=172  ctermbg=none cterm=bold
  hi MoreMsg                  ctermfg=172  ctermbg=none cterm=bold
  hi NonText                  ctermfg=187  ctermbg=none cterm=none
  hi Number                   ctermfg=126  ctermbg=none cterm=none
  hi Operator                 ctermfg=29   ctermbg=none cterm=none
  hi Pmenu                    ctermfg=237  ctermbg=187  cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=187  cterm=none
  hi PmenuSel                 ctermfg=187  ctermbg=23   cterm=bold
  hi PmenuThumb               ctermfg=none ctermbg=137  cterm=none
  hi PreCondit                ctermfg=29   ctermbg=none cterm=none
  hi PreProc                  ctermfg=29   ctermbg=none cterm=none
  hi Question                 ctermfg=124  ctermbg=none cterm=bold
  hi Repeat                   ctermfg=124  ctermbg=none cterm=none
  hi Search                   ctermfg=172  ctermbg=230  cterm=reverse
  hi SpecialChar              ctermfg=124  ctermbg=none cterm=none
  hi SpecialComment           ctermfg=124  ctermbg=none cterm=none
  hi Special                  ctermfg=124  ctermbg=none cterm=italic
  hi SpecialKey               ctermfg=102  ctermbg=none cterm=none
  hi SpellBad                 ctermfg=124  ctermbg=none cterm=italic,underline
  hi SpellCap                 ctermfg=23   ctermbg=none cterm=italic,underline
  hi SpellLocal               ctermfg=29   ctermbg=none cterm=italic,underline
  hi SpellRare                ctermfg=126  ctermbg=none cterm=italic,underline
  hi Statement                ctermfg=124  ctermbg=none cterm=none
  hi StatusLine               ctermfg=187  ctermbg=237  cterm=reverse
  hi StatusLineNC             ctermfg=187  ctermbg=243  cterm=reverse
  hi StorageClass             ctermfg=124  ctermbg=none cterm=none
  hi String                   ctermfg=100  ctermbg=none cterm=italic
  hi Structure                ctermfg=29   ctermbg=none cterm=none
  hi TabLine                  ctermfg=137  ctermbg=187  cterm=none
  hi TabLineFill              ctermfg=137  ctermbg=187  cterm=none
  hi TabLineSel               ctermfg=100  ctermbg=187  cterm=none
  hi Title                    ctermfg=100  ctermbg=none cterm=bold
  hi Todo                     ctermfg=fg   ctermbg=230  cterm=bold,italic
  hi ToolbarButton            ctermfg=235  ctermbg=144  cterm=bold
  hi ToolbarLine              ctermfg=none ctermbg=144  cterm=none
  hi Type                     ctermfg=172  ctermbg=none cterm=none
  hi Typedef                  ctermfg=172  ctermbg=none cterm=none
  hi Underlined               ctermfg=23   ctermbg=none cterm=underline
  hi Visual                   ctermfg=none ctermbg=144  cterm=none
  hi WarningMsg               ctermfg=124  ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=23   ctermbg=187  cterm=bold
  if !s:italics
    hi Comment                                          cterm=none
    hi Folded                                           cterm=none
    hi SpellBad                                         cterm=underline
    hi SpellCap                                         cterm=underline
    hi SpellLocal                                       cterm=underline
    hi SpellRare                                        cterm=underline
    hi Special                                          cterm=none
    hi String                                           cterm=none
    hi Todo                                             cterm=bold
  endif
  hi NormalMode               ctermfg=243  ctermbg=230  cterm=reverse
  hi InsertMode               ctermfg=23   ctermbg=230  cterm=reverse
  hi ReplaceMode              ctermfg=29   ctermbg=230  cterm=reverse
  hi VisualMode               ctermfg=124  ctermbg=230  cterm=reverse
  hi CommandMode              ctermfg=126  ctermbg=230  cterm=reverse
  hi Warnings                 ctermfg=124  ctermbg=230  cterm=reverse
  hi Terminal                 ctermfg=237  ctermbg=230  cterm=none
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=15   ctermbg=none cterm=none
    else
      hi Normal               ctermfg=15   ctermbg=0    cterm=none
    endif
    hi Boolean                ctermfg=13   ctermbg=none cterm=none
    hi Character              ctermfg=13   ctermbg=none cterm=none
    hi ColorColumn            ctermfg=0    ctermbg=8    cterm=none
    hi Comment                ctermfg=8    ctermbg=none cterm=italic
    hi Conceal                ctermfg=9    ctermbg=none cterm=none
    hi Conditional            ctermfg=12   ctermbg=none cterm=none
    hi Constant               ctermfg=13   ctermbg=none cterm=none
    hi Cursor                 ctermfg=none ctermbg=none cterm=reverse
    hi CursorIM               ctermfg=none ctermbg=none cterm=reverse
    hi CursorLine             ctermfg=none ctermbg=none cterm=underline
    hi CursorLineNr           ctermfg=14   ctermbg=none cterm=none
    hi Debug                  ctermfg=12   ctermbg=none cterm=none
    hi Define                 ctermfg=11   ctermbg=none cterm=none
    hi Delimiter              ctermfg=13   ctermbg=none cterm=none
    hi DiffAdd                ctermfg=10   ctermbg=0    cterm=reverse
    hi DiffChange             ctermfg=11   ctermbg=0    cterm=reverse
    hi DiffDelete             ctermfg=12   ctermbg=0    cterm=reverse
    hi DiffText               ctermfg=14   ctermbg=0    cterm=reverse
    hi Directory              ctermfg=10   ctermbg=none cterm=bold
    hi EndOfBuffer            ctermfg=0    ctermbg=none cterm=none
    hi Error                  ctermfg=12   ctermbg=0    cterm=bold,reverse
    hi Error                  ctermfg=12   ctermbg=0    cterm=reverse
    hi ErrorMsg               ctermfg=0    ctermbg=12   cterm=none
    hi Exception              ctermfg=12   ctermbg=none cterm=none
    hi Float                  ctermfg=13   ctermbg=none cterm=none
    hi FoldColumn             ctermfg=8    ctermbg=none cterm=none
    hi Folded                 ctermfg=8    ctermbg=none cterm=italic
    hi Function               ctermfg=10   ctermbg=none cterm=bold
    hi Identifier             ctermfg=9    ctermbg=none cterm=none
    hi Ignore                 ctermfg=fg   ctermbg=none cterm=none
    hi Include                ctermfg=11   ctermbg=none cterm=none
    hi IncSearch              ctermfg=13   ctermbg=0    cterm=reverse
    hi Keyword                ctermfg=12   ctermbg=none cterm=none
    hi Label                  ctermfg=12   ctermbg=none cterm=none
    hi LineNr                 ctermfg=8    ctermbg=none cterm=none
    hi Macro                  ctermfg=11   ctermbg=none cterm=none
    hi MatchParen             ctermfg=none ctermbg=8    cterm=bold,underline
    hi ModeMsg                ctermfg=14   ctermbg=none cterm=bold
    hi MoreMsg                ctermfg=14   ctermbg=none cterm=bold
    hi NonText                ctermfg=8    ctermbg=none cterm=none
    hi Number                 ctermfg=13   ctermbg=none cterm=none
    hi Operator               ctermfg=11   ctermbg=none cterm=none
    hi Pmenu                  ctermfg=0    ctermbg=8    cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=8    cterm=none
    hi PmenuSel               ctermfg=0    ctermbg=9    cterm=none
    hi PmenuThumb             ctermfg=none ctermbg=9    cterm=none
    hi PreCondit              ctermfg=11   ctermbg=none cterm=none
    hi PreProc                ctermfg=11   ctermbg=none cterm=none
    hi Question               ctermfg=13   ctermbg=none cterm=bold
    hi Repeat                 ctermfg=12   ctermbg=none cterm=none
    hi Search                 ctermfg=14   ctermbg=0    cterm=reverse
    hi SignColumn             ctermfg=8    ctermbg=none cterm=none
    hi SpecialChar            ctermfg=12   ctermbg=none cterm=none
    hi SpecialComment         ctermfg=12   ctermbg=none cterm=none
    hi Special                ctermfg=13   ctermbg=none cterm=italic
    hi SpecialKey             ctermfg=8    ctermbg=none cterm=none
    hi SpellBad               ctermfg=12   ctermbg=none cterm=italic,underline
    hi SpellCap               ctermfg=9    ctermbg=none cterm=italic,underline
    hi SpellLocal             ctermfg=11   ctermbg=none cterm=italic,underline
    hi SpellRare              ctermfg=13   ctermbg=none cterm=italic,underline
    hi Statement              ctermfg=12   ctermbg=none cterm=none
    hi StatusLine             ctermfg=8    ctermbg=15   cterm=reverse
    hi StatusLineNC           ctermfg=8    ctermbg=0    cterm=reverse
    hi StorageClass           ctermfg=13   ctermbg=none cterm=none
    hi String                 ctermfg=10   ctermbg=none cterm=italic
    hi Structure              ctermfg=11   ctermbg=none cterm=none
    hi TabLine                ctermfg=0    ctermbg=8    cterm=none
    hi TabLineFill            ctermfg=0    ctermbg=8    cterm=none
    hi TabLineSel             ctermfg=8    ctermbg=0    cterm=underline
    hi Title                  ctermfg=10   ctermbg=none cterm=bold
    hi Todo                   ctermfg=fg   ctermbg=0    cterm=bold,italic
    hi ToolbarButton          ctermfg=15   ctermbg=8    cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=8    cterm=none
    hi Type                   ctermfg=14   ctermbg=none cterm=none
    hi Typedef                ctermfg=14   ctermbg=none cterm=none
    hi Underlined             ctermfg=9    ctermbg=none cterm=underline
    hi VertSplit              ctermfg=0    ctermbg=8    cterm=none
    hi Visual                 ctermfg=0    ctermbg=8    cterm=none
    hi WarningMsg             ctermfg=12   ctermbg=none cterm=bold
    hi WildMenu               ctermfg=15   ctermbg=0    cterm=bold
    if !s:italics
      hi Comment                                        cterm=none
      hi Folded                                         cterm=none
      hi SpellBad                                       cterm=underline
      hi SpellCap                                       cterm=underline
      hi SpellLocal                                     cterm=underline
      hi SpellRare                                      cterm=underline
      hi Special                                        cterm=none
      hi String                                         cterm=none
      hi Todo                                           cterm=bold
    endif
    hi NormalMode             ctermfg=7    ctermbg=0    cterm=reverse
    hi InsertMode             ctermfg=9    ctermbg=0    cterm=reverse
    hi ReplaceMode            ctermfg=11   ctermbg=0    cterm=reverse
    hi VisualMode             ctermfg=13   ctermbg=0    cterm=reverse
    hi CommandMode            ctermfg=13   ctermbg=0    cterm=reverse
    hi Warnings               ctermfg=13   ctermbg=0    cterm=reverse
    hi Terminal               ctermfg=15   ctermbg=0    cterm=none
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=0    ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=0    ctermbg=15   cterm=none
  endif
  hi Boolean                  ctermfg=13   ctermbg=none cterm=none
  hi Character                ctermfg=13   ctermbg=none cterm=none
  hi ColorColumn              ctermfg=15   ctermbg=7    cterm=none
  hi Comment                  ctermfg=8    ctermbg=none cterm=italic
  hi Conceal                  ctermfg=9    ctermbg=none cterm=none
  hi Conditional              ctermfg=12   ctermbg=none cterm=none
  hi Constant                 ctermfg=13   ctermbg=none cterm=none
  hi Cursor                   ctermfg=none ctermbg=none cterm=reverse
  hi CursorIM                 ctermfg=none ctermbg=none cterm=reverse
  hi CursorLine               ctermfg=none ctermbg=none cterm=underline
  hi CursorLineNr             ctermfg=14   ctermbg=none cterm=none
  hi Debug                    ctermfg=12   ctermbg=none cterm=none
  hi Define                   ctermfg=11   ctermbg=none cterm=none
  hi Delimiter                ctermfg=13   ctermbg=none cterm=none
  hi DiffAdd                  ctermfg=10   ctermbg=15   cterm=reverse
  hi DiffChange               ctermfg=11   ctermbg=15   cterm=reverse
  hi DiffDelete               ctermfg=12   ctermbg=15   cterm=reverse
  hi DiffText                 ctermfg=14   ctermbg=15   cterm=reverse
  hi Directory                ctermfg=10   ctermbg=none cterm=bold
  hi EndOfBuffer              ctermfg=15   ctermbg=none cterm=none
  hi Error                    ctermfg=12   ctermbg=15   cterm=bold,reverse
  hi Error                    ctermfg=12   ctermbg=15   cterm=reverse
  hi ErrorMsg                 ctermfg=15   ctermbg=12   cterm=none
  hi Exception                ctermfg=12   ctermbg=none cterm=none
  hi Float                    ctermfg=13   ctermbg=none cterm=none
  hi FoldColumn               ctermfg=7    ctermbg=none cterm=none
  hi Folded                   ctermfg=7    ctermbg=none cterm=italic
  hi Function                 ctermfg=10   ctermbg=none cterm=bold
  hi Identifier               ctermfg=9    ctermbg=none cterm=none
  hi Ignore                   ctermfg=fg   ctermbg=none cterm=none
  hi Include                  ctermfg=11   ctermbg=none cterm=none
  hi IncSearch                ctermfg=13   ctermbg=15   cterm=reverse
  hi Keyword                  ctermfg=12   ctermbg=none cterm=none
  hi Label                    ctermfg=12   ctermbg=none cterm=none
  hi LineNr                   ctermfg=7    ctermbg=none cterm=none
  hi Macro                    ctermfg=11   ctermbg=none cterm=none
  hi MatchParen               ctermfg=none ctermbg=7    cterm=bold,underline
  hi ModeMsg                  ctermfg=14   ctermbg=none cterm=bold
  hi MoreMsg                  ctermfg=14   ctermbg=none cterm=bold
  hi NonText                  ctermfg=7    ctermbg=none cterm=none
  hi Number                   ctermfg=13   ctermbg=none cterm=none
  hi Operator                 ctermfg=11   ctermbg=none cterm=none
  hi Pmenu                    ctermfg=15   ctermbg=7    cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=7    cterm=none
  hi PmenuSel                 ctermfg=15   ctermbg=9    cterm=none
  hi PmenuThumb               ctermfg=none ctermbg=9    cterm=none
  hi PreCondit                ctermfg=11   ctermbg=none cterm=none
  hi PreProc                  ctermfg=11   ctermbg=none cterm=none
  hi Question                 ctermfg=13   ctermbg=none cterm=bold
  hi Repeat                   ctermfg=12   ctermbg=none cterm=none
  hi Search                   ctermfg=14   ctermbg=15   cterm=reverse
  hi SignColumn               ctermfg=7    ctermbg=none cterm=none
  hi SpecialChar              ctermfg=12   ctermbg=none cterm=none
  hi SpecialComment           ctermfg=12   ctermbg=none cterm=none
  hi Special                  ctermfg=13   ctermbg=none cterm=italic
  hi SpecialKey               ctermfg=7    ctermbg=none cterm=none
  hi SpellBad                 ctermfg=12   ctermbg=none cterm=italic,underline
  hi SpellCap                 ctermfg=9    ctermbg=none cterm=italic,underline
  hi SpellLocal               ctermfg=11   ctermbg=none cterm=italic,underline
  hi SpellRare                ctermfg=13   ctermbg=none cterm=italic,underline
  hi Statement                ctermfg=12   ctermbg=none cterm=none
  hi StatusLine               ctermfg=7    ctermbg=0    cterm=reverse
  hi StatusLineNC             ctermfg=7    ctermbg=15   cterm=reverse
  hi StorageClass             ctermfg=13   ctermbg=none cterm=none
  hi String                   ctermfg=10   ctermbg=none cterm=italic
  hi Structure                ctermfg=11   ctermbg=none cterm=none
  hi TabLine                  ctermfg=15   ctermbg=7    cterm=none
  hi TabLineFill              ctermfg=15   ctermbg=7    cterm=none
  hi TabLineSel               ctermfg=7    ctermbg=15   cterm=underline
  hi Title                    ctermfg=10   ctermbg=none cterm=bold
  hi Todo                     ctermfg=fg   ctermbg=15   cterm=bold,italic
  hi ToolbarButton            ctermfg=0    ctermbg=7    cterm=bold
  hi ToolbarLine              ctermfg=none ctermbg=7    cterm=none
  hi Type                     ctermfg=14   ctermbg=none cterm=none
  hi Typedef                  ctermfg=14   ctermbg=none cterm=none
  hi Underlined               ctermfg=9    ctermbg=none cterm=underline
  hi VertSplit                ctermfg=15   ctermbg=7    cterm=none
  hi Visual                   ctermfg=15   ctermbg=7    cterm=none
  hi WarningMsg               ctermfg=12   ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=0    ctermbg=15   cterm=bold
  if !s:italics
    hi Comment                                          cterm=none
    hi Folded                                           cterm=none
    hi SpellBad                                         cterm=underline
    hi SpellCap                                         cterm=underline
    hi SpellLocal                                       cterm=underline
    hi SpellRare                                        cterm=underline
    hi Special                                          cterm=none
    hi String                                           cterm=none
    hi Todo                                             cterm=bold
  endif
  hi NormalMode               ctermfg=0    ctermbg=15   cterm=reverse
  hi InsertMode               ctermfg=9    ctermbg=15   cterm=reverse
  hi ReplaceMode              ctermfg=11   ctermbg=15   cterm=reverse
  hi VisualMode               ctermfg=13   ctermbg=15   cterm=reverse
  hi CommandMode              ctermfg=13   ctermbg=15   cterm=reverse
  hi Warnings                 ctermfg=13   ctermbg=15   cterm=reverse
  hi Terminal                 ctermfg=0    ctermbg=15   cterm=none
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 8
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=7    ctermbg=none cterm=none
    else
      hi Normal               ctermfg=7    ctermbg=0    cterm=none
    endif
    hi Boolean                ctermfg=5    ctermbg=none cterm=none
    hi Character              ctermfg=5    ctermbg=none cterm=none
    hi ColorColumn            ctermfg=0    ctermbg=7    cterm=none
    hi Comment                ctermfg=7    ctermbg=none cterm=italic
    hi Conceal                ctermfg=4    ctermbg=none cterm=none
    hi Conditional            ctermfg=1    ctermbg=none cterm=none
    hi Constant               ctermfg=5    ctermbg=none cterm=none
    hi Cursor                 ctermfg=none ctermbg=none cterm=reverse
    hi CursorIM               ctermfg=none ctermbg=none cterm=reverse
    hi CursorLine             ctermfg=none ctermbg=none cterm=underline
    hi CursorLineNr           ctermfg=3    ctermbg=none cterm=none
    hi Debug                  ctermfg=1    ctermbg=none cterm=none
    hi Define                 ctermfg=6    ctermbg=none cterm=none
    hi Delimiter              ctermfg=5    ctermbg=none cterm=none
    hi DiffAdd                ctermfg=2    ctermbg=0    cterm=reverse
    hi DiffChange             ctermfg=6    ctermbg=0    cterm=reverse
    hi DiffDelete             ctermfg=1    ctermbg=0    cterm=reverse
    hi DiffText               ctermfg=3    ctermbg=0    cterm=reverse
    hi Directory              ctermfg=2    ctermbg=none cterm=bold
    hi EndOfBuffer            ctermfg=0    ctermbg=none cterm=none
    hi Error                  ctermfg=1    ctermbg=0    cterm=bold,reverse
    hi Error                  ctermfg=1    ctermbg=0    cterm=reverse
    hi ErrorMsg               ctermfg=0    ctermbg=1    cterm=none
    hi Exception              ctermfg=1    ctermbg=none cterm=none
    hi Float                  ctermfg=5    ctermbg=none cterm=none
    hi FoldColumn             ctermfg=7    ctermbg=none cterm=none
    hi Folded                 ctermfg=7    ctermbg=none cterm=italic
    hi Function               ctermfg=2    ctermbg=none cterm=bold
    hi Identifier             ctermfg=4    ctermbg=none cterm=none
    hi Ignore                 ctermfg=fg   ctermbg=none cterm=none
    hi Include                ctermfg=6    ctermbg=none cterm=none
    hi IncSearch              ctermfg=5    ctermbg=0    cterm=reverse
    hi Keyword                ctermfg=1    ctermbg=none cterm=none
    hi Label                  ctermfg=1    ctermbg=none cterm=none
    hi LineNr                 ctermfg=7    ctermbg=none cterm=none
    hi Macro                  ctermfg=6    ctermbg=none cterm=none
    hi MatchParen             ctermfg=7    ctermbg=none cterm=bold,underline
    hi ModeMsg                ctermfg=3    ctermbg=none cterm=bold
    hi MoreMsg                ctermfg=3    ctermbg=none cterm=bold
    hi NonText                ctermfg=7    ctermbg=none cterm=none
    hi Number                 ctermfg=5    ctermbg=none cterm=none
    hi Operator               ctermfg=6    ctermbg=none cterm=none
    hi Pmenu                  ctermfg=7    ctermbg=7    cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=7    cterm=none
    hi PmenuSel               ctermfg=0    ctermbg=4    cterm=none
    hi PmenuThumb             ctermfg=none ctermbg=4    cterm=none
    hi PreCondit              ctermfg=6    ctermbg=none cterm=none
    hi PreProc                ctermfg=6    ctermbg=none cterm=none
    hi Question               ctermfg=5    ctermbg=none cterm=bold
    hi Repeat                 ctermfg=1    ctermbg=none cterm=none
    hi Search                 ctermfg=3    ctermbg=0    cterm=reverse
    hi SignColumn             ctermfg=7    ctermbg=none cterm=none
    hi SpecialChar            ctermfg=1    ctermbg=none cterm=none
    hi SpecialComment         ctermfg=1    ctermbg=none cterm=none
    hi Special                ctermfg=5    ctermbg=none cterm=italic
    hi SpecialKey             ctermfg=7    ctermbg=none cterm=none
    hi SpellBad               ctermfg=1    ctermbg=none cterm=italic,underline
    hi SpellCap               ctermfg=4    ctermbg=none cterm=italic,underline
    hi SpellLocal             ctermfg=6    ctermbg=none cterm=italic,underline
    hi SpellRare              ctermfg=5    ctermbg=none cterm=italic,underline
    hi Statement              ctermfg=1    ctermbg=none cterm=none
    hi StatusLine             ctermfg=7    ctermbg=0    cterm=bold,reverse
    hi StatusLineNC           ctermfg=7    ctermbg=0    cterm=reverse
    hi StorageClass           ctermfg=5    ctermbg=none cterm=none
    hi String                 ctermfg=2    ctermbg=none cterm=italic
    hi Structure              ctermfg=6    ctermbg=none cterm=none
    hi TabLine                ctermfg=0    ctermbg=7    cterm=none
    hi TabLineFill            ctermfg=0    ctermbg=7    cterm=none
    hi TabLineSel             ctermfg=7    ctermbg=0    cterm=underline
    hi Title                  ctermfg=2    ctermbg=none cterm=bold
    hi Todo                   ctermfg=fg   ctermbg=0    cterm=bold,italic
    hi ToolbarButton          ctermfg=0    ctermbg=7    cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=7    cterm=none
    hi Type                   ctermfg=3    ctermbg=none cterm=none
    hi Typedef                ctermfg=3    ctermbg=none cterm=none
    hi Underlined             ctermfg=4    ctermbg=none cterm=underline
    hi VertSplit              ctermfg=0    ctermbg=7    cterm=none
    hi Visual                 ctermfg=0    ctermbg=7    cterm=none
    hi WarningMsg             ctermfg=1    ctermbg=none cterm=bold
    hi WildMenu               ctermfg=4    ctermbg=7    cterm=bold
    if !s:italics
      hi Comment                                        cterm=none
      hi Folded                                         cterm=none
      hi SpellBad                                       cterm=underline
      hi SpellCap                                       cterm=underline
      hi SpellLocal                                     cterm=underline
      hi SpellRare                                      cterm=underline
      hi Special                                        cterm=none
      hi String                                         cterm=none
      hi Todo                                           cterm=bold
    endif
    hi NormalMode             ctermfg=7    ctermbg=0    cterm=reverse
    hi InsertMode             ctermfg=4    ctermbg=0    cterm=reverse
    hi ReplaceMode            ctermfg=6    ctermbg=0    cterm=reverse
    hi VisualMode             ctermfg=5    ctermbg=0    cterm=reverse
    hi CommandMode            ctermfg=5    ctermbg=0    cterm=reverse
    hi Warnings               ctermfg=5    ctermbg=0    cterm=reverse
    hi Terminal               ctermfg=7    ctermbg=0    cterm=none
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=0    ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=0    ctermbg=0    cterm=none
  endif
  hi Boolean                  ctermfg=5    ctermbg=none cterm=none
  hi Character                ctermfg=5    ctermbg=none cterm=none
  hi ColorColumn              ctermfg=7    ctermbg=0    cterm=none
  hi Comment                  ctermfg=0    ctermbg=none cterm=italic
  hi Conceal                  ctermfg=4    ctermbg=none cterm=none
  hi Conditional              ctermfg=1    ctermbg=none cterm=none
  hi Constant                 ctermfg=5    ctermbg=none cterm=none
  hi Cursor                   ctermfg=none ctermbg=none cterm=reverse
  hi CursorIM                 ctermfg=none ctermbg=none cterm=reverse
  hi CursorLine               ctermfg=none ctermbg=none cterm=underline
  hi CursorLineNr             ctermfg=3    ctermbg=none cterm=none
  hi Debug                    ctermfg=1    ctermbg=none cterm=none
  hi Define                   ctermfg=6    ctermbg=none cterm=none
  hi Delimiter                ctermfg=5    ctermbg=none cterm=none
  hi DiffAdd                  ctermfg=2    ctermbg=7    cterm=reverse
  hi DiffChange               ctermfg=6    ctermbg=7    cterm=reverse
  hi DiffDelete               ctermfg=1    ctermbg=7    cterm=reverse
  hi DiffText                 ctermfg=3    ctermbg=7    cterm=reverse
  hi Directory                ctermfg=2    ctermbg=none cterm=bold
  hi EndOfBuffer              ctermfg=7    ctermbg=none cterm=none
  hi Error                    ctermfg=1    ctermbg=7    cterm=bold,reverse
  hi Error                    ctermfg=1    ctermbg=7    cterm=reverse
  hi ErrorMsg                 ctermfg=7    ctermbg=1    cterm=none
  hi Exception                ctermfg=1    ctermbg=none cterm=none
  hi Float                    ctermfg=5    ctermbg=none cterm=none
  hi FoldColumn               ctermfg=0    ctermbg=none cterm=none
  hi Folded                   ctermfg=0    ctermbg=none cterm=italic
  hi Function                 ctermfg=2    ctermbg=none cterm=bold
  hi Identifier               ctermfg=4    ctermbg=none cterm=none
  hi Ignore                   ctermfg=fg   ctermbg=none cterm=none
  hi Include                  ctermfg=6    ctermbg=none cterm=none
  hi IncSearch                ctermfg=5    ctermbg=7    cterm=reverse
  hi Keyword                  ctermfg=1    ctermbg=none cterm=none
  hi Label                    ctermfg=1    ctermbg=none cterm=none
  hi LineNr                   ctermfg=0    ctermbg=none cterm=none
  hi Macro                    ctermfg=6    ctermbg=none cterm=none
  hi MatchParen               ctermfg=0    ctermbg=none cterm=bold,underline
  hi ModeMsg                  ctermfg=3    ctermbg=none cterm=bold
  hi MoreMsg                  ctermfg=3    ctermbg=none cterm=bold
  hi NonText                  ctermfg=0    ctermbg=none cterm=none
  hi Normal                   ctermfg=0    ctermbg=none cterm=none
  hi Number                   ctermfg=5    ctermbg=none cterm=none
  hi Operator                 ctermfg=6    ctermbg=none cterm=none
  hi Pmenu                    ctermfg=0    ctermbg=7    cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=7    cterm=none
  hi PmenuSel                 ctermfg=7    ctermbg=4    cterm=none
  hi PmenuThumb               ctermfg=none ctermbg=4    cterm=none
  hi PreCondit                ctermfg=6    ctermbg=none cterm=none
  hi PreProc                  ctermfg=6    ctermbg=none cterm=none
  hi Question                 ctermfg=5    ctermbg=none cterm=bold
  hi Repeat                   ctermfg=1    ctermbg=none cterm=none
  hi Search                   ctermfg=3    ctermbg=7    cterm=reverse
  hi SignColumn               ctermfg=0    ctermbg=none cterm=none
  hi SpecialChar              ctermfg=1    ctermbg=none cterm=none
  hi SpecialComment           ctermfg=1    ctermbg=none cterm=none
  hi Special                  ctermfg=5    ctermbg=none cterm=italic
  hi SpecialKey               ctermfg=0    ctermbg=none cterm=none
  hi SpellBad                 ctermfg=1    ctermbg=none cterm=italic,underline
  hi SpellCap                 ctermfg=4    ctermbg=none cterm=italic,underline
  hi SpellLocal               ctermfg=6    ctermbg=none cterm=italic,underline
  hi SpellRare                ctermfg=5    ctermbg=none cterm=italic,underline
  hi Statement                ctermfg=1    ctermbg=none cterm=none
  hi StatusLine               ctermfg=0    ctermbg=7    cterm=bold,reverse
  hi StatusLineNC             ctermfg=0    ctermbg=7    cterm=reverse
  hi StorageClass             ctermfg=5    ctermbg=none cterm=none
  hi String                   ctermfg=2    ctermbg=none cterm=italic
  hi Structure                ctermfg=6    ctermbg=none cterm=none
  hi TabLine                  ctermfg=7    ctermbg=0    cterm=none
  hi TabLineFill              ctermfg=7    ctermbg=0    cterm=none
  hi TabLineSel               ctermfg=0    ctermbg=7    cterm=underline
  hi Title                    ctermfg=2    ctermbg=none cterm=bold
  hi Todo                     ctermfg=fg   ctermbg=7    cterm=bold,italic
  hi ToolbarButton            ctermfg=7    ctermbg=0    cterm=bold
  hi ToolbarLine              ctermfg=none ctermbg=0    cterm=none
  hi Type                     ctermfg=3    ctermbg=none cterm=none
  hi Typedef                  ctermfg=3    ctermbg=none cterm=none
  hi Underlined               ctermfg=4    ctermbg=none cterm=underline
  hi VertSplit                ctermfg=7    ctermbg=0    cterm=none
  hi Visual                   ctermfg=7    ctermbg=0    cterm=none
  hi WarningMsg               ctermfg=1    ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=4    ctermbg=7    cterm=bold
  if !s:italics
    hi Comment                                          cterm=none
    hi Folded                                           cterm=none
    hi SpellBad                                         cterm=underline
    hi SpellCap                                         cterm=underline
    hi SpellLocal                                       cterm=underline
    hi SpellRare                                        cterm=underline
    hi Special                                          cterm=none
    hi String                                           cterm=none
    hi Todo                                             cterm=bold
  endif
  hi NormalMode               ctermfg=0    ctermbg=7    cterm=reverse
  hi InsertMode               ctermfg=4    ctermbg=7    cterm=reverse
  hi ReplaceMode              ctermfg=6    ctermbg=7    cterm=reverse
  hi VisualMode               ctermfg=5    ctermbg=7    cterm=reverse
  hi CommandMode              ctermfg=5    ctermbg=7    cterm=reverse
  hi Warnings                 ctermfg=5    ctermbg=7    cterm=reverse
  hi Terminal                 ctermfg=0    ctermbg=7    cterm=none
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 2
  hi ColorColumn              term=reverse
  hi Comment                  term=italic
  hi Conceal                  term=none
  hi Constant                 term=bold,italic
  hi CursorColumn             term=reverse
  hi CursorIM                 term=none
  hi CursorLineNr             term=bold,italic,reverse,underline
  hi CursorLine               term=underline
  hi Cursor                   term=none
  hi DiffAdd                  term=reverse,underline
  hi DiffChange               term=reverse,underline
  hi DiffDelete               term=reverse,underline
  hi DiffText                 term=bold,reverse,underline
  hi Directory                term=none
  hi EndOfBuffer              term=none
  hi ErrorMsg                 term=bold,italic,reverse
  hi Error                    term=reverse
  hi FoldColumn               term=reverse
  hi Folded                   term=italic,reverse,underline
  hi Identifier               term=italic
  hi Ignore                   term=none
  hi IncSearch                term=bold,italic,reverse
  hi LineNr                   term=reverse
  hi MatchParen               term=bold,underline
  hi ModeMsg                  term=none
  hi MoreMsg                  term=none
  hi NonText                  term=none
  hi Normal                   term=none
  hi PmenuSbar                term=none
  hi PmenuSel                 term=none
  hi Pmenu                    term=reverse
  hi PmenuThumb               term=none
  hi PreProc                  term=italic
  hi Question                 term=standout
  hi Search                   term=italic,underline
  hi SignColumn               term=reverse
  hi SpecialKey               term=bold
  hi Special                  term=bold,italic
  hi SpellBad                 term=italic,underline
  hi SpellCap                 term=italic,underline
  hi SpellLocal               term=italic,underline
  hi SpellRare                term=italic,underline
  hi Statement                term=bold
  hi StatusLineNC             term=reverse
  hi StatusLine               term=bold,reverse
  hi TabLineFill              term=reverse,underline
  hi TabLineSel               term=bold
  hi TabLine                  term=italic,reverse,underline
  hi Title                    term=bold
  hi Todo                     term=bold,underline
  hi ToolbarButton            term=bold,reverse
  hi ToolbarLine              term=reverse
  hi Type                     term=bold
  hi Underlined               term=underline
  hi VertSplit                term=reverse
  hi VisualNOS                term=none
  hi Visual                   term=reverse
  hi WarningMsg               term=standout
  hi WildMenu                 term=bold
  if !s:italics
    hi Comment                term=none
    hi Constant               term=bold
    hi CursorLineNr           term=bold,reverse,underline
    hi ErrorMsg               term=bold,reverse
    hi Folded                 term=reverse,underline
    hi Identifier             term=none
    hi IncSearch              term=bold,reverse
    hi PreProc                term=none
    hi Search                 term=underline
    hi Special                term=bold
    hi SpellBad               term=underline
    hi SpellCap               term=underline
    hi SpellLocal             term=underline
    hi SpellRare              term=underline
    hi TabLine                term=reverse,underline
  endif
  unlet s:t_Co s:italics
  finish
endif

