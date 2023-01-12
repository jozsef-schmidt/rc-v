hi clear
let g:colors_name = 'cs02'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m')

let s:italics = s:italics && get(g:, 'italics', 1)
hi! link Boolean              Constant
hi! link Character            Constant
hi! link Conditional          Statement
hi! link Debug                Special
hi! link Define               PreProc
hi! link Delimiter            Special
hi! link Exception            Statement
hi! link Float                Constant
hi! link Function             Identifier
hi! link Include              PreProc
hi! link Keyword              Statement
hi! link Label                Statement
hi! link Macro                PreProc
hi! link Number               Constant
hi! link Operator             Statement
hi! link PreCondit            PreProc
hi! link QuickFixLine         Search
hi! link Repeat               Statement
hi! link SpecialChar          Special
hi! link SpecialComment       Special
hi! link StatusLineTerm       StatusLine
hi! link StatusLineTermNC     StatusLineNC
hi! link StorageClass         Type
hi! link String               Constant
hi! link Structure            Type
hi! link Tag                  Special
hi! link Typedef              Type

if s:t_Co >= 256
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=247  ctermbg=none cterm=none
      hi CursorLineNr         ctermfg=246  ctermbg=none cterm=bold
      hi FoldColumn           ctermfg=fg   ctermbg=none cterm=none
      hi Folded               ctermfg=fg   ctermbg=none cterm=bold
      hi LineNr               ctermfg=66   ctermbg=none cterm=none
      hi Terminal             ctermfg=fg   ctermbg=none cterm=none
      hi ToolbarButton        ctermfg=247  ctermbg=none cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=none cterm=none
    else
      hi Normal               ctermfg=247  ctermbg=235  cterm=none
      if !has('patch-8.0.0616')
        set background=dark
      endif
      hi CursorLineNr         ctermfg=246  ctermbg=236  cterm=bold
      hi FoldColumn           ctermfg=246  ctermbg=236  cterm=none
      hi Folded               ctermfg=246  ctermbg=236  cterm=bold
      hi LineNr               ctermfg=66   ctermbg=236  cterm=none
      hi Terminal             ctermfg=fg   ctermbg=235  cterm=none
      hi ToolbarButton        ctermfg=247  ctermbg=236  cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=236  cterm=none
    endif
    hi ColorColumn            ctermfg=none ctermbg=236  cterm=none
    hi CommandMode            ctermfg=162  ctermbg=230  cterm=reverse
    hi Comment                ctermfg=242  ctermbg=none cterm=italic
    hi Conceal                ctermfg=32   ctermbg=none cterm=none
    hi Constant               ctermfg=37   ctermbg=none cterm=none
    hi CursorColumn           ctermfg=none ctermbg=236  cterm=none
    hi Cursor                 ctermfg=235  ctermbg=246  cterm=none
    hi CursorIM               ctermfg=none ctermbg=fg   cterm=none
    hi CursorLine             ctermfg=none ctermbg=236  cterm=none
    hi DiffAdd                ctermfg=106  ctermbg=236  cterm=none
    hi DiffChange             ctermfg=136  ctermbg=236  cterm=none
    hi DiffDelete             ctermfg=160  ctermbg=236  cterm=bold
    hi DiffText               ctermfg=32   ctermbg=236  cterm=none
    hi Directory              ctermfg=32   ctermbg=none cterm=none
    hi EndOfBuffer            ctermfg=none ctermbg=none cterm=none
    hi Error                  ctermfg=160  ctermbg=230  cterm=bold,reverse
    hi ErrorMsg               ctermfg=160  ctermbg=230  cterm=reverse
    hi Identifier             ctermfg=32   ctermbg=none cterm=none
    hi Ignore                 ctermfg=none ctermbg=none cterm=none
    hi IncSearch              ctermfg=166  ctermbg=none cterm=standout
    hi InsertMode             ctermfg=37   ctermbg=230  cterm=reverse
    hi MatchParen             ctermfg=230  ctermbg=236  cterm=bold
    hi ModeMsg                ctermfg=32   ctermbg=none cterm=none
    hi MoreMsg                ctermfg=32   ctermbg=none cterm=none
    hi NonText                ctermfg=66   ctermbg=none cterm=bold
    hi NormalMode             ctermfg=246  ctermbg=230  cterm=reverse
    hi Pmenu                  ctermfg=247  ctermbg=236  cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=242  cterm=none
    hi PmenuSel               ctermfg=254  ctermbg=66   cterm=none
    hi PmenuThumb             ctermfg=none ctermbg=246  cterm=none
    hi PreProc                ctermfg=166  ctermbg=none cterm=none
    hi Question               ctermfg=37   ctermbg=none cterm=bold
    hi ReplaceMode            ctermfg=166  ctermbg=230  cterm=reverse
    hi Search                 ctermfg=136  ctermbg=none cterm=reverse
    hi SignColumn             ctermfg=246  ctermbg=none cterm=none
    hi Special                ctermfg=166  ctermbg=none cterm=none
    hi SpecialKey             ctermfg=66   ctermbg=236  cterm=bold
    hi SpellBad               ctermfg=61   ctermbg=none cterm=underline
    hi SpellCap               ctermfg=61   ctermbg=none cterm=underline
    hi SpellLocal             ctermfg=136  ctermbg=none cterm=underline
    hi SpellRare              ctermfg=37   ctermbg=none cterm=underline
    hi Statement              ctermfg=106  ctermbg=none cterm=none
    hi StatusLine             ctermfg=246  ctermbg=236  cterm=reverse
    hi StatusLineNC           ctermfg=242  ctermbg=236  cterm=reverse
    hi TabLine                ctermfg=242  ctermbg=236  cterm=reverse
    hi TabLineFill            ctermfg=242  ctermbg=236  cterm=reverse
    hi TabLineSel             ctermfg=246  ctermbg=236  cterm=reverse
    hi Title                  ctermfg=166  ctermbg=none cterm=bold
    hi Todo                   ctermfg=162  ctermbg=none cterm=bold
    hi Type                   ctermfg=136  ctermbg=none cterm=none
    hi Underlined             ctermfg=61   ctermbg=none cterm=none
    hi VertSplit              ctermfg=236  ctermbg=242  cterm=none
    hi Visual                 ctermfg=242  ctermbg=235  cterm=reverse
    hi VisualMode             ctermfg=162  ctermbg=230  cterm=reverse
    hi VisualNOS              ctermfg=none ctermbg=236  cterm=reverse
    hi WarningMsg             ctermfg=166  ctermbg=none cterm=bold
    hi WildMenu               ctermfg=254  ctermbg=236  cterm=reverse
    if !s:italics
      hi Comment                                        cterm=none
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=242  ctermbg=none cterm=none
    hi CursorLineNr           ctermfg=66   ctermbg=none cterm=bold
    hi FoldColumn             ctermfg=66   ctermbg=none cterm=none
    hi Folded                 ctermfg=66   ctermbg=none cterm=bold
    hi LineNr                 ctermfg=246  ctermbg=none cterm=none
    hi Terminal               ctermfg=fg   ctermbg=none cterm=none
    hi ToolbarButton          ctermfg=242  ctermbg=none cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=242  ctermbg=230  cterm=none
    hi CursorLineNr           ctermfg=66   ctermbg=254  cterm=bold
    hi FoldColumn             ctermfg=66   ctermbg=254  cterm=none
    hi Folded                 ctermfg=66   ctermbg=254  cterm=bold
    hi LineNr                 ctermfg=246  ctermbg=254  cterm=none
    hi Terminal               ctermfg=fg   ctermbg=230  cterm=none
    hi ToolbarButton          ctermfg=242  ctermbg=254  cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=254  cterm=none
  endif
  hi ColorColumn              ctermfg=none ctermbg=254  cterm=none
  hi CommandMode              ctermfg=162  ctermbg=230  cterm=reverse
  hi Comment                  ctermfg=247  ctermbg=none cterm=italic
  hi Conceal                  ctermfg=32   ctermbg=none cterm=none
  hi Constant                 ctermfg=37   ctermbg=none cterm=none
  hi CursorColumn             ctermfg=none ctermbg=254  cterm=none
  hi Cursor                   ctermfg=230  ctermbg=66   cterm=none
  hi CursorIM                 ctermfg=none ctermbg=fg   cterm=none
  hi CursorLine               ctermfg=none ctermbg=254  cterm=none
  hi DiffAdd                  ctermfg=106  ctermbg=254  cterm=none
  hi DiffChange               ctermfg=136  ctermbg=254  cterm=none
  hi DiffDelete               ctermfg=160  ctermbg=254  cterm=bold
  hi DiffText                 ctermfg=32   ctermbg=254  cterm=none
  hi Directory                ctermfg=32   ctermbg=none cterm=none
  hi EndOfBuffer              ctermfg=none ctermbg=none cterm=none
  hi Error                    ctermfg=160  ctermbg=230  cterm=bold,reverse
  hi ErrorMsg                 ctermfg=160  ctermbg=230  cterm=reverse
  hi Identifier               ctermfg=32   ctermbg=none cterm=none
  hi Ignore                   ctermfg=none ctermbg=none cterm=none
  hi IncSearch                ctermfg=166  ctermbg=none cterm=standout
  hi InsertMode               ctermfg=37   ctermbg=230  cterm=reverse
  hi MatchParen               ctermfg=160  ctermbg=254  cterm=bold,underline
  hi ModeMsg                  ctermfg=32   ctermbg=none cterm=none
  hi MoreMsg                  ctermfg=32   ctermbg=none cterm=none
  hi NonText                  ctermfg=246  ctermbg=none cterm=bold
  hi NormalMode               ctermfg=242  ctermbg=230  cterm=reverse
  hi Pmenu                    ctermfg=242  ctermbg=254  cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=247  cterm=none
  hi PmenuSel                 ctermfg=254  ctermbg=246  cterm=none
  hi PmenuThumb               ctermfg=none ctermbg=66   cterm=none
  hi PreProc                  ctermfg=166  ctermbg=none cterm=none
  hi Question                 ctermfg=37   ctermbg=none cterm=bold
  hi ReplaceMode              ctermfg=166  ctermbg=230  cterm=reverse
  hi Search                   ctermfg=136  ctermbg=none cterm=reverse
  hi SignColumn               ctermfg=66   ctermbg=none cterm=none
  hi Special                  ctermfg=166  ctermbg=none cterm=none
  hi SpecialKey               ctermfg=246  ctermbg=254  cterm=bold
  hi SpellBad                 ctermfg=162  ctermbg=none cterm=underline
  hi SpellCap                 ctermfg=162  ctermbg=none cterm=underline
  hi SpellLocal               ctermfg=136  ctermbg=none cterm=underline
  hi SpellRare                ctermfg=37   ctermbg=none cterm=underline
  hi Statement                ctermfg=106  ctermbg=none cterm=none
  hi StatusLine               ctermfg=242  ctermbg=254  cterm=reverse
  hi StatusLineNC             ctermfg=246  ctermbg=254  cterm=reverse
  hi TabLine                  ctermfg=246  ctermbg=254  cterm=reverse
  hi TabLineFill              ctermfg=246  ctermbg=254  cterm=reverse
  hi TabLineSel               ctermfg=242  ctermbg=254  cterm=reverse
  hi Title                    ctermfg=166  ctermbg=none cterm=bold
  hi Todo                     ctermfg=162  ctermbg=none cterm=bold
  hi Type                     ctermfg=136  ctermbg=none cterm=none
  hi Underlined               ctermfg=61   ctermbg=none cterm=none
  hi VertSplit                ctermfg=242  ctermbg=247  cterm=none
  hi Visual                   ctermfg=247  ctermbg=230  cterm=reverse
  hi VisualMode               ctermfg=162  ctermbg=230  cterm=reverse
  hi VisualNOS                ctermfg=none ctermbg=254  cterm=reverse
  hi WarningMsg               ctermfg=166  ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=236  ctermbg=254  cterm=reverse
  if !s:italics
    hi Comment                                          cterm=none
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=14   ctermbg=none cterm=none
      hi CursorLineNr         ctermfg=12   ctermbg=none cterm=bold
      hi FoldColumn           ctermfg=fg   ctermbg=none cterm=none
      hi Folded               ctermfg=fg   ctermbg=none cterm=bold
      hi LineNr               ctermfg=11   ctermbg=none cterm=none
      hi Terminal             ctermfg=fg   ctermbg=none cterm=none
      hi ToolbarButton        ctermfg=14   ctermbg=none cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=none cterm=none
    else
      hi Normal               ctermfg=14   ctermbg=8    cterm=none
      hi CursorLineNr         ctermfg=12   ctermbg=0    cterm=bold
      hi FoldColumn           ctermfg=12   ctermbg=0    cterm=none
      hi Folded               ctermfg=12   ctermbg=0    cterm=bold
      hi LineNr               ctermfg=11   ctermbg=0    cterm=none
      hi Terminal             ctermfg=fg   ctermbg=8    cterm=none
      hi ToolbarButton        ctermfg=14   ctermbg=0    cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=0    cterm=none
    endif
    hi ColorColumn            ctermfg=none ctermbg=0    cterm=none
    hi CommandMode            ctermfg=5    ctermbg=15   cterm=reverse
    hi Comment                ctermfg=10   ctermbg=none cterm=italic
    hi Conceal                ctermfg=4    ctermbg=none cterm=none
    hi Constant               ctermfg=6    ctermbg=none cterm=none
    hi CursorColumn           ctermfg=none ctermbg=0    cterm=none
    hi Cursor                 ctermfg=8    ctermbg=12   cterm=none
    hi CursorIM               ctermfg=none ctermbg=fg   cterm=none
    hi CursorLine             ctermfg=none ctermbg=0    cterm=none
    hi DiffAdd                ctermfg=2    ctermbg=0    cterm=none
    hi DiffChange             ctermfg=3    ctermbg=0    cterm=none
    hi DiffDelete             ctermfg=1    ctermbg=0    cterm=bold
    hi DiffText               ctermfg=4    ctermbg=0    cterm=none
    hi Directory              ctermfg=4    ctermbg=none cterm=none
    hi EndOfBuffer            ctermfg=none ctermbg=none cterm=none
    hi Error                  ctermfg=1    ctermbg=15   cterm=bold,reverse
    hi ErrorMsg               ctermfg=1    ctermbg=15   cterm=reverse
    hi Identifier             ctermfg=4    ctermbg=none cterm=none
    hi Ignore                 ctermfg=none ctermbg=none cterm=none
    hi IncSearch              ctermfg=9    ctermbg=none cterm=standout
    hi InsertMode             ctermfg=6    ctermbg=15   cterm=reverse
    hi MatchParen             ctermfg=15   ctermbg=0    cterm=bold
    hi ModeMsg                ctermfg=4    ctermbg=none cterm=none
    hi MoreMsg                ctermfg=4    ctermbg=none cterm=none
    hi NonText                ctermfg=11   ctermbg=none cterm=bold
    hi NormalMode             ctermfg=12   ctermbg=15   cterm=reverse
    hi Pmenu                  ctermfg=14   ctermbg=0    cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=10   cterm=none
    hi PmenuSel               ctermfg=7    ctermbg=11   cterm=none
    hi PmenuThumb             ctermfg=none ctermbg=12   cterm=none
    hi PreProc                ctermfg=9    ctermbg=none cterm=none
    hi Question               ctermfg=6    ctermbg=none cterm=bold
    hi ReplaceMode            ctermfg=9    ctermbg=15   cterm=reverse
    hi Search                 ctermfg=3    ctermbg=none cterm=reverse
    hi SignColumn             ctermfg=12   ctermbg=none cterm=none
    hi Special                ctermfg=9    ctermbg=none cterm=none
    hi SpecialKey             ctermfg=11   ctermbg=0    cterm=bold
    hi SpellBad               ctermfg=13   ctermbg=none cterm=underline
    hi SpellCap               ctermfg=13   ctermbg=none cterm=underline
    hi SpellLocal             ctermfg=3    ctermbg=none cterm=underline
    hi SpellRare              ctermfg=6    ctermbg=none cterm=underline
    hi Statement              ctermfg=2    ctermbg=none cterm=none
    hi StatusLine             ctermfg=12   ctermbg=0    cterm=reverse
    hi StatusLineNC           ctermfg=10   ctermbg=0    cterm=reverse
    hi TabLine                ctermfg=10   ctermbg=0    cterm=reverse
    hi TabLineFill            ctermfg=10   ctermbg=0    cterm=reverse
    hi TabLineSel             ctermfg=12   ctermbg=0    cterm=reverse
    hi Title                  ctermfg=9    ctermbg=none cterm=bold
    hi Todo                   ctermfg=5    ctermbg=none cterm=bold
    hi Type                   ctermfg=3    ctermbg=none cterm=none
    hi Underlined             ctermfg=13   ctermbg=none cterm=none
    hi VertSplit              ctermfg=0    ctermbg=10   cterm=none
    hi Visual                 ctermfg=10   ctermbg=8    cterm=reverse
    hi VisualMode             ctermfg=5    ctermbg=15   cterm=reverse
    hi VisualNOS              ctermfg=none ctermbg=0    cterm=reverse
    hi WarningMsg             ctermfg=9    ctermbg=none cterm=bold
    hi WildMenu               ctermfg=7    ctermbg=0    cterm=reverse
    if !s:italics
      hi Comment                                        cterm=none
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=10   ctermbg=none cterm=none
    hi CursorLineNr           ctermfg=11   ctermbg=none cterm=bold
    hi FoldColumn             ctermfg=11   ctermbg=none cterm=none
    hi Folded                 ctermfg=11   ctermbg=none cterm=bold
    hi LineNr                 ctermfg=12   ctermbg=none cterm=none
    hi Terminal               ctermfg=fg   ctermbg=none cterm=none
    hi ToolbarButton          ctermfg=10   ctermbg=none cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=10   ctermbg=15   cterm=none
    hi CursorLineNr           ctermfg=11   ctermbg=7    cterm=bold
    hi FoldColumn             ctermfg=11   ctermbg=7    cterm=none
    hi Folded                 ctermfg=11   ctermbg=7    cterm=bold
    hi LineNr                 ctermfg=12   ctermbg=7    cterm=none
    hi Terminal               ctermfg=fg   ctermbg=15   cterm=none
    hi ToolbarButton          ctermfg=10   ctermbg=7    cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=7    cterm=none
  endif
  hi ColorColumn              ctermfg=none ctermbg=7    cterm=none
  hi CommandMode              ctermfg=5    ctermbg=15   cterm=reverse
  hi Comment                  ctermfg=14   ctermbg=none cterm=italic
  hi Conceal                  ctermfg=4    ctermbg=none cterm=none
  hi Constant                 ctermfg=6    ctermbg=none cterm=none
  hi CursorColumn             ctermfg=none ctermbg=7    cterm=none
  hi Cursor                   ctermfg=15   ctermbg=11   cterm=none
  hi CursorIM                 ctermfg=none ctermbg=fg   cterm=none
  hi CursorLine               ctermfg=none ctermbg=7    cterm=none
  hi DiffAdd                  ctermfg=2    ctermbg=7    cterm=none
  hi DiffChange               ctermfg=3    ctermbg=7    cterm=none
  hi DiffDelete               ctermfg=1    ctermbg=7    cterm=bold
  hi DiffText                 ctermfg=4    ctermbg=7    cterm=none
  hi Directory                ctermfg=4    ctermbg=none cterm=none
  hi EndOfBuffer              ctermfg=none ctermbg=none cterm=none
  hi Error                    ctermfg=1    ctermbg=15   cterm=bold,reverse
  hi ErrorMsg                 ctermfg=1    ctermbg=15   cterm=reverse
  hi Identifier               ctermfg=4    ctermbg=none cterm=none
  hi Ignore                   ctermfg=none ctermbg=none cterm=none
  hi IncSearch                ctermfg=9    ctermbg=none cterm=standout
  hi InsertMode               ctermfg=6    ctermbg=15   cterm=reverse
  hi MatchParen               ctermfg=1    ctermbg=7    cterm=bold,underline
  hi ModeMsg                  ctermfg=4    ctermbg=none cterm=none
  hi MoreMsg                  ctermfg=4    ctermbg=none cterm=none
  hi NonText                  ctermfg=12   ctermbg=none cterm=bold
  hi NormalMode               ctermfg=10   ctermbg=15   cterm=reverse
  hi Pmenu                    ctermfg=10   ctermbg=7    cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=14   cterm=none
  hi PmenuSel                 ctermfg=7    ctermbg=12   cterm=none
  hi PmenuThumb               ctermfg=none ctermbg=11   cterm=none
  hi PreProc                  ctermfg=9    ctermbg=none cterm=none
  hi Question                 ctermfg=6    ctermbg=none cterm=bold
  hi ReplaceMode              ctermfg=9    ctermbg=15   cterm=reverse
  hi Search                   ctermfg=3    ctermbg=none cterm=reverse
  hi SignColumn               ctermfg=11   ctermbg=none cterm=none
  hi Special                  ctermfg=9    ctermbg=none cterm=none
  hi SpecialKey               ctermfg=12   ctermbg=7    cterm=bold
  hi SpellBad                 ctermfg=5    ctermbg=none cterm=underline
  hi SpellCap                 ctermfg=5    ctermbg=none cterm=underline
  hi SpellLocal               ctermfg=3    ctermbg=none cterm=underline
  hi SpellRare                ctermfg=6    ctermbg=none cterm=underline
  hi Statement                ctermfg=2    ctermbg=none cterm=none
  hi StatusLine               ctermfg=10   ctermbg=7    cterm=reverse
  hi StatusLineNC             ctermfg=12   ctermbg=7    cterm=reverse
  hi TabLine                  ctermfg=12   ctermbg=7    cterm=reverse
  hi TabLineFill              ctermfg=12   ctermbg=7    cterm=reverse
  hi TabLineSel               ctermfg=10   ctermbg=7    cterm=reverse
  hi Title                    ctermfg=9    ctermbg=none cterm=bold
  hi Todo                     ctermfg=5    ctermbg=none cterm=bold
  hi Type                     ctermfg=3    ctermbg=none cterm=none
  hi Underlined               ctermfg=13   ctermbg=none cterm=none
  hi VertSplit                ctermfg=10   ctermbg=14   cterm=none
  hi Visual                   ctermfg=14   ctermbg=15   cterm=reverse
  hi VisualMode               ctermfg=5    ctermbg=15   cterm=reverse
  hi VisualNOS                ctermfg=none ctermbg=7    cterm=reverse
  hi WarningMsg               ctermfg=9    ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=0    ctermbg=7    cterm=reverse
  if !s:italics
    hi Comment                                          cterm=none
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 8
  " Dark background
  if &background ==# 'dark'
    if get(g:, 'transparent_background', 0)
      hi Normal               ctermfg=3    ctermbg=none cterm=none
      hi CursorLineNr         ctermfg=1    ctermbg=none cterm=bold
      hi FoldColumn           ctermfg=fg   ctermbg=none cterm=none
      hi Folded               ctermfg=fg   ctermbg=none cterm=bold
      hi LineNr               ctermfg=6    ctermbg=none cterm=none
      hi Terminal             ctermfg=fg   ctermbg=none cterm=none
      hi ToolbarButton        ctermfg=3    ctermbg=none cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=none cterm=none
    else
      hi Normal               ctermfg=3    ctermbg=0    cterm=none
      hi CursorLineNr         ctermfg=1    ctermbg=0    cterm=bold
      hi FoldColumn           ctermfg=1    ctermbg=0    cterm=none
      hi Folded               ctermfg=1    ctermbg=0    cterm=bold
      hi LineNr               ctermfg=6    ctermbg=0    cterm=none
      hi Terminal             ctermfg=fg   ctermbg=0    cterm=none
      hi ToolbarButton        ctermfg=3    ctermbg=0    cterm=bold
      hi ToolbarLine          ctermfg=none ctermbg=0    cterm=none
    endif
    hi ColorColumn            ctermfg=none ctermbg=0    cterm=none
    hi CommandMode            ctermfg=5    ctermbg=7    cterm=reverse
    hi Comment                ctermfg=2    ctermbg=none cterm=italic
    hi Conceal                ctermfg=4    ctermbg=none cterm=none
    hi Constant               ctermfg=6    ctermbg=none cterm=none
    hi CursorColumn           ctermfg=none ctermbg=0    cterm=none
    hi Cursor                 ctermfg=0    ctermbg=1    cterm=none
    hi CursorIM               ctermfg=none ctermbg=fg   cterm=none
    hi CursorLine             ctermfg=none ctermbg=0    cterm=none
    hi DiffAdd                ctermfg=2    ctermbg=0    cterm=none
    hi DiffChange             ctermfg=3    ctermbg=0    cterm=none
    hi DiffDelete             ctermfg=1    ctermbg=0    cterm=bold
    hi DiffText               ctermfg=4    ctermbg=0    cterm=none
    hi Directory              ctermfg=4    ctermbg=none cterm=none
    hi EndOfBuffer            ctermfg=none ctermbg=none cterm=none
    hi Error                  ctermfg=1    ctermbg=7    cterm=bold,reverse
    hi ErrorMsg               ctermfg=1    ctermbg=7    cterm=reverse
    hi Identifier             ctermfg=4    ctermbg=none cterm=none
    hi Ignore                 ctermfg=none ctermbg=none cterm=none
    hi IncSearch              ctermfg=4    ctermbg=none cterm=standout
    hi InsertMode             ctermfg=6    ctermbg=7    cterm=reverse
    hi MatchParen             ctermfg=7    ctermbg=0    cterm=bold
    hi ModeMsg                ctermfg=4    ctermbg=none cterm=none
    hi MoreMsg                ctermfg=4    ctermbg=none cterm=none
    hi NonText                ctermfg=6    ctermbg=none cterm=bold
    hi NormalMode             ctermfg=1    ctermbg=7    cterm=reverse
    hi Pmenu                  ctermfg=3    ctermbg=0    cterm=none
    hi PmenuSbar              ctermfg=none ctermbg=2    cterm=none
    hi PmenuSel               ctermfg=7    ctermbg=6    cterm=none
    hi PmenuThumb             ctermfg=none ctermbg=1    cterm=none
    hi PreProc                ctermfg=4    ctermbg=none cterm=none
    hi Question               ctermfg=6    ctermbg=none cterm=bold
    hi ReplaceMode            ctermfg=4    ctermbg=7    cterm=reverse
    hi Search                 ctermfg=3    ctermbg=none cterm=reverse
    hi SignColumn             ctermfg=1    ctermbg=none cterm=none
    hi Special                ctermfg=4    ctermbg=none cterm=none
    hi SpecialKey             ctermfg=6    ctermbg=0    cterm=bold
    hi SpellBad               ctermfg=5    ctermbg=none cterm=underline
    hi SpellCap               ctermfg=5    ctermbg=none cterm=underline
    hi SpellLocal             ctermfg=3    ctermbg=none cterm=underline
    hi SpellRare              ctermfg=6    ctermbg=none cterm=underline
    hi Statement              ctermfg=2    ctermbg=none cterm=none
    hi StatusLine             ctermfg=1    ctermbg=0    cterm=reverse
    hi StatusLineNC           ctermfg=2    ctermbg=0    cterm=reverse
    hi TabLine                ctermfg=2    ctermbg=0    cterm=reverse
    hi TabLineFill            ctermfg=2    ctermbg=0    cterm=reverse
    hi TabLineSel             ctermfg=1    ctermbg=0    cterm=reverse
    hi Title                  ctermfg=4    ctermbg=none cterm=bold
    hi Todo                   ctermfg=5    ctermbg=none cterm=bold
    hi Type                   ctermfg=3    ctermbg=none cterm=none
    hi Underlined             ctermfg=5    ctermbg=none cterm=none
    hi VertSplit              ctermfg=0    ctermbg=2    cterm=none
    hi Visual                 ctermfg=2    ctermbg=0    cterm=reverse
    hi VisualMode             ctermfg=5    ctermbg=7    cterm=reverse
    hi VisualNOS              ctermfg=none ctermbg=0    cterm=reverse
    hi WarningMsg             ctermfg=4    ctermbg=none cterm=bold
    hi WildMenu               ctermfg=7    ctermbg=0    cterm=reverse
    if !s:italics
      hi Comment                                        cterm=none
    endif
    unlet s:t_Co s:italics
    finish
  endif
  " Light background
  if get(g:, 'transparent_background', 0)
    hi Normal                 ctermfg=2    ctermbg=none cterm=none
    hi CursorLineNr           ctermfg=6    ctermbg=none cterm=bold
    hi FoldColumn             ctermfg=6    ctermbg=none cterm=none
    hi Folded                 ctermfg=6    ctermbg=none cterm=bold
    hi LineNr                 ctermfg=1    ctermbg=none cterm=none
    hi Terminal               ctermfg=fg   ctermbg=none cterm=none
    hi ToolbarButton          ctermfg=2    ctermbg=none cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=none cterm=none
  else
    hi Normal                 ctermfg=2    ctermbg=7    cterm=none
    hi CursorLineNr           ctermfg=6    ctermbg=7    cterm=bold
    hi FoldColumn             ctermfg=6    ctermbg=7    cterm=none
    hi Folded                 ctermfg=6    ctermbg=7    cterm=bold
    hi LineNr                 ctermfg=1    ctermbg=7    cterm=none
    hi Terminal               ctermfg=fg   ctermbg=7    cterm=none
    hi ToolbarButton          ctermfg=2    ctermbg=7    cterm=bold
    hi ToolbarLine            ctermfg=none ctermbg=7    cterm=none
  endif
  hi ColorColumn              ctermfg=none ctermbg=7    cterm=none
  hi CommandMode              ctermfg=5    ctermbg=7    cterm=reverse
  hi Comment                  ctermfg=3    ctermbg=none cterm=italic
  hi Conceal                  ctermfg=4    ctermbg=none cterm=none
  hi Constant                 ctermfg=6    ctermbg=none cterm=none
  hi CursorColumn             ctermfg=none ctermbg=7    cterm=none
  hi Cursor                   ctermfg=7    ctermbg=6    cterm=none
  hi CursorIM                 ctermfg=none ctermbg=fg   cterm=none
  hi CursorLine               ctermfg=none ctermbg=7    cterm=none
  hi DiffAdd                  ctermfg=2    ctermbg=7    cterm=none
  hi DiffChange               ctermfg=3    ctermbg=7    cterm=none
  hi DiffDelete               ctermfg=1    ctermbg=7    cterm=bold
  hi DiffText                 ctermfg=4    ctermbg=7    cterm=none
  hi Directory                ctermfg=4    ctermbg=none cterm=none
  hi EndOfBuffer              ctermfg=none ctermbg=none cterm=none
  hi Error                    ctermfg=1    ctermbg=7    cterm=bold,reverse
  hi ErrorMsg                 ctermfg=1    ctermbg=7    cterm=reverse
  hi Identifier               ctermfg=4    ctermbg=none cterm=none
  hi Ignore                   ctermfg=none ctermbg=none cterm=none
  hi IncSearch                ctermfg=4    ctermbg=none cterm=standout
  hi InsertMode               ctermfg=6    ctermbg=7    cterm=reverse
  hi MatchParen               ctermfg=1    ctermbg=7    cterm=bold,underline
  hi ModeMsg                  ctermfg=4    ctermbg=none cterm=none
  hi MoreMsg                  ctermfg=4    ctermbg=none cterm=none
  hi NonText                  ctermfg=1    ctermbg=none cterm=bold
  hi NormalMode               ctermfg=2    ctermbg=7    cterm=reverse
  hi Pmenu                    ctermfg=2    ctermbg=7    cterm=none
  hi PmenuSbar                ctermfg=none ctermbg=3    cterm=none
  hi PmenuSel                 ctermfg=7    ctermbg=1    cterm=none
  hi PmenuThumb               ctermfg=none ctermbg=6    cterm=none
  hi PreProc                  ctermfg=4    ctermbg=none cterm=none
  hi Question                 ctermfg=6    ctermbg=none cterm=bold
  hi ReplaceMode              ctermfg=4    ctermbg=7    cterm=reverse
  hi Search                   ctermfg=3    ctermbg=none cterm=reverse
  hi SignColumn               ctermfg=6    ctermbg=none cterm=none
  hi Special                  ctermfg=4    ctermbg=none cterm=none
  hi SpecialKey               ctermfg=1    ctermbg=7    cterm=bold
  hi SpellBad                 ctermfg=5    ctermbg=none cterm=underline
  hi SpellCap                 ctermfg=5    ctermbg=none cterm=underline
  hi SpellLocal               ctermfg=3    ctermbg=none cterm=underline
  hi SpellRare                ctermfg=6    ctermbg=none cterm=underline
  hi Statement                ctermfg=2    ctermbg=none cterm=none
  hi StatusLine               ctermfg=2    ctermbg=7    cterm=reverse
  hi StatusLineNC             ctermfg=1    ctermbg=7    cterm=reverse
  hi TabLine                  ctermfg=1    ctermbg=7    cterm=reverse
  hi TabLineFill              ctermfg=1    ctermbg=7    cterm=reverse
  hi TabLineSel               ctermfg=2    ctermbg=7    cterm=reverse
  hi Title                    ctermfg=4    ctermbg=none cterm=bold
  hi Todo                     ctermfg=5    ctermbg=none cterm=bold
  hi Type                     ctermfg=3    ctermbg=none cterm=none
  hi Underlined               ctermfg=5    ctermbg=none cterm=none
  hi VertSplit                ctermfg=2    ctermbg=3    cterm=none
  hi Visual                   ctermfg=3    ctermbg=7    cterm=reverse
  hi VisualMode               ctermfg=5    ctermbg=7    cterm=reverse
  hi VisualNOS                ctermfg=none ctermbg=7    cterm=reverse
  hi WarningMsg               ctermfg=4    ctermbg=none cterm=bold
  hi WildMenu                 ctermfg=0    ctermbg=7    cterm=reverse
  if !s:italics
    hi Comment                                          cterm=none
  endif
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

