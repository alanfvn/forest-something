--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl
local hsluv = lush.hsluv

local c = {
  -- reference 1: https://github.com/sainnhe/everforest/blob/master/palette.md
  -- reference 2: https://github.com/mcchrish/zenbones.nvim

  aqua = hsl("#7fbcb4"),
  teal = hsl("#83c193"),

  green = hsluv(105.4, 50.2, 74.5),
  rose = hsluv(11.3, 67.5, 64.4),
	wood = hsluv(62.2, 55.8, 77.6),
  old_wood = hsl("#b5aa92"),
	bg = hsluv(232.6, 27, 20.7),
	fg = hsluv(67.1, 26.4, 88),
	water = hsluv(179.5, 51, 71.8),
	blossom = hsluv(339.1, 46.7, 69.8),
	sky = hsluv(136.1, 45.8, 72.6),
}




-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    ColorColumn                    { bg="#685a41", },  -- Columns set with 'colorcolumn'
    Conceal                        { gui='underline'},  -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                         { fg="#2c343a", bg="#ebe2cf", },  -- Character under the cursor
    -- CurSearch                   { IncSearch },  -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor                        { },  -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM                    { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                   { bg="grey40", },  -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                     { bg="#313a41", },  -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                      { fg=c.green},  -- Directory names (and other special names in listings)
    DiffAdd                        { fg=c.green},  -- Diff mode: Added line |diff.txt|
    DiffChange                     { fg=c.wood, },  -- Diff mode: Changed line |diff.txt|
    DiffDelete                     { fg=c.rose, },  -- Diff mode: Deleted line |diff.txt|
    DiffText                       { fg=c.aqua},  -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer                 { },  -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor                     { gui="reverse", },  -- Cursor in a focused terminal
    TermCursorNC                   { lCursor },  -- Cursor in an unfocused terminal
    ErrorMsg                       { fg=c.rose },  -- Error messages on the command line
    VertSplit                      { fg="#667783", },  -- Column separating vertically split windows
    Folded                         { fg="#9cb4c6", bg="#424d55", },  -- Line used for closed folds
    FoldColumn                     { Folded },  -- 'foldcolumn'
    SignColumn                     { },  -- Column where |signs| are displayed
    IncSearch                      { fg=c.bg, bg=c.blossom},  -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute                  { IncSearch },  -- |:substitute| replacement text highlighting
    LineNr                         { fg="#667783", },  -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove                 { },  -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow                 { },  -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr                   { fg=c.fg, },  -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold                 { FoldColumn },  -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign              { SignColumn },  -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen                     { bg=c.bg, fg=c.rose },  -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                        { fg=c.green, gui="bold", },  -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                        { }, -- Area for messages and cmdline
    -- MsgSeparator                { },  -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg                        { fg=c.green, },  -- |more-prompt|
    NonText                        { fg="#5d6d78", },  -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                         { fg=c.fg, bg=c.bg, },  -- Normal text
    NormalFloat                    { Normal },  -- Normal text in floating windows.
    FloatBorder                    { fg="#798b9a", },  -- Border of floating windows.
    -- FloatTitle                  { },  -- Title of floating windows.
    -- NormalNC                    { }, -- normal text in non-current windows
    Pmenu                          { bg="#3b464e", },  -- Popup menu: Normal item.
    PmenuSel                       { bg="#4e5b65", },  -- Popup menu: Selected item.
    PmenuKind                      { Pmenu },  -- Popup menu: Normal item "kind"
    PmenuKindSel                   { PmenuSel },  -- Popup menu: Selected item "kind"
    PmenuExtra                     { Pmenu },  -- Popup menu: Normal item "extra text"
    PmenuExtraSel                  { PmenuSel },  -- Popup menu: Selected item "extra text"
    PmenuSbar                      { bg="#606f7b", },  -- Popup menu: Scrollbar.
    PmenuThumb                     { bg="#8296a5", },  -- Popup menu: Thumb of the scrollbar.
    Question                       { fg=c.green },  -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine                { Search },  -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                         { fg=c.bg, bg=c.rose, },  -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey                     { fg=c.green, },  -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|

    SpellBad                       { gui="undercurl" },  -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                       { gui="undercurl" },  -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                     { gui="undercurl" },  -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                      { gui="undercurl" },  -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    StatusLine                     { fg="#e7dcc4", bg="#3e4850", },  -- Status line of current window
    StatusLineNC                   { fg="#ede5d4", bg="#353f46", },  -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                        { bg=c.bg, fg=c.fg},  -- Tab pages line, not active tab page label
    TabLineFill                    { bg=c.bg},  -- Tab pages line, where there are no labels
    TabLineSel                     { bg=c.green, fg=c.bg, gui='italic'},  -- Tab pages line, active tab page label
    Title                          { fg=c.rose },  -- Titles for output from ":set all", ":autocmd" etc.
    Visual                         { bg="#615b51", },  -- Visual mode selection
    -- VisualNOS                   { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                     { fg=c.wood, },  -- Warning messages
    Whitespace                     { NonText },  -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator                   { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu                       { fg=c.bg, bg=c.blossom, },  -- Current match in 'wildmenu' completion
    -- WinBar                      { gui="bold", },  -- Window bar of current window
    -- WinBarNC                    { WinBar },  -- Window bar of not-current windows

    Comment                        { fg="#6e7b85", },  -- Any comment

    Constant                       { fg=c.fg, },  -- (*) Any constant
    String                         { fg=c.old_wood},  --   A string constant: "this is a string"
    Character                      { fg=c.old_wood},  --   A character constant: 'c', '\n'
    Number                         { fg=c.blossom},  --   A number constant: 234, 0xff
    Boolean                        { fg=c.blossom },  --   A boolean constant: TRUE, false
    Float                          { fg=c.blossom},  --   A floating point constant: 2.3e10

    Identifier                     { fg=c.fg },  -- (*) Any variable name
    Function                       { fg=c.aqua},  --   Function name (also: methods for classes)

    Statement                      { fg=c.green},  -- (*) Any statement
    -- Conditional                 { },  --   if, then, else, endif, switch, etc.
    -- Repeat                      { },  --   for, do, while, etc.
    -- Label                       { },  --   case, default, etc.
    -- Operator                    { },  --   "sizeof", "+", "*", etc.
    -- Keyword                     { },  --   any other keyword
    -- Exception                   { },  --   try, catch, throw

    PreProc                        { fg=c.teal, },  -- (*) Generic Preprocessor
    -- Include                     { },  --   Preprocessor #include
    -- Define                      { },  --   Preprocessor #define
    -- Macro                       { },  --   Same as Define
    -- PreCondit                   { },  --   Preprocessor #if, #else, #endif, etc.

    Type                           { fg=c.aqua, },  -- (*) int, long, char, etc.
    -- StorageClass                { },  --   static, register, volatile, etc.
    -- Structure                   { },  --   struct, union, enum, etc.
    -- Typedef                     { },  --   A typedef

    Special                        { fg="#7b8e9d" },  -- (*) Any special symbol
    SpecialChar                    { Special },  --   Special character in a constant
    Tag                            { Special },  --   You can use CTRL-] on this
    Delimiter                      { fg="#7b8e9d", },  --   Character that needs attention
    SpecialComment                 { Comment },  --   Special things inside a comment (e.g. '\n')
    Debug                          { Special },  --   Debugging statements

    Underlined                     { gui="underline", },  -- Text that stands out, HTML links
    Ignore                         { fg=c.bg, },  -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error                          { fg=c.rose },  -- Any erroneous construct
    Todo                           { fg=c.wood },  -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- LspReferenceText            { ColorColumn },  -- Used for highlighting "text" references
    -- LspReferenceRead            { ColorColumn },  -- Used for highlighting "read" references
    -- LspReferenceWrite           { ColorColumn },  -- Used for highlighting "write" references
    -- LspCodeLens                 { LineNr },  -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    DiagnosticError                { fg=c.rose },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn                 { fg=c.wood, },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo                 { fg=c.aqua, },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint                 { fg=c.blossom, },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk                   { fg=c.green, },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError     { DiagnosticError },  -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn      { DiagnosticWarn },  -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo      { DiagnosticInfo },  -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint      { DiagnosticHint },  -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk        { DiagnosticOk },  -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError       { fg=c.rose, gui="underline", },  -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn        { fg=c.wood, gui="underline", },  -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo        { fg=c.aqua, gui="underline", },  -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint        { fg=c.blossom, gui="underline", },  -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk          { fg=c.green, gui="underline", },  -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError        { DiagnosticError },  -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn         { DiagnosticWarn },  -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo         { DiagnosticInfo },  -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint         { DiagnosticHint },  -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk           { DiagnosticOk },  -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError            { DiagnosticError },  -- Used for "Error" signs in sign column.
    DiagnosticSignWarn             { DiagnosticWarn },  -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo             { DiagnosticInfo },  -- Used for "Info" signs in sign column.
    DiagnosticSignHint             { DiagnosticHint },  -- Used for "Hint" signs in sign column.
    DiagnosticSignOk               { DiagnosticOk },  -- Used for "Ok" signs in sign column.

    sym"@text.literal"             { Comment }, -- Comment
    sym"@text.reference"           { Identifier }, -- Identifier
    sym"@text.title"               { Title }, -- Title
    sym"@text.uri"                 { }, -- Underlined
    sym"@text.underline"           { }, -- Underlined
    sym"@text.todo"                { Todo }, -- Todo
    sym"@comment"                  { Comment },  -- Comment
    sym"@punctuation"              { Delimiter },  -- Delimiter
    sym"@constant"                 { Constant },  -- Constant
    sym"@constant.builtin"         { Special }, -- Special
    sym"@constant.macro"           { PreProc }, -- Define
    sym"@define"                   { PreProc }, -- Define
    sym"@macro"                    { PreProc }, -- Macro
    sym"@string"                   { String }, -- String
    sym"@string.escape"            { }, -- SpecialChar
    sym"@string.special"           { }, -- SpecialChar
    sym"@character"                { }, -- Character
    sym"@character.special"        { }, -- SpecialChar
    sym"@number"                   { Number },  -- Number
    sym"@boolean"                  { Boolean }, -- Boolean
    sym"@float"                    { Float }, -- Float
    sym"@function"                 { Function },  -- Function
    sym"@function.builtin"         { Statement }, -- Special
    sym"@function.macro"           { PreProc }, -- Macro
    sym"@parameter"                { Identifier },  -- Identifier
    sym"@method"                   { Function },  -- Function
    sym"@field"                    { Identifier },  -- Identifier
    sym"@property"                 { Identifier },  -- Identifier
    sym"@constructor"              { Special },  -- Special
    sym"@conditional"              { Statement }, -- Conditional
    sym"@repeat"                   { Statement }, -- Repeat
    sym"@label"                    { Statement }, -- Label
    sym"@operator"                 { Statement }, -- Operator
    sym"@keyword"                  { Statement }, -- Keyword
    sym"@exception"                { Statement }, -- Exception
    sym"@variable"                 { Identifier },  -- Identifier
    sym"@type"                     { Type },  -- Type
    sym"@type.definition"          { Type }, -- Typedef
    sym"@storageclass"             { Type }, -- StorageClass
    sym"@structure"                { Type }, -- Structure
    sym"@namespace"                { Identifier },  -- Identifier
    sym"@include"                  { PreProc }, -- Include
    sym"@preproc"                  { PreProc },  -- PreProc
    sym"@debug"                    { Debug }, -- Debug
    sym"@tag"                      { Tag }, -- Tag

    -- Treesitter HTML
    sym"@tag.attribute.html"       { fg=c.aqua},
    sym"@tag.html"                 { fg=c.teal},
    sym"@string.html"              { fg=c.blossom}
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
