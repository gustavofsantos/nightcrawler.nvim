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
-- Note: Because this is lua file, vim will append your file to the runtime,
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

local bg = hsl("#0e1828")
local bg_darker = hsl("#0A0F22")
local selection = hsl("#1E2641")
local fg = hsl("#CED2D6")
local fg_unfocus = hsl "#868d91"
local func = hsl "#8eace3"
local keyword = hsl "#ffa7c4"
local string = hsl "#ecc48d"
local symbol = hsl "#5F7E97" -- #5F7E97
local comment = hsl "#576378"
local bool = hsl "#F87086"
local regex = hsl "#7986E7"
local green = hsl "#80CBC4"
local popup_bg = hsl "#161D37"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = comment, gui = "italic" }, -- any comment
    ColorColumn  { bg = bg_darker }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = bg, bg = string }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = symbol }, -- directory names (and other special names in listings)
    DiffAdd      { fg = bg, bg = green }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = bg, bg = string }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = bg, bg = bool }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = bg, bg = string }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = comment, bg = bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { fg = bg, bg = string }, -- cursor in a focused terminal
    TermCursorNC { fg = fg_unfocus }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { fg = bg_darker, bg = bg_darker }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { bg = string, fg = comment }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = green, fg = comment }, -- |:substitute| replacement text highlighting
    LineNr       { fg = comment }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { bg = bg_darker }, -- Area for messages and cmdline
    MsgSeparator { bg = bg }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = regex }, -- |more-prompt|
    NonText      { fg = keyword }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = fg, bg = bg }, -- normal text
    NormalFloat  { fg = fg, bg = bg_darker }, -- Normal text in floating windows.
    NormalNC     { fg = fg_unfocus }, -- normal text in non-current windows
    Pmenu        { fg = fg, bg = popup_bg }, -- Popup menu: normal item.
    PmenuSel     { fg = keyword, bg = popup_bg }, -- Popup menu: selected item.
    PmenuSbar    { bg = bg_darker }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = comment }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = green, gui = "italic" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = string }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = bg, bg = string }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = bg_darker }, -- status line of current window
    StatusLineNC { bg = bg_darker }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = bg_darker }, -- tab pages line, not active tab page label
    TabLineFill  { bg = bg_darker }, -- tab pages line, where there are no labels
    TabLineSel   { fg = string, bg = bg }, -- tab pages line, active tab page label
    Title        { fg = fg }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = selection }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = bool }, -- warning messages
    Whitespace   { fg = comment }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { fg = keyword }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = fg }, -- (preferred) any constant
    String         { fg = string }, --   a string constant: "this is a string"
    Character      { fg = string }, --  a character constant: 'c', '\n'
    Number         { fg = fg }, --   a number constant: 234, 0xff
    Boolean        { fg = bool }, --  a boolean constant: TRUE, false
    Float          { fg = fg }, --    a floating point constant: 2.3e10

    Identifier     { fg = fg }, -- (preferred) any variable name
    Function       { fg = func }, -- function name (also: methods for classes)

    Statement      { fg = keyword, gui = "italic" }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    Operator       { fg = fg }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = keyword }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = regex, gui = "italic" }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = keyword }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = symbol }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = bool }, -- (preferred) any erroneous construct

    Todo           { fg = string, gui = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation         { fg = symbol, gui = "italic" };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          { fg = fg };    -- (unstable) TODO: docs
    TSBoolean            { fg = bool };    -- For booleans.
    TSCharacter          { fg = string };    -- For characters.
    TSComment            { fg = comment, gui = "italic" };    -- For comment blocks.
    TSConstructor        { fg = func };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { fg = keyword };    -- For keywords related to conditionnals.
    TSConstant           { fg = regex };    -- For constants
    TSConstBuiltin       { fg = keyword, gui = "italic" };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { fg = regex };    -- For constants that are defined by macros: `NULL` in C.
    TSError              { fg = bool };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    TSFunction           { fg = func };    -- For function (calls and definitions).
    TSFuncBuiltin        { fg = func };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSKeyword            { fg = keyword, gui = "italic" };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { fg = keyword, gui = "italic" };    -- For keywords used to define a fuction.
    TSLabel              { fg = regex };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { fg = func };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    TSNumber             { fg = fg };    -- For all numbers
    TSOperator           { fg = fg };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    TSPunctDelimiter     { fg = symbol };    -- For delimiters ie: `.`
    TSPunctBracket       { fg = symbol };    -- For brackets and parens.
    TSPunctSpecial       { fg = symbol };    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { fg = keyword, gui = "italic"};    -- For keywords related to loops.
    TSString             { fg = string };    -- For strings.
    TSStringRegex        { fg = regex };    -- For regexes.
    TSStringEscape       { fg = keyword };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    TSType               { fg = string };    -- For types.
    TSTypeBuiltin        { fg = keyword, gui = "italic" };    -- For builtin types.
    TSVariable           { fg = fg };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { fg = keyword, gui = "italic" };    -- Variable names that are defined by the languages, like `this` or `self`.
    TSInclude            { fg = symbol };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.

    TSTag                { fg = keyword };    -- Tags like html tag names.
    TSTagDelimiter       { fg = symbol };    -- Tag delimiter like `<` `>` `/`
    TSText               { fg = fg };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
