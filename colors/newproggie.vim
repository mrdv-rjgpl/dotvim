" -----------------------------------------------------------------------------
" Vim color file
" Maintainer:   Kai Wolf <mail@kai-wolf.me>
" Last Change:  2016 August
" License:      Beer Ware
" -----------------------------------------------------------------------------

" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="newproggie"

" Editor settings
hi Normal        cterm=none      ctermfg=7  gui=none   guibg=#1E1E1E  guifg=#B0B0B0
hi CursorLine    cterm=bold      ctermfg=15 gui=bold   guibg=#1E1E1E  guifg=#F7F7F7
hi Cursor        cterm=none      ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E
hi LineNr        cterm=none      ctermfg=7  gui=none   guibg=#1E1E1E  guifg=#B0B0B0
hi CursorLineNR  cterm=none      ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E

" Number column
hi CursorColumn  cterm=none      ctermfg=0  gui=none   guibg=#A94744  guifg=#1E1E1E
hi FoldColumn    cterm=none      ctermfg=2  gui=none   guibg=#1E1E1E  guifg=#608B4E
hi Folded        cterm=none      ctermfg=2  gui=none   guibg=#1E1E1E  guifg=#608B4E
hi ColorColumn   cterm=none      ctermbg=8

" Window / Tab delimiters
hi TabLine       cterm=none      ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi TabLineFill   cterm=none      ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi TabLineSel    cterm=none      ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi OverLength    cterm=none      ctermfg=1  gui=none   guibg=#1E1E1E  guifg=#A94744

" File navigation / Searching
hi Directory     cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Search        cterm=none      ctermfg=0  gui=none   guibg=#218693  guifg=#F7F7F7
hi IncSearch     cterm=none      ctermfg=0  ctermbg=14 gui=none       guibg=#D69831  guifg=#F7F7F7

" Prompt / Status
hi StatusLine    cterm=none      ctermfg=15 gui=none   guibg=#3C3C3C  guifg=#F7F7F7
hi StatusLineNC  cterm=none      ctermfg=8  gui=none   guibg=#F7F7F7  guifg=#3C3C3C
hi Title         cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi ModeMsg       cterm=bold      ctermfg=10 gui=bold   guibg=#1E1E1E  guifg=#8FBF7F

" Visual aid
hi MatchParen    cterm=bold      ctermfg=15 gui=none   guibg=#1E1E1E  guifg=#F7F7F7
hi Visual        cterm=none      ctermfg=15 gui=none   guibg=#3C3C3C  guifg=#F7F7F7
hi NonText       cterm=none      ctermfg=0  gui=none   guibg=#1E1E1E  guifg=#1E1E1E
hi Error         cterm=none      ctermfg=7  gui=bold   guibg=#1E1E1E  guifg=#A94744
hi ErrorMsg      cterm=none      ctermfg=7  gui=bold   guibg=#1E1E1E  guifg=#A94744
hi Todo          cterm=none      ctermfg=0  gui=bold   guibg=#1E1E1E  guifg=#D69831
hi Repeat        cterm=bold      ctermfg=1  gui=bold   guibg=#1E1E1E  guifg=#A94744

" Completion menu
hi Pmenu         cterm=none      ctermfg=7  gui=none   guibg=#3C3C3C  guifg=#B0B0B0
hi PmenuSel      cterm=none      ctermfg=15 gui=none   guibg=#569CD6  guifg=#F7F7F7
hi PmenuSbar     cterm=none      ctermfg=15 gui=none   guibg=#569CD6  guifg=#F7F7F7

" Spelling
hi SpellBad      cterm=underline ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellCap      cterm=underline ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellRare     cterm=underline ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690
hi SpellLocal    cterm=underline ctermfg=9  gui=none   guibg=#1E1E1E  guifg=#E09690

" Diff
hi DiffAdd       cterm=none      ctermfg=10 gui=none   guibg=#608B4E  guifg=#B5F2A1
hi DiffChange    cterm=none      ctermfg=12 gui=none   guibg=#569CD6  guifg=#CEEDFE
hi DiffDelete    cterm=none      ctermfg=9  gui=none   guibg=#A94744  guifg=#FFBDB8
hi DiffText      cterm=none      ctermfg=11 gui=none   guibg=#D69831  guifg=#FFD887

" General language constructs
hi Statement     cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Keyword       cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Comment       cterm=none      ctermfg=2  gui=italic guibg=#1E1E1E  guifg=#608B4E
hi Special       cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Delimiter     cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6

" C syntax highlighting
hi PreProc       cterm=none      ctermfg=5  gui=none   guibg=#1E1E1E  guifg=#B06386
hi Include       cterm=none      ctermfg=5  gui=none   guibg=#1E1E1E  guifg=#B06386
hi Define        cterm=none      ctermfg=5  gui=none   guibg=#1E1E1E  guifg=#B06386
hi Macro         cterm=none      ctermfg=5  gui=none   guibg=#1E1E1E  guifg=#B06386
hi PreCondit     cterm=none      ctermfg=5  gui=none   guibg=#1E1E1E  guifg=#B06386
hi Type          cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi String        cterm=none      ctermfg=3  gui=none   guibg=#1E1E1E  guifg=#D69831
hi Method        cterm=none      ctermfg=11 gui=none   guibg=#1E1E1E  guifg=#F8BC41
hi Function      cterm=none      ctermfg=11 gui=none   guibg=#1E1E1E  guifg=#F8BC41
hi Symbol        cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Structure     cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi StorageClass  cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Typedef       cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Identifier    cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Constant      cterm=none      ctermfg=4  gui=none   guibg=#1E1E1E  guifg=#569CD6
hi Number        cterm=none      ctermfg=2  gui=none   guibg=#1E1E1E  guifg=#608B4E

