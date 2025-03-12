-- Highlight group definitions
-- Generated with Neovim

vim.cmd[[
SpecialKey     xxx guifg=NvimDarkGrey4
EndOfBuffer    xxx cleared
TermCursor     xxx guifg=#805a3e guibg=#80a4c2
TermCursorNC   xxx cleared
NonText        xxx guifg=#7e97ac
Directory      xxx guifg=#82aaff
ErrorMsg       xxx links to Error
IncSearch      xxx guibg=#2e485c
Search         xxx guibg=#063e5d
CurSearch      xxx ctermfg=0 ctermbg=11 guifg=NvimDarkGrey1 guibg=NvimLightYellow
MoreMsg        xxx ctermfg=14 guifg=NvimLightCyan
ModeMsg        xxx ctermfg=10 guifg=NvimLightGreen
LineNr         xxx ctermfg=242 guifg=#585858
LineNrAbove    xxx links to LineNr
LineNrBelow    xxx links to LineNr
CursorLineNr   xxx guifg=#c5e4fc
CursorLineSign xxx links to SignColumn
CursorLineFold xxx links to FoldColumn
Question       xxx ctermfg=14 guifg=NvimLightCyan
StatusLine     xxx guifg=#d6deeb guibg=#010d18
StatusLineNC   xxx guifg=#5f7e97 guibg=#0e293f
WinSeparator   xxx guifg=#262a39
VertSplit      xxx guifg=#262a39
Title          xxx cterm=bold gui=bold guifg=#82b1ff
Visual         xxx links to @nowl.visual.active
VisualNC       xxx cleared
WarningMsg     xxx ctermfg=11 guifg=NvimLightYellow
WildMenu       xxx links to PmenuSel
Folded         xxx guifg=#637777 guibg=#092135
FoldColumn     xxx guifg=#637777 guibg=#021727
DiffAdd        xxx guifg=LightCyan1 guibg=DarkGreen
DiffChange     xxx cterm=underline gui=underline guifg=Grey82 guibg=Black
DiffDelete     xxx guifg=Red guibg=Black
DiffText       xxx ctermfg=0 ctermbg=14 guifg=Yellow1 guibg=DarkRed
SignColumn     xxx cleared
Conceal        xxx guifg=#20395d
SpellBad       xxx cterm=undercurl gui=undercurl guisp=NvimLightRed
SpellCap       xxx cterm=undercurl gui=undercurl guisp=NvimLightYellow
SpellRare      xxx cterm=undercurl gui=undercurl guisp=NvimLightCyan
SpellLocal     xxx cterm=undercurl gui=undercurl guisp=NvimLightGreen
Pmenu          xxx guibg=#010d18
PmenuSel       xxx guibg=#0e293f
PmenuKind      xxx links to Pmenu
PmenuKindSel   xxx links to PmenuSel
PmenuExtra     xxx links to Pmenu
PmenuExtraSel  xxx links to PmenuSel
PmenuSbar      xxx links to Pmenu
PmenuThumb     xxx guibg=NvimDarkGrey4
TabLine        xxx guifg=#5f7e97 guibg=#01111d
TabLineSel     xxx guifg=#d2dee7 guibg=#0b2942
TabLineFill    xxx guifg=#021727
CursorColumn   xxx guibg=#021320
CursorLine     xxx guibg=#021320
ColorColumn    xxx guibg=#021320
QuickFixLine   xxx guibg=#0e293f
Whitespace     xxx guifg=#273845
NormalNC       xxx cleared
MsgSeparator   xxx links to StatusLine
NormalFloat    xxx guibg=#021727 blend=0
MsgArea        xxx cleared
FloatBorder    xxx guifg=#5f7e97 guibg=#021727
WinBar         xxx cterm=bold gui=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
WinBarNC       xxx cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
Cursor         xxx guifg=#005f87 guibg=#005f87
FloatTitle     xxx cterm=bold gui=bold guifg=#7e57c2 guibg=#021727
FloatFooter    xxx links to FloatTitle
RedrawDebugNormal xxx cterm=reverse gui=reverse
Underlined     xxx cterm=underline gui=underline
lCursor        xxx guifg=#805a3e guibg=#80a4c2
CursorIM       xxx guifg=#805a3e guibg=#80a4c2
Substitute     xxx links to Search
VisualNOS      xxx links to Visual
Normal         xxx guifg=#d6deeb guibg=#021727
Character      xxx links to Constant
Constant       xxx cterm=italic gui=italic guifg=#82aaff
Number         xxx guifg=#f78c6c
Boolean        xxx cterm=italic gui=italic guifg=#ff5874
Float          xxx links to Number
Conditional    xxx guifg=#c792ea
Statement      xxx cterm=italic gui=italic guifg=#c792ea
Repeat         xxx links to Statement
Label          xxx links to Statement
Keyword        xxx guifg=#c792ea
Exception      xxx links to Statement
Include        xxx cterm=italic gui=italic guifg=#c792ea
PreProc        xxx guifg=#ff2c83
Define         xxx links to PreProc
Macro          xxx links to PreProc
PreCondit      xxx links to PreProc
StorageClass   xxx links to Type
Type           xxx guifg=#ffcb8b
Structure      xxx links to Type
Typedef        xxx links to Type
Tag            xxx guifg=#caece6
Special        xxx guifg=#ffcb8b
SpecialChar    xxx links to Special
SpecialComment xxx links to Special
Debug          xxx links to Special
Ignore         xxx links to Normal
LspCodeLens    xxx links to NonText
LspCodeLensSeparator xxx links to LspCodeLens
LspInlayHint   xxx guifg=#969696 guibg=#072232
LspReferenceRead xxx links to LspReferenceText
LspReferenceText xxx links to Visual
LspReferenceWrite xxx links to LspReferenceText
LspSignatureActiveParameter xxx links to Visual
SnippetTabstop xxx links to Visual
DiagnosticFloatingError xxx links to DiagnosticError
DiagnosticError xxx guifg=#9c3930
DiagnosticFloatingWarn xxx links to DiagnosticWarn
DiagnosticWarn xxx ctermfg=11 guifg=#806425
DiagnosticFloatingInfo xxx links to DiagnosticInfo
DiagnosticInfo xxx ctermfg=14 guifg=#005f87
DiagnosticFloatingHint xxx links to DiagnosticHint
DiagnosticHint xxx ctermfg=12 guifg=#00af87
DiagnosticFloatingOk xxx links to DiagnosticOk
DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen
DiagnosticVirtualTextError xxx links to DiagnosticError
DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
DiagnosticVirtualTextHint xxx links to DiagnosticHint
DiagnosticVirtualTextOk xxx links to DiagnosticOk
DiagnosticSignError xxx links to DiagnosticError
DiagnosticSignWarn xxx links to DiagnosticWarn
DiagnosticSignInfo xxx links to DiagnosticInfo
DiagnosticSignHint xxx links to DiagnosticHint
DiagnosticSignOk xxx links to DiagnosticOk
DiagnosticUnnecessary xxx links to Comment
Comment        xxx cterm=italic gui=italic guifg=#637777
@variable      xxx guifg=#d7dbe0
@variable.builtin xxx guifg=#7fdbca
@variable.parameter.builtin xxx links to Special
@constant      xxx links to Constant
@constant.builtin xxx links to Constant
@module        xxx links to Structure
@module.builtin xxx links to Special
@label         xxx guifg=#7fdbca
@string        xxx links to String
String         xxx guifg=#ecc48d
@string.regexp xxx links to @string.special
@string.special xxx links to SpecialChar
@string.escape xxx links to @string.special
@string.special.url xxx links to Underlined
@character     xxx links to Character
@character.special xxx links to SpecialChar
@boolean       xxx links to Boolean
@number        xxx links to Number
@number.float  xxx links to Float
@type          xxx cterm=italic gui=italic guifg=#ffcb8b
@type.builtin  xxx guifg=#c5e478
@attribute     xxx links to Macro
@attribute.builtin xxx links to Special
@property      xxx guifg=#baebe2
Identifier     xxx guifg=#78ccf0
@function      xxx links to Function
Function       xxx cterm=italic gui=italic guifg=#82aaff
@function.builtin xxx links to Special
@constructor   xxx links to Special
@operator      xxx links to Operator
Operator       xxx guifg=#c792ea
@keyword       xxx links to Keyword
@punctuation   xxx links to Delimiter
Delimiter      xxx guifg=#d6deeb
@punctuation.special xxx links to Special
@comment       xxx links to Comment
@comment.error xxx links to DiagnosticError
@comment.warning xxx links to DiagnosticWarn
@comment.note  xxx links to DiagnosticInfo
@comment.todo  xxx links to Todo
Todo           xxx cterm=bold gui=bold guifg=NvimLightGrey2
@markup        xxx links to Special
@markup.strong xxx cterm=bold gui=bold
@markup.italic xxx cterm=italic gui=italic
@markup.strikethrough xxx cterm=strikethrough gui=strikethrough
@markup.underline xxx cterm=underline gui=underline
@markup.heading xxx links to Title
@markup.link   xxx links to Underlined
@diff          xxx cleared
@diff.plus     xxx links to Added
Added          xxx ctermfg=10 guifg=NvimLightGreen
@diff.minus    xxx links to Removed
Removed        xxx ctermfg=9 guifg=NvimLightRed
@diff.delta    xxx links to Changed
Changed        xxx ctermfg=14 guifg=NvimLightCyan
@tag           xxx links to Tag
@tag.builtin   xxx cterm=nocombine gui=nocombine guifg=#caece6
@lsp           xxx cleared
@lsp.type.class xxx links to @type
@lsp.type.comment xxx links to @comment
@lsp.type.decorator xxx cterm=nocombine gui=nocombine guifg=#c5e478
@lsp.type.enum xxx links to @type
@lsp.type.enumMember xxx links to @constant
@lsp.type.event xxx links to @type
@lsp.type.function xxx links to @function
@lsp.type.interface xxx cterm=nocombine gui=nocombine guifg=#c5e478
@lsp.type.keyword xxx links to @keyword
@lsp.type.macro xxx links to @constant.macro
@lsp.type.method xxx links to @function.method
@lsp.type.modifier xxx links to @type.qualifier
@lsp.type.namespace xxx links to @module
@lsp.type.number xxx links to @number
@lsp.type.operator xxx links to @operator
@lsp.type.parameter xxx guifg=#d7dbe0
@lsp.type.property xxx guifg=#baebe2
@lsp.type.regexp xxx links to @string.regexp
@lsp.type.string xxx links to @string
@lsp.type.struct xxx links to @type
@lsp.type.type xxx links to @type
@lsp.type.typeParameter xxx links to @type.definition
@lsp.type.variable xxx guifg=#d7dbe0
@lsp.mod.deprecated xxx links to DiagnosticDeprecated
DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed
FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
MatchParen     xxx guibg=#1e364a
RedrawDebugClear xxx ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
RedrawDebugComposed xxx ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
RedrawDebugRecompose xxx ctermfg=0 ctermbg=9 guibg=NvimDarkRed
Error          xxx guifg=#ef5350
DiagnosticUnderlineError xxx cterm=undercurl gui=undercurl guisp=#ef5350
DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=NvimLightYellow
DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=NvimLightCyan
DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=NvimLightBlue
DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
NvimAssignment xxx links to Operator
NvimPlainAssignment xxx links to NvimAssignment
NvimAugmentedAssignment xxx links to NvimAssignment
NvimAssignmentWithAddition xxx links to NvimAugmentedAssignment
NvimAssignmentWithSubtraction xxx links to NvimAugmentedAssignment
NvimAssignmentWithConcatenation xxx links to NvimAugmentedAssignment
NvimOperator   xxx links to Operator
NvimUnaryOperator xxx links to NvimOperator
NvimUnaryPlus  xxx links to NvimUnaryOperator
NvimUnaryMinus xxx links to NvimUnaryOperator
NvimNot        xxx links to NvimUnaryOperator
NvimBinaryOperator xxx links to NvimOperator
NvimComparison xxx links to NvimBinaryOperator
NvimComparisonModifier xxx links to NvimComparison
NvimBinaryPlus xxx links to NvimBinaryOperator
NvimBinaryMinus xxx links to NvimBinaryOperator
NvimConcat     xxx links to NvimBinaryOperator
NvimConcatOrSubscript xxx links to NvimConcat
NvimOr         xxx links to NvimBinaryOperator
NvimAnd        xxx links to NvimBinaryOperator
NvimMultiplication xxx links to NvimBinaryOperator
NvimDivision   xxx links to NvimBinaryOperator
NvimMod        xxx links to NvimBinaryOperator
NvimTernary    xxx links to NvimOperator
NvimTernaryColon xxx links to NvimTernary
NvimParenthesis xxx links to Delimiter
NvimLambda     xxx links to NvimParenthesis
NvimNestingParenthesis xxx links to NvimParenthesis
NvimCallingParenthesis xxx links to NvimParenthesis
NvimSubscript  xxx links to NvimParenthesis
NvimSubscriptBracket xxx links to NvimSubscript
NvimSubscriptColon xxx links to NvimSubscript
NvimCurly      xxx links to NvimSubscript
NvimContainer  xxx links to NvimParenthesis
NvimDict       xxx links to NvimContainer
NvimList       xxx links to NvimContainer
NvimIdentifier xxx links to Identifier
NvimIdentifierScope xxx links to NvimIdentifier
NvimIdentifierScopeDelimiter xxx links to NvimIdentifier
NvimIdentifierName xxx links to NvimIdentifier
NvimIdentifierKey xxx links to NvimIdentifier
NvimColon      xxx links to Delimiter
NvimComma      xxx links to Delimiter
NvimArrow      xxx links to Delimiter
NvimRegister   xxx links to SpecialChar
NvimNumber     xxx links to Number
NvimFloat      xxx links to NvimNumber
NvimNumberPrefix xxx links to Type
NvimOptionSigil xxx links to Type
NvimOptionName xxx links to NvimIdentifier
NvimOptionScope xxx links to NvimIdentifierScope
NvimOptionScopeDelimiter xxx links to NvimIdentifierScopeDelimiter
NvimEnvironmentSigil xxx links to NvimOptionSigil
NvimEnvironmentName xxx links to NvimIdentifier
NvimString     xxx links to String
NvimStringBody xxx links to NvimString
NvimStringQuote xxx links to NvimString
NvimStringSpecial xxx links to SpecialChar
NvimSingleQuote xxx links to NvimStringQuote
NvimSingleQuotedBody xxx links to NvimStringBody
NvimSingleQuotedQuote xxx links to NvimStringSpecial
NvimDoubleQuote xxx links to NvimStringQuote
NvimDoubleQuotedBody xxx links to NvimStringBody
NvimDoubleQuotedEscape xxx links to NvimStringSpecial
NvimFigureBrace xxx links to NvimInternalError
NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
NvimSpacing    xxx links to Normal
NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
NvimInvalid    xxx links to Error
NvimInvalidAssignment xxx links to NvimInvalid
NvimInvalidPlainAssignment xxx links to NvimInvalidAssignment
NvimInvalidAugmentedAssignment xxx links to NvimInvalidAssignment
NvimInvalidAssignmentWithAddition xxx links to NvimInvalidAugmentedAssignment
NvimInvalidAssignmentWithSubtraction xxx links to NvimInvalidAugmentedAssignment
NvimInvalidAssignmentWithConcatenation xxx links to NvimInvalidAugmentedAssignment
NvimInvalidOperator xxx links to NvimInvalid
NvimInvalidUnaryOperator xxx links to NvimInvalidOperator
NvimInvalidUnaryPlus xxx links to NvimInvalidUnaryOperator
NvimInvalidUnaryMinus xxx links to NvimInvalidUnaryOperator
NvimInvalidNot xxx links to NvimInvalidUnaryOperator
NvimInvalidBinaryOperator xxx links to NvimInvalidOperator
NvimInvalidComparison xxx links to NvimInvalidBinaryOperator
NvimInvalidComparisonModifier xxx links to NvimInvalidComparison
NvimInvalidBinaryPlus xxx links to NvimInvalidBinaryOperator
NvimInvalidBinaryMinus xxx links to NvimInvalidBinaryOperator
NvimInvalidConcat xxx links to NvimInvalidBinaryOperator
NvimInvalidConcatOrSubscript xxx links to NvimInvalidConcat
NvimInvalidOr  xxx links to NvimInvalidBinaryOperator
NvimInvalidAnd xxx links to NvimInvalidBinaryOperator
NvimInvalidMultiplication xxx links to NvimInvalidBinaryOperator
NvimInvalidDivision xxx links to NvimInvalidBinaryOperator
NvimInvalidMod xxx links to NvimInvalidBinaryOperator
NvimInvalidTernary xxx links to NvimInvalidOperator
NvimInvalidTernaryColon xxx links to NvimInvalidTernary
NvimInvalidDelimiter xxx links to NvimInvalid
NvimInvalidParenthesis xxx links to NvimInvalidDelimiter
NvimInvalidLambda xxx links to NvimInvalidParenthesis
NvimInvalidNestingParenthesis xxx links to NvimInvalidParenthesis
NvimInvalidCallingParenthesis xxx links to NvimInvalidParenthesis
NvimInvalidSubscript xxx links to NvimInvalidParenthesis
NvimInvalidSubscriptBracket xxx links to NvimInvalidSubscript
NvimInvalidSubscriptColon xxx links to NvimInvalidSubscript
NvimInvalidCurly xxx links to NvimInvalidSubscript
NvimInvalidContainer xxx links to NvimInvalidParenthesis
NvimInvalidDict xxx links to NvimInvalidContainer
NvimInvalidList xxx links to NvimInvalidContainer
NvimInvalidValue xxx links to NvimInvalid
NvimInvalidIdentifier xxx links to NvimInvalidValue
NvimInvalidIdentifierScope xxx links to NvimInvalidIdentifier
NvimInvalidIdentifierScopeDelimiter xxx links to NvimInvalidIdentifier
NvimInvalidIdentifierName xxx links to NvimInvalidIdentifier
NvimInvalidIdentifierKey xxx links to NvimInvalidIdentifier
NvimInvalidColon xxx links to NvimInvalidDelimiter
NvimInvalidComma xxx links to NvimInvalidDelimiter
NvimInvalidArrow xxx links to NvimInvalidDelimiter
NvimInvalidRegister xxx links to NvimInvalidValue
NvimInvalidNumber xxx links to NvimInvalidValue
NvimInvalidFloat xxx links to NvimInvalidNumber
NvimInvalidNumberPrefix xxx links to NvimInvalidNumber
NvimInvalidOptionSigil xxx links to NvimInvalidIdentifier
NvimInvalidOptionName xxx links to NvimInvalidIdentifier
NvimInvalidOptionScope xxx links to NvimInvalidIdentifierScope
NvimInvalidOptionScopeDelimiter xxx links to NvimInvalidIdentifierScopeDelimiter
NvimInvalidEnvironmentSigil xxx links to NvimInvalidOptionSigil
NvimInvalidEnvironmentName xxx links to NvimInvalidIdentifier
NvimInvalidString xxx links to NvimInvalidValue
NvimInvalidStringBody xxx links to NvimStringBody
NvimInvalidStringQuote xxx links to NvimInvalidString
NvimInvalidStringSpecial xxx links to NvimStringSpecial
NvimInvalidSingleQuote xxx links to NvimInvalidStringQuote
NvimInvalidSingleQuotedBody xxx links to NvimInvalidStringBody
NvimInvalidSingleQuotedQuote xxx links to NvimInvalidStringSpecial
NvimInvalidDoubleQuote xxx links to NvimInvalidStringQuote
NvimInvalidDoubleQuotedBody xxx links to NvimInvalidStringBody
NvimInvalidDoubleQuotedEscape xxx links to NvimInvalidStringSpecial
NvimInvalidDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
NvimInvalidFigureBrace xxx links to NvimInvalidDelimiter
NvimInvalidSpacing xxx links to ErrorMsg
NvimDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
CmpItemAbbr    xxx links to CmpItemAbbrDefault
CmpItemAbbrDefault xxx cleared
CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
CmpItemAbbrDeprecatedDefault xxx guifg=#637777
CmpItemAbbrMatch xxx links to CmpItemAbbrMatchDefault
CmpItemAbbrMatchDefault xxx cleared
CmpItemAbbrMatchFuzzy xxx links to CmpItemAbbrMatchFuzzyDefault
CmpItemAbbrMatchFuzzyDefault xxx cleared
CmpItemKind    xxx links to CmpItemKindDefault
CmpItemKindDefault xxx guifg=#ffcb8b
CmpItemMenu    xxx links to CmpItemMenuDefault
CmpItemMenuDefault xxx cleared
CmpItemKindProperty xxx links to CmpItemKindPropertyDefault
CmpItemKindPropertyDefault xxx links to CmpItemKind
CmpItemKindModule xxx links to CmpItemKindModuleDefault
CmpItemKindModuleDefault xxx links to CmpItemKind
CmpItemKindInterface xxx links to CmpItemKindInterfaceDefault
CmpItemKindInterfaceDefault xxx links to CmpItemKind
CmpItemKindClass xxx links to CmpItemKindClassDefault
CmpItemKindClassDefault xxx links to CmpItemKind
CmpItemKindVariable xxx links to CmpItemKindVariableDefault
CmpItemKindVariableDefault xxx links to CmpItemKind
CmpItemKindSnippet xxx links to CmpItemKindSnippetDefault
CmpItemKindSnippetDefault xxx links to CmpItemKind
CmpItemKindConstructor xxx links to CmpItemKindConstructorDefault
CmpItemKindConstructorDefault xxx links to CmpItemKind
CmpItemKindFunction xxx links to CmpItemKindFunctionDefault
CmpItemKindFunctionDefault xxx links to CmpItemKind
CmpItemKindEvent xxx links to CmpItemKindEventDefault
CmpItemKindEventDefault xxx links to CmpItemKind
CmpItemKindKeyword xxx links to CmpItemKindKeywordDefault
CmpItemKindKeywordDefault xxx links to CmpItemKind
CmpItemKindField xxx links to CmpItemKindFieldDefault
CmpItemKindFieldDefault xxx links to CmpItemKind
CmpItemKindText xxx links to CmpItemKindTextDefault
CmpItemKindTextDefault xxx links to CmpItemKind
CmpItemKindMethod xxx links to CmpItemKindMethodDefault
CmpItemKindMethodDefault xxx links to CmpItemKind
CmpItemKindConstant xxx links to CmpItemKindConstantDefault
CmpItemKindConstantDefault xxx links to CmpItemKind
CmpItemKindStruct xxx links to CmpItemKindStructDefault
CmpItemKindStructDefault xxx links to CmpItemKind
CmpItemKindOperator xxx links to CmpItemKindOperatorDefault
CmpItemKindOperatorDefault xxx links to CmpItemKind
CmpItemKindTypeParameter xxx links to CmpItemKindTypeParameterDefault
CmpItemKindTypeParameterDefault xxx links to CmpItemKind
CmpItemKindEnumMember xxx links to CmpItemKindEnumMemberDefault
CmpItemKindEnumMemberDefault xxx links to CmpItemKind
CmpItemKindFolder xxx links to CmpItemKindFolderDefault
CmpItemKindFolderDefault xxx links to CmpItemKind
CmpItemKindReference xxx links to CmpItemKindReferenceDefault
CmpItemKindReferenceDefault xxx links to CmpItemKind
CmpItemKindFile xxx links to CmpItemKindFileDefault
CmpItemKindFileDefault xxx links to CmpItemKind
CmpItemKindColor xxx links to CmpItemKindColorDefault
CmpItemKindColorDefault xxx links to CmpItemKind
CmpItemKindEnum xxx links to CmpItemKindEnumDefault
CmpItemKindEnumDefault xxx links to CmpItemKind
CmpItemKindValue xxx links to CmpItemKindValueDefault
CmpItemKindValueDefault xxx links to CmpItemKind
CmpItemKindUnit xxx links to CmpItemKindUnitDefault
CmpItemKindUnitDefault xxx links to CmpItemKind
FidgetTitle    xxx links to Title
FidgetTask     xxx links to NonText
LspInfoTitle   xxx links to Title
LspInfoTip     xxx links to Comment
LspInfoList    xxx links to Function
LspInfoBorder  xxx guifg=#5f7e97
LspInfoFiletype xxx links to Type
@neorg         xxx cleared
@neorg.tags.comment.content xxx links to @comment
@neorg.tags.carryover.name xxx links to @none
@neorg.tags.carryover.name.delimiter xxx links to @none
@none          xxx cleared
@neorg.tags.carryover.name.word xxx links to @label
@neorg.tags.carryover.begin xxx links to @label
@neorg.tags.carryover.parameters xxx links to @string
@neorg.tags.ranged_verbatim.end xxx links to @keyword
@neorg.tags.ranged_verbatim.parameters xxx links to @type
@neorg.tags.ranged_verbatim.name xxx links to @none
@neorg.tags.ranged_verbatim.name.delimiter xxx links to @none
@neorg.tags.ranged_verbatim.name.word xxx links to @keyword
@neorg.tags.ranged_verbatim.begin xxx links to @keyword
@neorg.tags.ranged_verbatim.document_meta.description xxx links to @label
@neorg.tags.ranged_verbatim.document_meta.title xxx links to @markup.heading
@neorg.tags.ranged_verbatim.document_meta.created xxx links to @number.float
@neorg.tags.ranged_verbatim.document_meta.key xxx links to @variable.member
@neorg.tags.ranged_verbatim.document_meta.trailing xxx links to @keyword.repeat
@keyword.repeat xxx links to Statement
@neorg.tags.ranged_verbatim.document_meta.updated xxx links to @number.float
@neorg.tags.ranged_verbatim.document_meta.categories xxx links to @keyword
@neorg.tags.ranged_verbatim.document_meta.number xxx links to @number
@neorg.tags.ranged_verbatim.document_meta.array.bracket xxx links to @punctuation.bracket
@neorg.tags.ranged_verbatim.document_meta.array.value xxx links to @none
@neorg.tags.ranged_verbatim.document_meta.object.bracket xxx links to @punctuation.bracket
@neorg.tags.ranged_verbatim.document_meta.version xxx links to @number.float
@neorg.tags.ranged_verbatim.document_meta.value xxx links to @string
@neorg.tags.ranged_verbatim.document_meta.authors xxx links to @annotation
@annotation    xxx cleared
@neorg.todo_items.cancelled xxx links to NonText
@neorg.todo_items.urgent xxx links to @comment.error
@neorg.todo_items.on_hold xxx links to @comment.note
@neorg.todo_items.done xxx links to @string
@neorg.todo_items.recurring xxx links to @keyword.repeat
@neorg.todo_items.undone xxx links to @punctuation.delimiter
@neorg.todo_items.uncertain xxx links to @boolean
@neorg.todo_items.pending xxx links to @module
@neorg.modifiers.escape xxx links to @type
@neorg.modifiers.link xxx links to NonText
@neorg.anchors.declaration xxx links to @markup.link.label
@neorg.anchors.declaration.delimiter xxx links to NonText
@neorg.anchors.definition.delimiter xxx links to NonText
@neorg.rendered.latex xxx links to Normal
@neorg.quotes.4.prefix xxx links to Red
Red            xxx cleared
@neorg.quotes.4.content xxx links to Red
@neorg.quotes.6.prefix xxx links to Brown
Brown          xxx cleared
@neorg.quotes.6.content xxx links to Brown
@neorg.quotes.5.prefix xxx links to Green
Green          xxx cleared
@neorg.quotes.5.content xxx links to Green
@neorg.quotes.3.prefix xxx links to Yellow
Yellow         xxx cleared
@neorg.quotes.3.content xxx links to Yellow
@neorg.quotes.2.prefix xxx links to Blue
Blue           xxx cleared
@neorg.quotes.2.content xxx links to Blue
@neorg.quotes.1.prefix xxx links to @punctuation.delimiter
@neorg.quotes.1.content xxx links to @punctuation.delimiter
@neorg.delimiters.horizontal_line xxx links to @punctuation.delimiter
@neorg.delimiters.strong xxx links to @punctuation.delimiter
@neorg.delimiters.weak xxx links to @punctuation.delimiter
@neorg.selection_window.nestedkeyname xxx links to @string
@neorg.selection_window.keyname xxx links to @constant
@neorg.selection_window.key xxx links to @module
@neorg.selection_window.heading xxx links to @annotation
@neorg.selection_window.arrow xxx links to @none
@neorg.markup.subscript xxx links to @label
@neorg.markup.subscript.delimiter xxx links to NonText
@neorg.markup.spoiler xxx links to @comment.error
@neorg.markup.spoiler.delimiter xxx links to NonText
@neorg.markup.variable xxx links to @function.macro
@neorg.markup.variable.delimiter xxx links to NonText
@neorg.markup.bold xxx links to @markup.strong
@neorg.markup.bold.delimiter xxx links to NonText
@neorg.markup.free_form_delimiter xxx links to NonText
@neorg.markup.verbatim xxx guifg=#abb1bc
@neorg.markup.verbatim.delimiter xxx links to NonText
@neorg.markup.underline xxx links to @markup.underline
@neorg.markup.underline.delimiter xxx links to NonText
@neorg.markup.inline_math xxx links to @markup.math
@neorg.markup.inline_math.delimiter xxx links to NonText
@neorg.markup.strikethrough xxx links to @markup.strikethrough
@neorg.markup.strikethrough.delimiter xxx links to NonText
@neorg.markup.inline_comment xxx guifg=#80858d
@neorg.markup.inline_comment.delimiter xxx links to NonText
@neorg.markup.italic xxx links to @markup.italic
@neorg.markup.italic.delimiter xxx links to NonText
@neorg.markup.superscript xxx links to @number
@neorg.markup.superscript.delimiter xxx links to NonText
@neorg.error   xxx links to Error
@neorg.links.description xxx links to @markup.link.url
@neorg.links.description.delimiter xxx links to NonText
@neorg.links.location.external_file xxx links to @label
@neorg.links.location.external_file.prefix xxx links to @label
@neorg.links.location.generic xxx links to @type
@neorg.links.location.generic.prefix xxx links to @type
@neorg.links.location.footnote xxx links to @neorg.footnotes.title
@neorg.links.location.footnote.prefix xxx links to @neorg.footnotes.prefix
@neorg.footnotes.prefix xxx links to @punctuation.delimiter
@neorg.footnotes.title xxx links to @markup.strong
@neorg.links.location.heading.4 xxx links to @neorg.headings.4.title
@neorg.links.location.heading.4.prefix xxx links to @neorg.headings.4.prefix
@neorg.headings.4.prefix xxx links to @string
@neorg.headings.4.title xxx links to @string
@neorg.links.location.heading.6 xxx links to @neorg.headings.6.title
@neorg.links.location.heading.6.prefix xxx links to @neorg.headings.6.prefix
@neorg.headings.6.prefix xxx links to @constructor
@neorg.headings.6.title xxx links to @constructor
@neorg.links.location.heading.5 xxx links to @neorg.headings.5.title
@neorg.links.location.heading.5.prefix xxx links to @neorg.headings.5.prefix
@neorg.headings.5.prefix xxx links to @label
@neorg.headings.5.title xxx links to @label
@neorg.links.location.heading.3 xxx links to @neorg.headings.3.title
@neorg.links.location.heading.3.prefix xxx links to @neorg.headings.3.prefix
@neorg.headings.3.prefix xxx links to @constant
@neorg.headings.3.title xxx links to @constant
@neorg.links.location.heading.2 xxx links to @neorg.headings.2.title
@neorg.links.location.heading.2.prefix xxx links to @neorg.headings.2.prefix
@neorg.headings.2.prefix xxx links to @label
@neorg.headings.2.title xxx links to @label
@neorg.links.location.heading.1 xxx links to @neorg.headings.1.title
@neorg.links.location.heading.1.prefix xxx links to @neorg.headings.1.prefix
@neorg.headings.1.prefix xxx links to @attribute
@neorg.headings.1.title xxx links to @attribute
@neorg.links.location.delimiter xxx links to NonText
@neorg.links.location.url xxx links to @markup.link.url
@neorg.links.location.definition xxx links to @neorg.definitions.title
@neorg.links.location.definition.prefix xxx links to @neorg.definitions.prefix
@neorg.definitions.prefix xxx links to @punctuation.delimiter
@neorg.definitions.title xxx links to @markup.strong
@neorg.links.location.marker xxx links to @neorg.markers.title
@neorg.links.location.marker.prefix xxx links to @neorg.markers.prefix
@neorg.links.file xxx links to @comment
@neorg.links.file.delimiter xxx links to NonText
@neorg.footnotes.suffix xxx links to @punctuation.delimiter
@neorg.footnotes.content xxx links to @markup.italic
@neorg.definitions.suffix xxx links to @punctuation.delimiter
@neorg.definitions.content xxx links to @markup.italic
@neorg.lists.ordered.prefix xxx links to @keyword.repeat
@neorg.lists.unordered.prefix xxx links to @markup.list
@neorg.tags.ranged_verbatim.code_block xxx guibg=#011321
RainbowDelimiterRed xxx ctermfg=9 guifg=#cc241d
RainbowDelimiterOrange xxx ctermfg=15 guifg=#d65d0e
RainbowDelimiterYellow xxx guifg=#ffd602
RainbowDelimiterGreen xxx ctermfg=10 guifg=#689d6a
RainbowDelimiterCyan xxx ctermfg=14 guifg=#a89984
RainbowDelimiterBlue xxx guifg=#169fff
RainbowDelimiterViolet xxx guifg=#da70d6
IblIndent      xxx links to @nowl.indentChar
IblWhitespace  xxx links to Whitespace
IblScope       xxx links to @nowl.indentChar.active
@ibl           xxx cleared
@ibl.indent.char.1 xxx cterm=nocombine gui=nocombine
                   links to @nowl.indentChar
@ibl.whitespace.char.1 xxx cterm=nocombine gui=nocombine
                   links to Whitespace
@ibl.scope.char.1 xxx cterm=nocombine gui=nocombine guifg=#e06c75
@ibl.scope.underline.1 xxx cterm=underline gui=underline guisp=#e06c75
CocSelectedText xxx ctermfg=9 guifg=#fb4934
CocCodeLens    xxx ctermfg=248 guifg=#999999
CocUnderline   xxx cterm=underline gui=underline guisp=#ebdbb2
CocBold        xxx cterm=bold gui=bold
CocItalic      xxx cterm=italic gui=italic
CocStrikeThrough xxx cterm=strikethrough gui=strikethrough
CocMarkdownLink xxx ctermfg=12 guifg=#15aabf
CocDisabled    xxx ctermfg=248 guifg=#999999
CocSearch      xxx ctermfg=12 guifg=#15aabf
CocLink        xxx cterm=underline gui=underline guisp=#15aabf
CocFloatActive xxx links to CocSearch
CocFadeOut     xxx links to Conceal
CocMarkdownCode xxx links to markdownCode
markdownCode   xxx cleared
CocMarkdownHeader xxx links to markdownH1
markdownH1     xxx cleared
CocDeprecatedHighlight xxx links to CocStrikeThrough
CocUnusedHighlight xxx links to CocFadeOut
CocListSearch  xxx links to CocSearch
CocListMode    xxx links to ModeMsg
CocListPath    xxx links to Comment
CocHighlightText xxx links to CursorColumn
CocHoverRange  xxx links to Search
CocCursorRange xxx links to Search
CocLinkedEditing xxx links to CocCursorRange
CocHighlightRead xxx links to CocHighlightText
CocHighlightWrite xxx links to CocHighlightText
CocNotificationProgress xxx ctermfg=12 guifg=#15aabf
CocNotificationButton xxx links to CocUnderline
CocNotificationError xxx links to CocErrorFloat
CocErrorFloat  xxx links to DiagnosticError
CocNotificationWarning xxx links to CocWarningFloat
CocWarningFloat xxx links to DiagnosticWarn
CocNotificationInfo xxx links to CocInfoFloat
CocInfoFloat   xxx links to DiagnosticInfo
CocSnippetVisual xxx links to Visual
CocTreeTitle   xxx links to Title
CocTreeDescription xxx links to Comment
CocTreeOpenClose xxx links to CocBold
CocTreeSelected xxx links to CursorLine
CocSelectedRange xxx links to CocHighlightText
CocSymbolDefault xxx links to MoreMsg
CocPumSearch   xxx links to CocSearch
CocPumDetail   xxx links to Comment
CocPumMenu     xxx links to CocFloating
CocFloating    xxx links to NormalFloat
CocPumShortcut xxx links to Comment
CocPumDeprecated xxx links to CocStrikeThrough
CocVirtualText xxx ctermfg=12 guifg=#504945
CocPumVirtualText xxx links to CocVirtualText
CocInputBoxVirtualText xxx links to CocVirtualText
CocFloatDividingLine xxx links to CocVirtualText
CocListBlackBlack xxx guifg=#282828 guibg=#282828
CocListBlackBlue xxx guifg=#282828 guibg=#458588
CocListBlackGreen xxx guifg=#282828 guibg=#98971a
CocListBlackGrey xxx guifg=#282828 guibg=#928374
CocListBlackWhite xxx guifg=#282828 guibg=#a89984
CocListBlackCyan xxx guifg=#282828 guibg=#689d6a
CocListBlackYellow xxx guifg=#282828 guibg=#d79921
CocListBlackMagenta xxx guifg=#282828 guibg=#b16286
CocListBlackRed xxx guifg=#282828 guibg=#cc241d
CocListFgBlack xxx ctermfg=0 guifg=#282828
CocListBgBlack xxx ctermbg=0 guibg=#282828
CocListBlueBlack xxx guifg=#458588 guibg=#282828
CocListBlueBlue xxx guifg=#458588 guibg=#458588
CocListBlueGreen xxx guifg=#458588 guibg=#98971a
CocListBlueGrey xxx guifg=#458588 guibg=#928374
CocListBlueWhite xxx guifg=#458588 guibg=#a89984
CocListBlueCyan xxx guifg=#458588 guibg=#689d6a
CocListBlueYellow xxx guifg=#458588 guibg=#d79921
CocListBlueMagenta xxx guifg=#458588 guibg=#b16286
CocListBlueRed xxx guifg=#458588 guibg=#cc241d
CocListFgBlue  xxx ctermfg=12 guifg=#458588
CocListBgBlue  xxx ctermbg=12 guibg=#458588
CocListGreenBlack xxx guifg=#98971a guibg=#282828
CocListGreenBlue xxx guifg=#98971a guibg=#458588
CocListGreenGreen xxx guifg=#98971a guibg=#98971a
CocListGreenGrey xxx guifg=#98971a guibg=#928374
CocListGreenWhite xxx guifg=#98971a guibg=#a89984
CocListGreenCyan xxx guifg=#98971a guibg=#689d6a
CocListGreenYellow xxx guifg=#98971a guibg=#d79921
CocListGreenMagenta xxx guifg=#98971a guibg=#b16286
CocListGreenRed xxx guifg=#98971a guibg=#cc241d
CocListFgGreen xxx ctermfg=10 guifg=#98971a
CocListBgGreen xxx ctermbg=10 guibg=#98971a
CocListGreyBlack xxx guifg=#928374 guibg=#282828
CocListGreyBlue xxx guifg=#928374 guibg=#458588
CocListGreyGreen xxx guifg=#928374 guibg=#98971a
CocListGreyGrey xxx guifg=#928374 guibg=#928374
CocListGreyWhite xxx guifg=#928374 guibg=#a89984
CocListGreyCyan xxx guifg=#928374 guibg=#689d6a
CocListGreyYellow xxx guifg=#928374 guibg=#d79921
CocListGreyMagenta xxx guifg=#928374 guibg=#b16286
CocListGreyRed xxx guifg=#928374 guibg=#cc241d
CocListFgGrey  xxx ctermfg=248 guifg=#928374
CocListBgGrey  xxx ctermbg=248 guibg=#928374
CocListWhiteBlack xxx guifg=#a89984 guibg=#282828
CocListWhiteBlue xxx guifg=#a89984 guibg=#458588
CocListWhiteGreen xxx guifg=#a89984 guibg=#98971a
CocListWhiteGrey xxx guifg=#a89984 guibg=#928374
CocListWhiteWhite xxx guifg=#a89984 guibg=#a89984
CocListWhiteCyan xxx guifg=#a89984 guibg=#689d6a
CocListWhiteYellow xxx guifg=#a89984 guibg=#d79921
CocListWhiteMagenta xxx guifg=#a89984 guibg=#b16286
CocListWhiteRed xxx guifg=#a89984 guibg=#cc241d
CocListFgWhite xxx ctermfg=15 guifg=#a89984
CocListBgWhite xxx ctermbg=15 guibg=#a89984
CocListCyanBlack xxx guifg=#689d6a guibg=#282828
CocListCyanBlue xxx guifg=#689d6a guibg=#458588
CocListCyanGreen xxx guifg=#689d6a guibg=#98971a
CocListCyanGrey xxx guifg=#689d6a guibg=#928374
CocListCyanWhite xxx guifg=#689d6a guibg=#a89984
CocListCyanCyan xxx guifg=#689d6a guibg=#689d6a
CocListCyanYellow xxx guifg=#689d6a guibg=#d79921
CocListCyanMagenta xxx guifg=#689d6a guibg=#b16286
CocListCyanRed xxx guifg=#689d6a guibg=#cc241d
CocListFgCyan  xxx ctermfg=14 guifg=#689d6a
CocListBgCyan  xxx ctermbg=14 guibg=#689d6a
CocListYellowBlack xxx guifg=#d79921 guibg=#282828
CocListYellowBlue xxx guifg=#d79921 guibg=#458588
CocListYellowGreen xxx guifg=#d79921 guibg=#98971a
CocListYellowGrey xxx guifg=#d79921 guibg=#928374
CocListYellowWhite xxx guifg=#d79921 guibg=#a89984
CocListYellowCyan xxx guifg=#d79921 guibg=#689d6a
CocListYellowYellow xxx guifg=#d79921 guibg=#d79921
CocListYellowMagenta xxx guifg=#d79921 guibg=#b16286
CocListYellowRed xxx guifg=#d79921 guibg=#cc241d
CocListFgYellow xxx ctermfg=11 guifg=#d79921
CocListBgYellow xxx ctermbg=11 guibg=#d79921
CocListMagentaBlack xxx guifg=#b16286 guibg=#282828
CocListMagentaBlue xxx guifg=#b16286 guibg=#458588
CocListMagentaGreen xxx guifg=#b16286 guibg=#98971a
CocListMagentaGrey xxx guifg=#b16286 guibg=#928374
CocListMagentaWhite xxx guifg=#b16286 guibg=#a89984
CocListMagentaCyan xxx guifg=#b16286 guibg=#689d6a
CocListMagentaYellow xxx guifg=#b16286 guibg=#d79921
CocListMagentaMagenta xxx guifg=#b16286 guibg=#b16286
CocListMagentaRed xxx guifg=#b16286 guibg=#cc241d
CocListFgMagenta xxx ctermfg=13 guifg=#b16286
CocListBgMagenta xxx ctermbg=13 guibg=#b16286
CocListRedBlack xxx guifg=#cc241d guibg=#282828
CocListRedBlue xxx guifg=#cc241d guibg=#458588
CocListRedGreen xxx guifg=#cc241d guibg=#98971a
CocListRedGrey xxx guifg=#cc241d guibg=#928374
CocListRedWhite xxx guifg=#cc241d guibg=#a89984
CocListRedCyan xxx guifg=#cc241d guibg=#689d6a
CocListRedYellow xxx guifg=#cc241d guibg=#d79921
CocListRedMagenta xxx guifg=#cc241d guibg=#b16286
CocListRedRed  xxx guifg=#cc241d guibg=#cc241d
CocListFgRed   xxx ctermfg=9 guifg=#cc241d
CocListBgRed   xxx ctermbg=9 guibg=#cc241d
CocMenuSel     xxx ctermbg=237 guibg=#0e293f
CocListLine    xxx ctermbg=16 guibg=#152937
TelescopeResultsNumber xxx links to Number
TelescopeResultsIdentifier xxx links to Identifier
TelescopeResultsLineNr xxx links to LineNr
TelescopeResultsVariable xxx links to SpecialChar
TelescopeResultsStruct xxx links to Struct
Struct         xxx cleared
TelescopeResultsOperator xxx links to Operator
TelescopeResultsMethod xxx links to Method
Method         xxx cleared
TelescopeResultsFunction xxx links to Function
TelescopeResultsField xxx links to Function
TelescopeResultsConstant xxx links to Constant
TelescopeResultsClass xxx links to Function
TelescopePreviewMessageFillchar xxx links to TelescopePreviewMessage
TelescopePreviewMessage xxx links to TelescopePreviewNormal
TelescopePreviewNormal xxx links to TelescopeNormal
TelescopeNormal xxx links to Normal
TelescopePreviewDate xxx links to Directory
TelescopePreviewGroup xxx links to Constant
TelescopePreviewUser xxx links to Constant
TelescopePreviewSize xxx links to String
TelescopePreviewSticky xxx links to Keyword
TelescopePreviewHyphen xxx links to NonText
TelescopePreviewExecute xxx links to String
TelescopePreviewWrite xxx links to Statement
TelescopePreviewRead xxx links to Constant
TelescopePreviewSocket xxx links to Statement
TelescopePreviewLink xxx links to Special
TelescopePreviewBlock xxx links to Constant
TelescopePreviewDirectory xxx links to Directory
TelescopePreviewCharDev xxx links to Constant
TelescopePreviewPipe xxx links to Constant
TelescopePreviewMatch xxx links to Search
TelescopePreviewLine xxx links to Visual
TelescopeBorder xxx guifg=#5f7e97
TelescopePreviewBorder xxx links to TelescopeBorder
TelescopeResultsBorder xxx links to TelescopeBorder
TelescopePromptBorder xxx links to TelescopeBorder
TelescopeResultsNormal xxx links to TelescopeNormal
TelescopePromptNormal xxx links to TelescopeNormal
TelescopeMultiIcon xxx links to Identifier
TelescopeMultiSelection xxx links to Type
TelescopeSelectionCaret xxx links to TelescopeSelection
TelescopeSelection xxx guibg=#1d3b53
TelescopePromptPrefix xxx links to Identifier
TelescopeMatching xxx cterm=bold gui=bold guifg=#89a4bb
TelescopePromptCounter xxx links to NonText
TelescopeResultsDiffUntracked xxx links to NonText
TelescopeResultsDiffDelete xxx links to DiffDelete
TelescopePreviewTitle xxx links to TelescopeTitle
TelescopeTitle xxx links to TelescopeBorder
TelescopeResultsDiffAdd xxx links to DiffAdd
TelescopeResultsTitle xxx links to TelescopeTitle
TelescopeResultsDiffChange xxx links to DiffChange
TelescopePromptTitle xxx links to TelescopeTitle
TelescopeResultsSpecialComment xxx links to SpecialComment
TelescopeResultsComment xxx links to Comment
lualine_b_visual xxx guifg=#f2f4f8 guibg=#413555
lualine_a_visual xxx gui=bold guifg=#0c0c0c guibg=#be95ff
lualine_b_command xxx guifg=#f2f4f8 guibg=#0b4140
lualine_a_command xxx gui=bold guifg=#0c0c0c guibg=#08bdba
lualine_c_inactive xxx guifg=#6e6f70 guibg=#0c0c0c
lualine_b_inactive xxx gui=bold guifg=#7b7c7e guibg=#0c0c0c
lualine_a_inactive xxx guifg=#78a9ff guibg=#0c0c0c
lualine_c_normal xxx guifg=#b6b8bb guibg=#0c0c0c
lualine_b_normal xxx guifg=#f2f4f8 guibg=#2c3b55
lualine_a_normal xxx gui=bold guifg=#0c0c0c guibg=#78a9ff
lualine_b_terminal xxx guifg=#f2f4f8 guibg=#1b4a4a
lualine_a_terminal xxx gui=bold guifg=#0c0c0c guibg=#3ddbd9
lualine_b_replace xxx guifg=#f2f4f8 guibg=#502135
lualine_a_replace xxx gui=bold guifg=#0c0c0c guibg=#ee5396
lualine_b_insert xxx guifg=#f2f4f8 guibg=#144128
lualine_a_insert xxx gui=bold guifg=#0c0c0c guibg=#25be6a
lualine_x_progress_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_progress_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_x_progress_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_x_progress_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_x_progress_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_x_progress_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_progress_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_command xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_filesize_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_x_4_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_4_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_x_fileformat_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_fileformat_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_x_diff_added_normal xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_insert xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_visual xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_replace xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_command xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_terminal xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_added_inactive xxx guifg=#98be65 guibg=#0c0c0c
lualine_x_diff_modified_normal xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_insert xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_visual xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_replace xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_command xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_terminal xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_modified_inactive xxx guifg=#ff8800 guibg=#0c0c0c
lualine_x_diff_removed_normal xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_insert xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_visual xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_replace xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_command xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_terminal xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_diff_removed_inactive xxx guifg=#ec5f67 guibg=#0c0c0c
lualine_x_7_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_7_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_x_7_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_x_7_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_x_7_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_x_7_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_x_7_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_c_8_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_8_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_c_9_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_9_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_command xxx guifg=#c678dd guibg=#0c0c0c
lualine_c_location_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_location_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_command xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_11_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_diagnostics_error_normal xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_insert xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_visual xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_replace xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_command xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_terminal xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_error_inactive xxx guifg=#ef5350 guibg=#0c0c0c
lualine_c_diagnostics_warn_normal xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_insert xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_visual xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_replace xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_command xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_terminal xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_warn_inactive xxx guifg=#fce094 guibg=#0c0c0c
lualine_c_diagnostics_info_normal xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_insert xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_visual xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_replace xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_command xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_terminal xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_info_inactive xxx guifg=#8cf8f7 guibg=#0c0c0c
lualine_c_diagnostics_hint_normal xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_insert xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_visual xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_replace xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_command xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_terminal xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_diagnostics_hint_inactive xxx guifg=#a6dbff guibg=#0c0c0c
lualine_c_14_normal xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_insert xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_visual xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_replace xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_command xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_terminal xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_14_inactive xxx gui=bold guifg=#ffffff guibg=#0c0c0c
lualine_c_15_normal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_insert xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_visual xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_replace xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_command xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_terminal xxx guifg=#51afef guibg=#0c0c0c
lualine_c_15_inactive xxx guifg=#51afef guibg=#0c0c0c
lualine_c_branch_normal xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_insert xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_visual xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_replace xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_command xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_terminal xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
lualine_c_branch_inactive xxx gui=bold guifg=#a9a1e1 guibg=#0c0c0c
GitSignsAdd    xxx guifg=#9ccc65
GitSignsChange xxx guifg=#e2b93d
GitSignsDelete xxx guifg=#ef5350
GitSignsChangedelete xxx guifg=#e2b93d
GitSignsTopdelete xxx links to GitSignsDelete
GitSignsUntracked xxx links to GitSignsAdd
GitSignsAddNr  xxx links to GitSignsAdd
GitSignsChangeNr xxx links to GitSignsChange
GitSignsDeleteNr xxx links to GitSignsDelete
GitSignsChangedeleteNr xxx links to GitSignsChangeNr
GitSignsTopdeleteNr xxx links to GitSignsDeleteNr
GitSignsUntrackedNr xxx links to GitSignsAddNr
GitSignsAddLn  xxx links to DiffAdd
GitSignsChangeLn xxx links to DiffChange
GitSignsChangedeleteLn xxx links to GitSignsChangeLn
GitSignsUntrackedLn xxx links to GitSignsAddLn
GitSignsAddCul xxx links to GitSignsAdd
GitSignsChangeCul xxx links to GitSignsChange
GitSignsDeleteCul xxx links to GitSignsDelete
GitSignsChangedeleteCul xxx links to GitSignsChangeCul
GitSignsTopdeleteCul xxx links to GitSignsDeleteCul
GitSignsUntrackedCul xxx links to GitSignsAddCul
GitSignsStagedAdd xxx guifg=#597b60
GitSignsStagedChange xxx guifg=#467c7b
GitSignsStagedDelete xxx guifg=#7f605c
GitSignsStagedChangedelete xxx guifg=#467c7b
GitSignsStagedTopdelete xxx guifg=#7f605c
GitSignsStagedAddNr xxx guifg=#597b60
GitSignsStagedChangeNr xxx guifg=#467c7b
GitSignsStagedDeleteNr xxx guifg=#7f605c
GitSignsStagedChangedeleteNr xxx guifg=#467c7b
GitSignsStagedTopdeleteNr xxx guifg=#7f605c
GitSignsStagedAddLn xxx guifg=#77787c guibg=#005523
GitSignsStagedChangeLn xxx guifg=#77787c guibg=#4f5258
GitSignsStagedChangedeleteLn xxx guifg=#77787c guibg=#4f5258
GitSignsStagedAddCul xxx guifg=#597b60
GitSignsStagedChangeCul xxx guifg=#467c7b
GitSignsStagedDeleteCul xxx guifg=#7f605c
GitSignsStagedChangedeleteCul xxx guifg=#467c7b
GitSignsStagedTopdeleteCul xxx guifg=#7f605c
GitSignsAddPreview xxx links to DiffAdd
GitSignsDeletePreview xxx links to DiffDelete
GitSignsCurrentLineBlame xxx guifg=#36414a
GitSignsAddInline xxx links to TermCursor
GitSignsDeleteInline xxx links to TermCursor
GitSignsChangeInline xxx links to TermCursor
GitSignsAddLnInline xxx links to GitSignsAddInline
GitSignsChangeLnInline xxx links to GitSignsChangeInline
GitSignsDeleteLnInline xxx links to GitSignsDeleteInline
GitSignsDeleteVirtLn xxx links to DiffDelete
GitSignsDeleteVirtLnInLine xxx links to GitSignsDeleteLnInline
GitSignsVirtLnum xxx links to GitSignsDeleteVirtLn
RainbowRed     xxx guifg=#e06c75
RainbowYellow  xxx guifg=#e5c07b
RainbowBlue    xxx guifg=#61afef
RainbowOrange  xxx guifg=#d19a66
RainbowGreen   xxx guifg=#98c379
RainbowViolet  xxx guifg=#c678dd
RainbowCyan    xxx guifg=#56b6c2
@ibl.scope.char.2 xxx cterm=nocombine gui=nocombine guifg=#e5c07b
@ibl.scope.underline.2 xxx cterm=underline gui=underline guisp=#e5c07b
@ibl.scope.char.3 xxx cterm=nocombine gui=nocombine guifg=#61afef
@ibl.scope.underline.3 xxx cterm=underline gui=underline guisp=#61afef
@ibl.scope.char.4 xxx cterm=nocombine gui=nocombine guifg=#d19a66
@ibl.scope.underline.4 xxx cterm=underline gui=underline guisp=#d19a66
@ibl.scope.char.5 xxx cterm=nocombine gui=nocombine guifg=#98c379
@ibl.scope.underline.5 xxx cterm=underline gui=underline guisp=#98c379
@ibl.scope.char.6 xxx cterm=nocombine gui=nocombine guifg=#c678dd
@ibl.scope.underline.6 xxx cterm=underline gui=underline guisp=#c678dd
@ibl.scope.char.7 xxx cterm=nocombine gui=nocombine guifg=#56b6c2
@ibl.scope.underline.7 xxx cterm=underline gui=underline guisp=#56b6c2
TinyInlineInvDiagnosticVirtualTextHintNoBg xxx guifg=#2d3b45
TinyInlineInvDiagnosticVirtualTextInfoNoBg xxx guifg=#264343
TinyInlineInvDiagnosticVirtualTextWarnNoBg xxx guifg=#443c28
TinyInlineInvDiagnosticVirtualTextErrorNoBg xxx guifg=#411616
TinyInlineInvDiagnosticVirtualTextHint xxx guifg=#2d3b45 guibg=#021320
TinyInlineInvDiagnosticVirtualTextInfo xxx guifg=#264343 guibg=#021320
TinyInlineInvDiagnosticVirtualTextWarn xxx guifg=#443c28 guibg=#021320
TinyInlineInvDiagnosticVirtualTextError xxx guifg=#411616 guibg=#021320
TinyInlineDiagnosticVirtualTextArrowNoBg xxx guifg=#7e97ac
TinyInlineDiagnosticVirtualTextArrow xxx guifg=#7e97ac guibg=#021320
TinyInlineDiagnosticVirtualTextOk xxx guifg=#a6dbff guibg=#2d3b45
TinyInlineDiagnosticVirtualTextHint xxx guifg=#a6dbff guibg=#2d3b45
TinyInlineDiagnosticVirtualTextInfo xxx guifg=#8cf8f7 guibg=#264343
TinyInlineDiagnosticVirtualTextWarn xxx guifg=#fce094 guibg=#443c28
TinyInlineDiagnosticVirtualTextError xxx guifg=#ef5350 guibg=#411616
TinyInlineDiagnosticVirtualTextBg xxx guibg=#021320
NvimSurroundHighlight xxx links to Visual
DevIconDefault xxx ctermfg=66 guifg=#6d8086
DevIconFortran xxx ctermfg=97 guifg=#734f96
DevIconAi      xxx ctermfg=185 guifg=#cbcb41
DevIconUI      xxx ctermfg=17 guifg=#0c306e
DevIconHurl    xxx ctermfg=198 guifg=#ff0288
DevIconMpp     xxx ctermfg=74 guifg=#519aba
DevIconMp4     xxx ctermfg=208 guifg=#fd971f
DevIconNim     xxx ctermfg=220 guifg=#f3d400
DevIconMPEGAudioLayerIII xxx ctermfg=39 guifg=#00afff
DevIconMOV     xxx ctermfg=208 guifg=#fd971f
DevIconM3u     xxx ctermfg=211 guifg=#ed95ae
DevIconArch    xxx ctermfg=67 guifg=#0f94d2
DevIconMobi    xxx ctermfg=215 guifg=#eab16d
DevIconLocalization xxx ctermfg=31 guifg=#2596be
DevIconPls     xxx ctermfg=211 guifg=#ed95ae
DevIconErb     xxx ctermfg=52 guifg=#701516
DevIconMkv     xxx ctermfg=208 guifg=#fd971f
DevIconHrl     xxx ctermfg=163 guifg=#b83998
DevIconErl     xxx ctermfg=163 guifg=#b83998
DevIconEpp     xxx ctermfg=214 guifg=#ffa61a
DevIconPrisma  xxx ctermfg=62 guifg=#5a67d8
DevIconSway    xxx ctermfg=64 guifg=#68751c
DevIconMd5     xxx ctermfg=103 guifg=#8c86af
DevIconQtile   xxx ctermfg=231 guifg=#ffffff
DevIconPdf     xxx ctermfg=124 guifg=#b30b00
DevIconJWM     xxx ctermfg=32 guifg=#0078cd
DevIconMagnet  xxx ctermfg=124 guifg=#a51b16
DevIconM4V     xxx ctermfg=208 guifg=#fd971f
DevIconMPEG4   xxx ctermfg=39 guifg=#00afff
DevIconHyprland xxx ctermfg=37 guifg=#00aaae
DevIconGarudaLinux xxx ctermfg=33 guifg=#2974e1
DevIconFreeBSD xxx ctermfg=160 guifg=#c90f02
DevIconEnlightenment xxx ctermfg=231 guifg=#ffffff
DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
DevIcondwm     xxx ctermfg=31 guifg=#1177aa
DevIconBSPWM   xxx ctermfg=236 guifg=#2f2f2f
DevIconSharedObject xxx ctermfg=253 guifg=#dcddd6
DevIconawesome xxx ctermfg=59 guifg=#535d6c
DevIconDevuan  xxx ctermfg=238 guifg=#404a52
DevIconXfce    xxx ctermfg=74 guifg=#00aadf
DevIconDeepin  xxx ctermfg=39 guifg=#2ca7f8
DevIconKDEPlasma xxx ctermfg=33 guifg=#1b89f4
DevIconDebian  xxx ctermfg=88 guifg=#a80030
DevIconTypoScript xxx ctermfg=208 guifg=#ff8700
DevIconMATE    xxx ctermfg=113 guifg=#9bda5c
DevIconCrystalLinux xxx ctermfg=129 guifg=#a900ff
DevIconLXQt    xxx ctermfg=32 guifg=#0191d2
DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
DevIconLXDE    xxx ctermfg=248 guifg=#a4a4a4
DevIconBigLinux xxx ctermfg=38 guifg=#189fc8
DevIconGNOME   xxx ctermfg=231 guifg=#ffffff
DevIconBlender xxx ctermfg=208 guifg=#ea7600
DevIconArtix   xxx ctermfg=38 guifg=#41b4d7
DevIconCinnamon xxx ctermfg=166 guifg=#dc682e
DevIconArcoLinux xxx ctermfg=68 guifg=#6690eb
DevIconBudgie  xxx ctermfg=240 guifg=#4e5361
DevIconArchlabs xxx ctermfg=238 guifg=#503f42
DevIconZorin   xxx ctermfg=39 guifg=#14a1e8
DevIconArchcraft xxx ctermfg=108 guifg=#86bba3
DevIconXeroLinux xxx ctermfg=104 guifg=#888fe2
DevIconAOSC    xxx ctermfg=124 guifg=#c00000
DevIconVanillaOS xxx ctermfg=214 guifg=#fabd4d
DevIconAlpine  xxx ctermfg=24 guifg=#0d597f
DevIconAlmalinux xxx ctermfg=203 guifg=#ff4649
DevIconTrisquelGNULinux xxx ctermfg=25 guifg=#0f58b6
DevIconTails   xxx ctermfg=54 guifg=#56347c
DevIconApple   xxx ctermfg=248 guifg=#a2aaad
DevIconSolus   xxx ctermfg=239 guifg=#4b5163
DevIconZst     xxx ctermfg=214 guifg=#eca517
DevIconSlackware xxx ctermfg=61 guifg=#475fa9
DevIconSabayon xxx ctermfg=251 guifg=#c6c6c6
DevIconXz      xxx ctermfg=214 guifg=#eca517
DevIconXpi     xxx ctermfg=196 guifg=#ff1b01
DevIconRaspberryPiOS xxx ctermfg=161 guifg=#be1848
DevIconQubesOS xxx ctermfg=33 guifg=#3774d8
DevIconXcLocalization xxx ctermfg=31 guifg=#2596be
DevIconPuppyLinux xxx ctermfg=145 guifg=#a2aeb9
DevIconJsonc   xxx ctermfg=185 guifg=#cbcb41
DevIconMakefile xxx ctermfg=66 guifg=#6d8086
DevIconDocx    xxx ctermfg=26 guifg=#185abd
DevIconGitCommit xxx ctermfg=196 guifg=#f54d27
DevIconpostmarketOS xxx ctermfg=28 guifg=#009900
DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
DevIconMdx     xxx ctermfg=74 guifg=#519aba
DevIconLinux   xxx ctermfg=231 guifg=#fdfdfb
DevIconPpt     xxx ctermfg=160 guifg=#cb4a32
DevIconPsb     xxx ctermfg=74 guifg=#519aba
DevIconPsd     xxx ctermfg=74 guifg=#519aba
DevIconWebpack xxx ctermfg=74 guifg=#519aba
DevIconWebp    xxx ctermfg=140 guifg=#a074c4
DevIconWebm    xxx ctermfg=208 guifg=#fd971f
DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
DevIconSuo     xxx ctermfg=98 guifg=#854cc7
DevIconSublime xxx ctermfg=166 guifg=#e37933
DevIconSlim    xxx ctermfg=196 guifg=#e34c26
DevIconRproj   xxx ctermfg=29 guifg=#358a5b
DevIconParabolaGNULinuxLibre xxx ctermfg=103 guifg=#797dac
DevIconPyo     xxx ctermfg=222 guifg=#ffe291
DevIconPyd     xxx ctermfg=222 guifg=#ffe291
DevIconPyc     xxx ctermfg=222 guifg=#ffe291
DevIconProcfile xxx ctermfg=140 guifg=#a074c4
DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
DevIconOpusAudioFile xxx ctermfg=24 guifg=#0075aa
DevIconMint    xxx ctermfg=108 guifg=#87c095
DevIconMaterial xxx ctermfg=163 guifg=#b83998
DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
DevIconLicense xxx ctermfg=185 guifg=#cbcb41
DevIconNixOS   xxx ctermfg=110 guifg=#7ab1db
DevIconIco     xxx ctermfg=185 guifg=#cbcb41
DevIconSql     xxx ctermfg=188 guifg=#dad8d8
DevIconHaxe    xxx ctermfg=208 guifg=#ea8220
DevIconMXLinux xxx ctermfg=231 guifg=#ffffff
DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
DevIconGif     xxx ctermfg=140 guifg=#a074c4
DevIconFsscript xxx ctermfg=74 guifg=#519aba
DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
DevIconDropbox xxx ctermfg=27 guifg=#0061fe
DevIconFsharp  xxx ctermfg=74 guifg=#519aba
DevIconDoc     xxx ctermfg=26 guifg=#185abd
DevIconCson    xxx ctermfg=185 guifg=#cbcb41
DevIconCp      xxx ctermfg=74 guifg=#519aba
DevIconMageia  xxx ctermfg=67 guifg=#2397d4
DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
DevIconLXLE    xxx ctermfg=238 guifg=#474747
DevIconGemfile xxx ctermfg=52 guifg=#701516
DevIconBrewfile xxx ctermfg=52 guifg=#701516
DevIconBQN     xxx ctermfg=23 guifg=#2b7067
DevIconAvif    xxx ctermfg=140 guifg=#a074c4
DevIconAPL     xxx ctermfg=214 guifg=#ffa500
DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
DevIconXls     xxx ctermfg=29 guifg=#207245
DevIconXlsx    xxx ctermfg=29 guifg=#207245
DevIconKDEneon xxx ctermfg=37 guifg=#20a6a4
DevIconKali    xxx ctermfg=69 guifg=#2777ff
DevIconIllumos xxx ctermfg=196 guifg=#ff430f
DevIconHyperbolaGNULinuxLibre xxx ctermfg=250 guifg=#c0c0c0
DevIconSha256  xxx ctermfg=103 guifg=#8c86af
DevIconRobotsTxt xxx ctermfg=60 guifg=#5d7096
DevIconZip     xxx ctermfg=214 guifg=#eca517
DevIconMixLock xxx ctermfg=140 guifg=#a074c4
DevIconGroovy  xxx ctermfg=24 guifg=#4a687c
DevIconEditorConfig xxx ctermfg=255 guifg=#fff2f2
DevIconMpv     xxx ctermfg=53 guifg=#3b1342
DevIconSte     xxx ctermfg=101 guifg=#839463
DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
DevIconGoMod   xxx ctermfg=74 guifg=#519aba
DevIconSolveSpace xxx ctermfg=101 guifg=#839463
DevIconFsi     xxx ctermfg=74 guifg=#519aba
DevIconSolidWorksPrt xxx ctermfg=101 guifg=#839463
DevIconSolidWorksAsm xxx ctermfg=101 guifg=#839463
DevIconBackup  xxx ctermfg=66 guifg=#6d8086
DevIconSketchUp xxx ctermfg=101 guifg=#839463
DevIconKrita   xxx ctermfg=201 guifg=#f245fb
DevIconGitConfig xxx ctermfg=196 guifg=#f54d27
DevIconLinuxKernelObject xxx ctermfg=253 guifg=#dcddd6
DevIconPhp     xxx ctermfg=140 guifg=#a074c4
DevIconExs     xxx ctermfg=140 guifg=#a074c4
DevIconKiCad   xxx ctermfg=231 guifg=#ffffff
DevIconCMake   xxx ctermfg=66 guifg=#6d8086
DevIconElf     xxx ctermfg=124 guifg=#9f0500
DevIconEex     xxx ctermfg=140 guifg=#a074c4
DevIconCobol   xxx ctermfg=25 guifg=#005ca5
DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
DevIconKdenlive xxx ctermfg=110 guifg=#83b8f2
DevIconTxt     xxx ctermfg=113 guifg=#89e051
DevIconElm     xxx ctermfg=74 guifg=#519aba
DevIconKdbx    xxx ctermfg=71 guifg=#529b34
DevIconPatch   xxx ctermfg=239 guifg=#41535b
DevIconProlog  xxx ctermfg=179 guifg=#e4b854
DevIconKdb     xxx ctermfg=71 guifg=#529b34
DevIconLua     xxx ctermfg=74 guifg=#51a0cf
DevIconKbx     xxx ctermfg=243 guifg=#737672
DevIconPp      xxx ctermfg=214 guifg=#ffa61a
DevIconHypridle xxx ctermfg=37 guifg=#00aaae
DevIconVRML    xxx ctermfg=102 guifg=#888888
DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
DevIconJpegXl  xxx ctermfg=140 guifg=#a074c4
DevIconTypeScript xxx ctermfg=74 guifg=#519aba
DevIconWebOpenFontFormat xxx ctermfg=255 guifg=#ececec
DevIconGruntfile xxx ctermfg=166 guifg=#e37933
DevIconSig     xxx ctermfg=166 guifg=#e37933
DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
DevIconWindowsMediaAudio xxx ctermfg=39 guifg=#00afff
DevIconBash    xxx ctermfg=113 guifg=#89e051
DevIconPl      xxx ctermfg=74 guifg=#519aba
DevIconGradleWrapperProperties xxx ctermfg=24 guifg=#005f87
DevIconGradleProperties xxx ctermfg=24 guifg=#005f87
DevIconIso     xxx ctermfg=181 guifg=#d0bec8
DevIconObjectiveCPlusPlus xxx ctermfg=74 guifg=#519aba
DevIconFreeCADConfig xxx ctermfg=160 guifg=#cb0d0d
DevIconWaveformAudioFile xxx ctermfg=39 guifg=#00afff
DevIconMd      xxx ctermfg=253 guifg=#dddddd
DevIconKiCadCache xxx ctermfg=231 guifg=#ffffff
DevIconXresources xxx ctermfg=196 guifg=#e54d18
DevIconImg     xxx ctermfg=181 guifg=#d0bec8
DevIconImage   xxx ctermfg=181 guifg=#d0bec8
DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
DevIconIgs     xxx ctermfg=101 guifg=#839463
DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
DevIconIges    xxx ctermfg=101 guifg=#839463
DevIconIge     xxx ctermfg=101 guifg=#839463
DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
DevIconRs      xxx ctermfg=216 guifg=#dea584
DevIconIfb     xxx ctermfg=18 guifg=#2b2e83
DevIconHtm     xxx ctermfg=196 guifg=#e34c26
DevIconGemspec xxx ctermfg=52 guifg=#701516
DevIconIcs     xxx ctermfg=18 guifg=#2b2e83
DevIconH       xxx ctermfg=140 guifg=#a074c4
DevIconIcalendar xxx ctermfg=18 guifg=#2b2e83
DevIconZshprofile xxx ctermfg=113 guifg=#89e051
DevIconIcal    xxx ctermfg=18 guifg=#2b2e83
DevIconCommitlintConfig xxx ctermfg=30 guifg=#2b9689
DevIconIxx     xxx ctermfg=74 guifg=#519aba
DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
DevIconTxz     xxx ctermfg=214 guifg=#eca517
DevIconEdn     xxx ctermfg=74 guifg=#519aba
DevIconStep    xxx ctermfg=101 guifg=#839463
DevIconVimrc   xxx ctermfg=28 guifg=#019833
DevIconGvimrc  xxx ctermfg=28 guifg=#019833
DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
DevIconTypoScriptConfig xxx ctermfg=208 guifg=#ff8700
DevIconXsession xxx ctermfg=196 guifg=#e54d18
DevIconXInitrc xxx ctermfg=196 guifg=#e54d18
DevIconRmd     xxx ctermfg=74 guifg=#519aba
DevIconXauthority xxx ctermfg=196 guifg=#e54d18
DevIconTorrent xxx ctermfg=43 guifg=#44cda8
DevIconSRCINFO xxx ctermfg=67 guifg=#0f94d2
DevIconBazelBuild xxx ctermfg=113 guifg=#89e051
DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
DevIconPrettierIgnore xxx ctermfg=33 guifg=#4285f4
DevIconPrettierConfig xxx ctermfg=33 guifg=#4285f4
DevIconnode    xxx ctermfg=71 guifg=#5fa04e
DevIconNuxtConfig xxx ctermfg=42 guifg=#00c58e
DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
DevIconMailmap xxx ctermfg=196 guifg=#f54d27
DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
DevIconGradle  xxx ctermfg=24 guifg=#005f87
DevIconGTK     xxx ctermfg=231 guifg=#ffffff
DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
DevIconHeex    xxx ctermfg=140 guifg=#a074c4
DevIconGitBlameIgnore xxx ctermfg=196 guifg=#f54d27
DevIconEslintIgnore xxx ctermfg=56 guifg=#4b32c3
DevIconEnv     xxx ctermfg=227 guifg=#faf743
DevIconTerminal xxx ctermfg=34 guifg=#31b53e
DevIconDsStore xxx ctermfg=239 guifg=#41535b
DevIconCheckhealth xxx ctermfg=75 guifg=#75b4fb
DevIconBashProfile xxx ctermfg=113 guifg=#89e051
DevIconLuaurc  xxx ctermfg=75 guifg=#00a2ff
DevIconLrc     xxx ctermfg=214 guifg=#ffb713
DevIconGradleSettings xxx ctermfg=24 guifg=#005f87
DevIconGradleBuildScript xxx ctermfg=24 guifg=#005f87
DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
DevIconFIGletFontControl xxx ctermfg=255 guifg=#ececec
DevIconFreeLosslessAudioCodec xxx ctermfg=24 guifg=#0075aa
DevIconFdmdownload xxx ctermfg=43 guifg=#44cda8
DevIconFreeCAD xxx ctermfg=160 guifg=#cb0d0d
DevIconXml     xxx ctermfg=166 guifg=#e37933
DevIconTgz     xxx ctermfg=214 guifg=#eca517
DevIcon3DObjectFile xxx ctermfg=102 guifg=#888888
DevIconMarkdown xxx ctermfg=253 guifg=#dddddd
DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
DevIconExe     xxx ctermfg=124 guifg=#9f0500
DevIconTestTs  xxx ctermfg=74 guifg=#519aba
DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
DevIconEpub    xxx ctermfg=215 guifg=#eab16d
DevIconToml    xxx ctermfg=124 guifg=#9c4221
DevIconLhs     xxx ctermfg=140 guifg=#a074c4
DevIconEmbeddedOpenTypeFont xxx ctermfg=255 guifg=#ececec
DevIconTex     xxx ctermfg=22 guifg=#3d6117
DevIconElisp   xxx ctermfg=97 guifg=#8172be
DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
DevIconVue     xxx ctermfg=113 guifg=#8dc149
DevIconGv      xxx ctermfg=24 guifg=#30638e
DevIconDot     xxx ctermfg=24 guifg=#30638e
DevIconIni     xxx ctermfg=66 guifg=#6d8086
DevIconBat     xxx ctermfg=191 guifg=#c1f12e
DevIconVHDL    xxx ctermfg=28 guifg=#019833
DevIconLogos   xxx ctermfg=74 guifg=#519aba
DevIconDart    xxx ctermfg=25 guifg=#03589c
DevIconMl      xxx ctermfg=166 guifg=#e37933
DevIconMli     xxx ctermfg=166 guifg=#e37933
DevIconCue     xxx ctermfg=211 guifg=#ed95ae
DevIconcuda    xxx ctermfg=113 guifg=#89e051
DevIconcudah   xxx ctermfg=140 guifg=#a074c4
DevIconCsv     xxx ctermfg=113 guifg=#89e051
DevIconCss     xxx ctermfg=75 guifg=#42a5f5
DevIconVlang   xxx ctermfg=67 guifg=#5d87bf
DevIconTmux    xxx ctermfg=34 guifg=#14ba19
DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
DevIconRazorPage xxx ctermfg=56 guifg=#512bd4
DevIconTailwindConfig xxx ctermfg=45 guifg=#20c2e3
DevIconJpg     xxx ctermfg=140 guifg=#a074c4
DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
DevIconPng     xxx ctermfg=140 guifg=#a074c4
DevIconSvelteConfig xxx ctermfg=196 guifg=#ff3e00
DevIconTsx     xxx ctermfg=26 guifg=#1354bf
DevIconCts     xxx ctermfg=74 guifg=#519aba
DevIconMts     xxx ctermfg=74 guifg=#519aba
DevIconRakefile xxx ctermfg=52 guifg=#701516
DevIconQt      xxx ctermfg=77 guifg=#40cd52
DevIconPy.typed xxx ctermfg=214 guifg=#ffbc03
DevIconPrusaSlicer xxx ctermfg=202 guifg=#ec6b23
DevIconCSharpProject xxx ctermfg=56 guifg=#512bd4
DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
DevIconAutoCADDxf xxx ctermfg=101 guifg=#839463
DevIconXul     xxx ctermfg=166 guifg=#e37933
DevIconAutoCADDwg xxx ctermfg=101 guifg=#839463
DevIconPub     xxx ctermfg=222 guifg=#e3c58e
DevIconConfig  xxx ctermfg=66 guifg=#6d8086
DevIconThunderbird xxx ctermfg=33 guifg=#137be1
DevIconGentoo  xxx ctermfg=146 guifg=#b1abce
DevIconFedora  xxx ctermfg=17 guifg=#072a5e
DevIconPackageLockJson xxx ctermfg=52 guifg=#7a0d21
DevIconDownload xxx ctermfg=43 guifg=#44cda8
DevIconDll     xxx ctermfg=52 guifg=#4d2c0b
DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
DevIconRedhat  xxx ctermfg=196 guifg=#ee0000
DevIconR       xxx ctermfg=25 guifg=#2266ba
DevIconCpp     xxx ctermfg=74 guifg=#519aba
DevIconConfigRu xxx ctermfg=52 guifg=#701516
DevIconDiff    xxx ctermfg=239 guifg=#41535b
DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
DevIconDconf   xxx ctermfg=231 guifg=#ffffff
DevIconJson    xxx ctermfg=185 guifg=#cbcb41
DevIconVim     xxx ctermfg=28 guifg=#019833
DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
DevIconTypeScriptDeclaration xxx ctermfg=172 guifg=#d59855
DevIconReScript xxx ctermfg=167 guifg=#cc3e44
DevIconBz2     xxx ctermfg=214 guifg=#eca517
DevIconHuff    xxx ctermfg=56 guifg=#4242c7
DevIconFsx     xxx ctermfg=74 guifg=#519aba
DevIconKritarc xxx ctermfg=201 guifg=#f245fb
DevIconNushell xxx ctermfg=36 guifg=#3aa675
DevIconKritadisplayrc xxx ctermfg=201 guifg=#f245fb
DevIconBzl     xxx ctermfg=113 guifg=#89e051
DevIconKdenliverc xxx ctermfg=110 guifg=#83b8f2
DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
DevIconKdenliveLayoutsrc xxx ctermfg=110 guifg=#83b8f2
DevIconKDEglobals xxx ctermfg=32 guifg=#1c99f3
DevIconSln     xxx ctermfg=98 guifg=#854cc7
DevIconLog     xxx guifg=#81e043
DevIconZshenv  xxx ctermfg=113 guifg=#89e051
DevIconKalgebrarc xxx ctermfg=32 guifg=#1c99f3
DevIconPy      xxx ctermfg=214 guifg=#ffbc03
DevIconJustfile xxx ctermfg=66 guifg=#6d8086
DevIconJs      xxx ctermfg=185 guifg=#cbcb41
DevIconCrdownload xxx ctermfg=43 guifg=#44cda8
DevIconCantorrc xxx ctermfg=32 guifg=#1c99f3
DevIconBlade   xxx ctermfg=203 guifg=#f05340
DevIconIonic   xxx ctermfg=33 guifg=#4f8ff7
DevIconBz      xxx ctermfg=214 guifg=#eca517
DevIconGuix    xxx ctermfg=220 guifg=#ffcc00
DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
DevIconi3      xxx ctermfg=255 guifg=#e8ebee
DevIconI18nConfig xxx ctermfg=104 guifg=#7986cb
DevIconFs      xxx ctermfg=74 guifg=#519aba
DevIconLib     xxx ctermfg=52 guifg=#4d2c0b
DevIconSml     xxx ctermfg=166 guifg=#e37933
DevIconElementary xxx ctermfg=67 guifg=#5890c2
DevIconD       xxx ctermfg=28 guifg=#427819
DevIconClojureDart xxx ctermfg=74 guifg=#519aba
DevIconObjectiveC xxx ctermfg=111 guifg=#599eff
DevIconNix     xxx ctermfg=110 guifg=#7ebae4
DevIconParrot  xxx ctermfg=45 guifg=#54deff
DevIconManjaro xxx ctermfg=35 guifg=#33b959
DevIconopenSUSE xxx ctermfg=70 guifg=#6fb424
DevIconRockyLinux xxx ctermfg=36 guifg=#0fb37d
DevIconCxxm    xxx ctermfg=74 guifg=#519aba
DevIconCppm    xxx ctermfg=74 guifg=#519aba
DevIconCPlusPlusModule xxx ctermfg=204 guifg=#f34b7d
DevIconHpp     xxx ctermfg=140 guifg=#a074c4
DevIconHxx     xxx ctermfg=140 guifg=#a074c4
DevIconKubuntu xxx ctermfg=32 guifg=#007ac2
DevIconGDScript xxx ctermfg=66 guifg=#6d8086
DevIconCxx     xxx ctermfg=74 guifg=#519aba
DevIconBz3     xxx ctermfg=214 guifg=#eca517
DevIconTor     xxx ctermfg=74 guifg=#519aba
DevIconLocOS   xxx ctermfg=214 guifg=#fab402
DevIconHh      xxx ctermfg=140 guifg=#a074c4
DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
DevIconC       xxx ctermfg=111 guifg=#599eff
DevIconBicep   xxx ctermfg=74 guifg=#519aba
DevIconFluxbox xxx ctermfg=240 guifg=#555555
DevIconxmonad  xxx ctermfg=203 guifg=#fd4d5d
DevIconZigObjectNotation xxx ctermfg=172 guifg=#f69a1b
DevIconDump    xxx ctermfg=188 guifg=#dad8d8
DevIconMustache xxx ctermfg=166 guifg=#e37933
DevIconFusion360 xxx ctermfg=101 guifg=#839463
DevIconBin     xxx ctermfg=124 guifg=#9f0500
DevIcon.zshrc  xxx ctermfg=65 guifg=#428850
DevIconHbs     xxx ctermfg=202 guifg=#f0772b
DevIconClojureJS xxx ctermfg=74 guifg=#519aba
DevIconClojureC xxx ctermfg=113 guifg=#8dc149
DevIconClojure xxx ctermfg=113 guifg=#8dc149
DevIconMojo    xxx ctermfg=196 guifg=#ff4c1f
DevIconSha384  xxx ctermfg=103 guifg=#8c86af
DevIconWavPack xxx ctermfg=39 guifg=#00afff
DevIconAzureCli xxx ctermfg=32 guifg=#0078d4
DevIconConf    xxx ctermfg=66 guifg=#6d8086
DevIconScss    xxx ctermfg=204 guifg=#f55385
DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
DevIconAsc     xxx ctermfg=242 guifg=#576d7f
DevIconPop_OS  xxx ctermfg=73 guifg=#48b9c7
DevIconScheme  xxx ctermfg=255 guifg=#eeeeee
DevIconTypoScriptSetup xxx ctermfg=208 guifg=#ff8700
DevIconScala   xxx ctermfg=167 guifg=#cc3e44
DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
DevIconSass    xxx ctermfg=204 guifg=#f55385
DevIconGleam   xxx ctermfg=219 guifg=#ffaff3
DevIconApp     xxx ctermfg=124 guifg=#9f0500
DevIconapk     xxx ctermfg=35 guifg=#34a853
DevIconRake    xxx ctermfg=52 guifg=#701516
DevIconBazel   xxx ctermfg=113 guifg=#89e051
DevIconAndroid xxx ctermfg=35 guifg=#34a853
DevIconEx      xxx ctermfg=140 guifg=#a074c4
DevIconBlueprint xxx ctermfg=68 guifg=#5796e2
DevIconVoid    xxx ctermfg=23 guifg=#295340
DevIconGodotTextScene xxx ctermfg=66 guifg=#6d8086
DevIconLeex    xxx ctermfg=140 guifg=#a074c4
DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
DevIconVerilog xxx ctermfg=28 guifg=#019833
DevIconAudioInterchangeFileFormat xxx ctermfg=39 guifg=#00afff
DevIconBicepParameters xxx ctermfg=133 guifg=#9f74b3
DevIconAdvancedAudioCoding xxx ctermfg=39 guifg=#00afff
DevIconZshrc   xxx ctermfg=113 guifg=#89e051
DevIconGitModules xxx ctermfg=196 guifg=#f54d27
DevIcon7z      xxx ctermfg=214 guifg=#eca517
DevIcon3gp     xxx ctermfg=208 guifg=#fd971f
DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
DevIconGitignore xxx guifg=#f1502f
DevIconXSettingsdConf xxx ctermfg=196 guifg=#e54d18
DevIconInfo    xxx ctermfg=230 guifg=#ffffcd
DevIconPKGBUILD xxx ctermfg=67 guifg=#0f94d2
DevIconArduino xxx ctermfg=73 guifg=#56b6c2
DevIconGitAttributes xxx ctermfg=196 guifg=#f54d27
DevIconTempl   xxx ctermfg=178 guifg=#dbbd30
DevIconWeston  xxx ctermfg=214 guifg=#ffbb01
DevIconAstro   xxx ctermfg=197 guifg=#e23f67
DevIconVercel  xxx ctermfg=231 guifg=#ffffff
DevIconFIGletFontFormat xxx ctermfg=255 guifg=#ececec
DevIconVLC     xxx ctermfg=208 guifg=#ee7a00
DevIconAppleScript xxx ctermfg=66 guifg=#6d8085
DevIconPyw     xxx ctermfg=39 guifg=#5aa7e4
DevIconTSConfig xxx ctermfg=74 guifg=#519aba
DevIconSwift   xxx ctermfg=166 guifg=#e37933
DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
DevIconWavPackCorrection xxx ctermfg=39 guifg=#00afff
DevIconHyprlock xxx ctermfg=37 guifg=#00aaae
DevIconXorgConf xxx ctermfg=196 guifg=#e54d18
DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
DevIconCache   xxx ctermfg=231 guifg=#ffffff
DevIconKiCadSymbolTable xxx ctermfg=231 guifg=#ffffff
DevIconBashrc  xxx ctermfg=113 guifg=#89e051
DevIconGradleWrapperScript xxx ctermfg=24 guifg=#005f87
DevIconStyl    xxx ctermfg=113 guifg=#8dc149
DevIconStp     xxx ctermfg=101 guifg=#839463
DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
DevIconPackageJson xxx ctermfg=197 guifg=#e8274b
DevIconSignature xxx ctermfg=166 guifg=#e37933
DevIconAss     xxx ctermfg=214 guifg=#ffb713
DevIconUbuntu  xxx ctermfg=196 guifg=#dd4814
DevIconCentos  xxx ctermfg=132 guifg=#a2518d
DevIconBazelWorkspace xxx ctermfg=113 guifg=#89e051
DevIconSsa     xxx ctermfg=214 guifg=#ffb713
DevIconSrt     xxx ctermfg=214 guifg=#ffb713
DevIconZig     xxx ctermfg=172 guifg=#f69a1b
DevIconStaticLibraryArchive xxx ctermfg=253 guifg=#dcddd6
DevIconVala    xxx ctermfg=91 guifg=#7239b3
DevIconHs      xxx ctermfg=140 guifg=#a074c4
DevIconYml     xxx ctermfg=66 guifg=#6d8086
DevIconWindows xxx ctermfg=39 guifg=#00a4ef
DevIconGo      xxx ctermfg=74 guifg=#519aba
DevIconObjectFile xxx ctermfg=124 guifg=#9f0500
DevIconKiCadFootprintTable xxx ctermfg=231 guifg=#ffffff
DevIconBoundaryRepresentation xxx ctermfg=101 guifg=#839463
DevIconVsix    xxx ctermfg=98 guifg=#854cc7
DevIconHtml    xxx ctermfg=196 guifg=#e44d26
DevIconScalaScript xxx ctermfg=167 guifg=#cc3e44
DevIconGz      xxx ctermfg=214 guifg=#eca517
DevIconXaml    xxx ctermfg=56 guifg=#512bd4
DevIconLess    xxx ctermfg=54 guifg=#563d7c
DevIconSha1    xxx ctermfg=103 guifg=#8c86af
DevIconOpenBSD xxx ctermfg=220 guifg=#f2ca30
DevIconConfiguration xxx ctermfg=66 guifg=#6d8086
DevIconQuery   xxx ctermfg=107 guifg=#90a850
DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
DevIconNfo     xxx ctermfg=230 guifg=#ffffcd
DevIconIfc     xxx ctermfg=101 guifg=#839463
DevIconM3u8    xxx ctermfg=211 guifg=#ed95ae
DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
DevIconDb      xxx ctermfg=188 guifg=#dad8d8
DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
DevIconLibrecadFontFile xxx ctermfg=255 guifg=#ececec
DevIconJl      xxx ctermfg=133 guifg=#a270ba
DevIconSolidity xxx ctermfg=74 guifg=#519aba
DevIconTwig    xxx ctermfg=113 guifg=#8dc149
DevIconBibTeX  xxx ctermfg=185 guifg=#cbcb41
DevIconSha224  xxx ctermfg=103 guifg=#8c86af
DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
DevIconPm      xxx ctermfg=74 guifg=#519aba
DevIconSha512  xxx ctermfg=103 guifg=#8c86af
DevIconPxd     xxx ctermfg=39 guifg=#5aa7e4
DevIconSub     xxx ctermfg=214 guifg=#ffb713
DevIconMonkeysAudio xxx ctermfg=39 guifg=#00afff
DevIconGIMP    xxx ctermfg=240 guifg=#635b46
DevIconGoSum   xxx ctermfg=74 guifg=#519aba
DevIconNotebook xxx ctermfg=74 guifg=#51a0cf
DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
DevIconEndeavour xxx ctermfg=91 guifg=#7b3db9
DevIconGoWork  xxx ctermfg=74 guifg=#519aba
DevIconPlatformio xxx ctermfg=208 guifg=#f6822b
DevIconEbook   xxx ctermfg=215 guifg=#eab16d
DevIconCs      xxx ctermfg=58 guifg=#596706
DevIconMaven   xxx ctermfg=52 guifg=#7a0d21
DevIconPxi     xxx ctermfg=39 guifg=#5aa7e4
DevIconYaml    xxx ctermfg=66 guifg=#6d8086
DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
DevIconRb      xxx ctermfg=52 guifg=#701516
DevIconLXQtConfigFile xxx ctermfg=32 guifg=#0192d3
DevIconLXDEConfigFile xxx ctermfg=246 guifg=#909090
DevIconGCode   xxx ctermfg=32 guifg=#1471ad
DevIconPulseCodeModulation xxx ctermfg=24 guifg=#0075aa
DevIconGodotTextResource xxx ctermfg=66 guifg=#6d8086
DevIconCjs     xxx ctermfg=185 guifg=#cbcb41
DevIconHexadecimal xxx ctermfg=27 guifg=#2e63ff
DevIconPyi     xxx ctermfg=214 guifg=#ffbc03
DevIconMjs     xxx ctermfg=185 guifg=#f1e05a
DevIconPart    xxx ctermfg=43 guifg=#44cda8
DevIconPyx     xxx ctermfg=39 guifg=#5aa7e4
DevIconOut     xxx ctermfg=124 guifg=#9f0500
DevIconAsciinema xxx ctermfg=208 guifg=#fd971f
DevIconJava    xxx ctermfg=167 guifg=#cc3e44
DevIconBmp     xxx ctermfg=140 guifg=#a074c4
DevIconRar     xxx ctermfg=214 guifg=#eca517
DevIconReScriptInterface xxx ctermfg=204 guifg=#f55385
DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
DevIconOggVorbis xxx ctermfg=24 guifg=#0075aa
DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
DevIconOpenSCAD xxx ctermfg=220 guifg=#f9d72c
DevIconRlib    xxx ctermfg=216 guifg=#dea584
DevIconNswag   xxx ctermfg=112 guifg=#85ea2d
DevIconLuau    xxx ctermfg=75 guifg=#00a2ff
DevIconTrueTypeFont xxx ctermfg=255 guifg=#ececec
NvimTreeFolderIcon xxx ctermfg=12 guifg=#8094b4
NvimTreeWindowPicker xxx cterm=bold,italic gui=bold,italic guifg=#ffcb8b guibg=#010d18
NvimTreeGitStagedIcon xxx links to Constant
NvimTreeGitStaged xxx guifg=#e2b93d
NvimTreeGitRenamedIcon xxx links to PreProc
NvimTreeGitRenamed xxx guifg=#9ccc65
NvimTreeGitNewIcon xxx links to PreProc
NvimTreeGitNew xxx guifg=#c5e478
NvimTreeGitMergeIcon xxx links to Constant
NvimTreeGitMerge xxx cleared
NvimTreeGitIgnoredIcon xxx links to Comment
NvimTreeGitIgnored xxx cleared
NvimTreeGitDirtyIcon xxx links to Statement
NvimTreeGitDirty xxx guifg=#a2bffc
NvimTreeDiagnosticHintFolderHL xxx links to NvimTreeDiagnosticHintFileHL
NvimTreeLspDiagnosticsHintFolderText xxx cleared
NvimTreeDiagnosticInfoFolderHL xxx links to NvimTreeDiagnosticInfoFileHL
NvimTreeLspDiagnosticsInformationFolderText xxx cleared
NvimTreeDiagnosticWarnFolderHL xxx links to NvimTreeDiagnosticWarnFileHL
NvimTreeLspDiagnosticsWarningFolderText xxx cleared
NvimTreeDiagnosticErrorFolderHL xxx links to NvimTreeDiagnosticErrorFileHL
NvimTreeLspDiagnosticsErrorFolderText xxx cleared
NvimTreeDiagnosticHintFileHL xxx links to DiagnosticUnderlineHint
NvimTreeLspDiagnosticsHintText xxx cleared
NvimTreeDiagnosticInfoFileHL xxx links to DiagnosticUnderlineInfo
NvimTreeLspDiagnosticsInformationText xxx cleared
NvimTreeDiagnosticWarnFileHL xxx links to DiagnosticUnderlineWarn
NvimTreeLspDiagnosticsWarningText xxx cleared
NvimTreeDiagnosticErrorFileHL xxx links to DiagnosticUnderlineError
NvimTreeLspDiagnosticsErrorText xxx cleared
NvimTreeDiagnosticHintIcon xxx links to DiagnosticHint
NvimTreeLspDiagnosticsHint xxx cleared
NvimTreeDiagnosticInfoIcon xxx links to DiagnosticInfo
NvimTreeLspDiagnosticsInformation xxx cleared
NvimTreeDiagnosticWarnIcon xxx links to DiagnosticWarn
NvimTreeLspDiagnosticsWarning xxx cleared
NvimTreeDiagnosticErrorIcon xxx links to DiagnosticError
NvimTreeLspDiagnosticsError xxx cleared
NvimTreeGitFolderStagedHL xxx links to NvimTreeGitFileStagedHL
NvimTreeFolderStaged xxx cleared
NvimTreeGitFolderRenamedHL xxx links to NvimTreeGitFileRenamedHL
NvimTreeFolderRenamed xxx cleared
NvimTreeGitFolderNewHL xxx links to NvimTreeGitFileNewHL
NvimTreeFolderNew xxx cleared
NvimTreeGitFolderMergeHL xxx links to NvimTreeGitFileMergeHL
NvimTreeFolderMerge xxx cleared
NvimTreeGitFolderIgnoredHL xxx links to NvimTreeGitFileIgnoredHL
NvimTreeFolderIgnored xxx cleared
NvimTreeGitFolderDirtyHL xxx links to NvimTreeGitFileDirtyHL
NvimTreeFolderDirty xxx cleared
NvimTreeGitFolderDeletedHL xxx links to NvimTreeGitFileDeletedHL
NvimTreeFolderDeleted xxx cleared
NvimTreeGitFileStagedHL xxx links to NvimTreeGitStagedIcon
NvimTreeFileStaged xxx cleared
NvimTreeGitFileRenamedHL xxx links to NvimTreeGitRenamedIcon
NvimTreeFileRenamed xxx cleared
NvimTreeGitFileNewHL xxx links to NvimTreeGitNewIcon
NvimTreeFileNew xxx cleared
NvimTreeGitFileMergeHL xxx links to NvimTreeGitMergeIcon
NvimTreeFileMerge xxx cleared
NvimTreeBookmarkIcon xxx links to NvimTreeFolderIcon
NvimTreeBookmark xxx cleared
NvimTreeGitFileIgnoredHL xxx links to NvimTreeGitIgnoredIcon
NvimTreeFileIgnored xxx cleared
NvimTreeModifiedIcon xxx links to Type
NvimTreeModifiedFile xxx cleared
NvimTreeGitFileDirtyHL xxx links to NvimTreeGitDirtyIcon
NvimTreeFileDirty xxx cleared
NvimTreeOpenedHL xxx links to Special
NvimTreeOpenedFile xxx cterm=bold gui=bold
NvimTreeGitFileDeletedHL xxx links to NvimTreeGitDeletedIcon
NvimTreeFileDeleted xxx cleared
NvimTreeGitDeletedIcon xxx links to Statement
NvimTreeGitDeleted xxx guifg=#ef5350
NvimTreeNormal xxx guifg=#cccccc
NvimTreeNormalFloat xxx links to NormalFloat
NvimTreeNormalFloatBorder xxx links to FloatBorder
NvimTreeNormalNC xxx guifg=#5f7e97
NvimTreeLineNr xxx links to LineNr
NvimTreeWinSeparator xxx links to WinSeparator
NvimTreeEndOfBuffer xxx links to EndOfBuffer
NvimTreePopup  xxx links to Normal
NvimTreeSignColumn xxx links to NvimTreeNormal
NvimTreeCursorColumn xxx links to CursorColumn
NvimTreeCursorLine xxx guibg=#0e293f
NvimTreeCursorLineNr xxx links to CursorLineNr
NvimTreeStatusLine xxx links to StatusLine
NvimTreeStatusLineNC xxx links to StatusLineNC
NvimTreeExecFile xxx links to Question
NvimTreeImageFile xxx guifg=#89a4bb
NvimTreeSpecialFile xxx guifg=#f78c6c
NvimTreeSymlink xxx links to Underlined
NvimTreeRootFolder xxx guifg=#c792ea
NvimTreeFolderName xxx links to Directory
NvimTreeEmptyFolderName xxx links to Directory
NvimTreeOpenedFolderName xxx links to Directory
NvimTreeSymlinkFolderName xxx links to Directory
NvimTreeFileIcon xxx links to NvimTreeNormal
NvimTreeSymlinkIcon xxx links to NvimTreeNormal
NvimTreeOpenedFolderIcon xxx links to NvimTreeFolderIcon
NvimTreeClosedFolderIcon xxx links to NvimTreeFolderIcon
NvimTreeFolderArrowClosed xxx links to NvimTreeIndentMarker
NvimTreeIndentMarker xxx guifg=#585858
NvimTreeFolderArrowOpen xxx links to NvimTreeIndentMarker
NvimTreeLiveFilterPrefix xxx links to PreProc
NvimTreeLiveFilterValue xxx links to ModeMsg
NvimTreeCutHL  xxx links to SpellBad
NvimTreeCopiedHL xxx links to SpellRare
NvimTreeBookmarkHL xxx links to SpellLocal
NvimTreeModifiedFileHL xxx links to NvimTreeModifiedIcon
NvimTreeModifiedFolderHL xxx links to NvimTreeModifiedFileHL
NvimTreeHiddenIcon xxx links to Conceal
NvimTreeHiddenFileHL xxx links to NvimTreeHiddenIcon
NvimTreeHiddenFolderHL xxx links to NvimTreeHiddenFileHL
NvimTreeHiddenDisplay xxx links to Conceal
NvimTreeDiagnosticWarningIcon xxx cleared
OilDir         xxx links to Directory
OilDirIcon     xxx links to OilDir
OilSocket      xxx links to Keyword
OilLinkTarget  xxx links to Comment
OilCreate      xxx links to DiagnosticInfo
OilDelete      xxx links to DiagnosticError
OilMove        xxx links to DiagnosticWarn
OilCopy        xxx links to DiagnosticHint
OilChange      xxx links to Special
OilRestore     xxx links to OilCreate
OilPurge       xxx links to OilDelete
OilTrash       xxx links to OilDelete
OilTrashSourcePath xxx links to Comment
@nowl          xxx cleared
@nowl.visual.active xxx guibg=#1d3b53
Variable       xxx guifg=#d7dbe0
tomlTable      xxx cterm=italic gui=italic guifg=#c5e478
tomlKey        xxx cterm=nocombine gui=nocombine guifg=#c792ea
tomlKeySq      xxx cterm=nocombine gui=nocombine guifg=#c792ea
@nowl.constant.builtin.na.r xxx cterm=italic gui=italic guifg=#ff5874
@nowl.constant.builtin.null xxx guifg=#ff5874
@nowl.indentChar xxx cterm=nocombine gui=nocombine guifg=#1f395d
@nowl.indentChar.active xxx cterm=nocombine gui=nocombine guifg=#7e97ac
@nowl.keyword.break xxx links to Statement
@nowl.keyword.operator.new.javascript xxx guifg=#7fdbca
@nowl.punctuation.string.delimiter xxx cterm=nocombine gui=nocombine guifg=#d9f5dd
@nowl.variable.object xxx cterm=italic gui=italic guifg=#7fdbca
@nowl.variable.parameter.option.bash xxx guifg=#82aaff
@nowl.visual.inactive xxx guibg=#2e2d5e
@attribute.typescript xxx links to Function
@attribute.css xxx cterm=italic gui=italic guifg=#c5e478
@class         xxx cleared
@class.constructor xxx cterm=italic gui=italic guifg=#82aaff
@class.field.function xxx links to Function
@command       xxx cterm=nocombine gui=nocombine guifg=#c5e478
@conditional   xxx cleared
@conditional.lua xxx links to Statement
@constant.identifier xxx links to Constant
@constructor.javascript xxx cterm=nocombine gui=nocombine guifg=#82aaff
@constructor.python xxx cterm=italic gui=italic guifg=#c5e478
@constructor.typescript xxx cterm=nocombine gui=nocombine guifg=#82aaff
@field         xxx guifg=#baebe2
@function.builtin.lua xxx cterm=italic gui=italic guifg=#82aaff
@function.builtin.python xxx cterm=nocombine gui=nocombine guifg=#c5e478
@function.builtin.bash xxx cterm=italic gui=italic guifg=#c5e478
@include       xxx cleared
@include.identifier xxx cterm=nocombine gui=nocombine guifg=#d6deeb
@keyword.abort xxx links to Statement
@keyword.lua.break xxx links to Statement
@keyword.command xxx cterm=nocombine gui=nocombine guifg=#c5e478
@keyword.conditional.bash xxx links to Statement
@keyword.conditional.lua xxx links to Statement
@keyword.conditional.python xxx links to Statement
@keyword.conditional.r xxx links to Statement
@keyword.coroutine xxx links to Statement
@keyword.default xxx links to Statement
@keyword.exception.python xxx links to Statement
@keyword.export xxx links to Statement
@keyword.extends xxx links to Statement
@keyword.function.lua xxx links to Statement
@keyword.function.r xxx links to Statement
@keyword.function.return xxx links to Statement
@keyword.function.vim xxx links to Statement
@keyword.if.vim xxx links to Statement
@keyword.jsdoc xxx cterm=nocombine gui=nocombine guifg=#c792ea
@keyword.operator xxx guifg=#c792ea
@keyword.operator.python xxx links to Statement
@keyword.operator.typescript xxx guifg=#7fdbca
@keyword.return xxx links to Statement
@keyword.static xxx links to Statement
@module.r      xxx links to @type.class
@type.class    xxx cterm=nocombine gui=nocombine guifg=#ffcb8b
@module.vim    xxx links to @type.class
@namespace     xxx cleared
@namespace.vim xxx cterm=italic gui=italic guifg=#78ccf0
@object        xxx cleared
@object.key    xxx links to Statement
@object.property xxx cterm=italic gui=italic guifg=#faf39f
@operator.lua  xxx guifg=#7fdbca
@operator.of   xxx guifg=#7fdbca
@operator.toml xxx guifg=#d6deeb
@parameter     xxx guifg=#d7dbe0
@parameter.jsdoc xxx guifg=#78ccf0
@property.css  xxx guifg=#80cbc4
@property.toml xxx cterm=nocombine gui=nocombine guifg=#c792ea
@punctuation.accessor xxx links to Statement
@punctuation.special.bash xxx guifg=#c5e478
@string.json   xxx guifg=#c789d6
@string.regex  xxx cterm=nocombine gui=nocombine guifg=#82aaff
@string.regexFlags xxx cterm=nocombine gui=nocombine guifg=#5ca7e4
@tag.attribute xxx cterm=italic gui=italic guifg=#c5e478
@tag.component.jsx xxx cterm=nocombine gui=nocombine guifg=#f78c6c
@tag.css       xxx cterm=nocombine gui=nocombine guifg=#ff6363
@tag.delimiter xxx guifg=#7fdbca
@text          xxx cleared
@text.emphasis xxx cterm=italic gui=italic guifg=#c792ea
@text.literal  xxx guifg=#c5e478
@text.strong   xxx cterm=bold gui=bold guifg=#c5e478
@text.todo     xxx guifg=#021727 guibg=#d6deeb
@text.uri      xxx cterm=underline gui=underline guifg=#ff869a
@type.builtin.python xxx cterm=nocombine gui=nocombine guifg=#c5e478
@type.inheritedClass xxx cterm=nocombine gui=nocombine guifg=#c5e478
@type.python   xxx cterm=nocombine gui=nocombine guifg=#ffcb8b
@type.toml     xxx cterm=italic gui=italic guifg=#c5e478
@type.typescript xxx cterm=nocombine gui=nocombine guifg=#ffcb8b
@variable.builtin.vim xxx cterm=italic gui=italic guifg=#7fdbca
@variable.lua  xxx links to Variable
@variable.parameter.bash xxx guifg=#ecc48d
@variable.parameter.python xxx guifg=#7fdbca
@variable.vim  xxx links to Variable
GitGutterAdd   xxx guifg=#9ccc65
GitGutterChange xxx guifg=#e2b93d
GitGutterDelete xxx guifg=#ef5350
GitGutterChangeDelete xxx guifg=#e2b93d
@lsp.mod.global.lua xxx guifg=#c5e478
@lsp.type.variable.lua xxx links to Variable
IndentBlanklineChar xxx links to @nowl.indentChar
IndentBlanklineContextChar xxx links to @nowl.indentChar.active
IndentBlanklineSpaceChar xxx links to Whitespace
IndentBlanklineSpaceCharBlankline xxx links to Whitespace
IndentBlanklineContextStart xxx cterm=underline gui=underline guisp=#7e97ac
IlluminatedWordText xxx guibg=#33384d
IlluminatedWordRead xxx guibg=#33384d
IlluminatedWordWrite xxx guibg=#2f3350
Terminal       xxx guifg=#d6deeb guibg=#021727
CocFloatThumb  xxx links to PmenuThumb
CocFloatSbar   xxx links to PmenuSbar
CocCursorTransparent xxx gui=strikethrough blend=100
CocErrorHighlight xxx links to DiagnosticUnderlineError
CocErrorSign   xxx links to DiagnosticSignError
CocErrorVirtualText xxx links to DiagnosticVirtualTextError
CocWarningHighlight xxx links to DiagnosticUnderlineWarn
CocWarningSign xxx links to DiagnosticSignWarn
CocWarningVirtualText xxx links to DiagnosticVirtualTextWarn
CocInfoHighlight xxx links to DiagnosticUnderlineInfo
CocInfoSign    xxx links to DiagnosticSignInfo
CocInfoVirtualText xxx links to DiagnosticVirtualTextInfo
CocHintHighlight xxx links to DiagnosticUnderlineHint
CocHintSign    xxx links to DiagnosticSignHint
CocHintVirtualText xxx links to DiagnosticVirtualTextHint
CocHintFloat   xxx links to DiagnosticHint
CocInlayHint   xxx ctermfg=12 ctermbg=16 guifg=NvimLightBlue guibg=#021727
CocInlayHintParameter xxx links to CocInlayHint
CocInlayHintType xxx links to CocInlayHint
CocSemTypeMacro xxx links to @constant.macro
CocSemTypeEnumMember xxx links to @property
CocSemTypeComment xxx links to @comment
CocSemTypeOperator xxx links to @operator
CocSemTypeProperty xxx links to @property
CocSemTypeClass xxx links to @constructor
@structure     xxx cleared
CocSemTypeStruct xxx links to Identifier
CocSemTypeRegexp xxx links to @string.regexp
CocSemTypeBoolean xxx links to @boolean
CocSemTypeMethod xxx links to @function.method
CocSemTypeNamespace xxx links to @module
CocSemTypeModifier xxx links to @keyword.storage
CocSemTypeNumber xxx links to @number
CocSemTypeTypeParameter xxx links to @variable.parameter
CocSemTypeKeyword xxx links to @keyword
CocSemModDeprecated xxx links to @markup.strikethrough
CocSemTypeFunction xxx links to @function
CocSemTypeDecorator xxx links to @string.special.symbol
CocSemTypeEnum xxx links to @type
CocSemTypeParameter xxx links to @variable.parameter
CocSemTypeType xxx links to @type
CocSemTypeString xxx links to @string
CocSemTypeVariable xxx links to @variable
CocSemTypeInterface xxx links to @type
CocSemTypeEvent xxx links to @keyword
@unit          xxx cleared
CocSymbolUnit  xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolNumber xxx ctermfg=223 guifg=#f78c6c
CocSymbolFunction xxx ctermfg=223 guifg=#82aaff
@key           xxx cleared
CocSymbolKey   xxx ctermfg=223 guifg=#78ccf0
CocSymbolKeyword xxx ctermfg=223 guifg=#c792ea
CocSymbolReference xxx ctermfg=223 guifg=#ebdbb2
@folder        xxx cleared
CocSymbolFolder xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolVariable xxx ctermfg=223 guifg=#7fdbca
@null          xxx cleared
CocSymbolNull  xxx ctermfg=223 guifg=#ffcb8b
@value         xxx cleared
CocSymbolValue xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolConstant xxx ctermfg=223 guifg=#82aaff
CocSymbolText  xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolModule xxx ctermfg=223 guifg=#ffcb8b
@package       xxx cleared
CocSymbolPackage xxx ctermfg=223 guifg=#c792ea
CocSymbolClass xxx ctermfg=223 guifg=#ffcb8b
CocSymbolOperator xxx ctermfg=223 guifg=#c792ea
CocSymbolStruct xxx ctermfg=223 guifg=#c792ea
CocSymbolObject xxx ctermfg=14 guifg=NvimLightCyan
@method        xxx cleared
CocSymbolMethod xxx ctermfg=223 guifg=#82aaff
@array         xxx cleared
CocSymbolArray xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolEnum  xxx ctermfg=223 guifg=#ffcb8b
CocSymbolField xxx ctermfg=223 guifg=#d7dbe0
CocSymbolInterface xxx ctermfg=223 guifg=#ffcb8b
CocSymbolProperty xxx ctermfg=223 guifg=#baebe2
@color         xxx cleared
CocSymbolColor xxx ctermfg=223 guifg=#f78c6c
@file          xxx cleared
CocSymbolFile  xxx ctermfg=223 guifg=#c792ea
CocSymbolEvent xxx ctermfg=223 guifg=#82aaff
CocSymbolTypeParameter xxx ctermfg=223 guifg=#d7dbe0
CocSymbolConstructor xxx ctermfg=223 guifg=#ffcb8b
@snippet       xxx cleared
CocSymbolSnippet xxx ctermfg=14 guifg=NvimLightCyan
CocSymbolBoolean xxx ctermfg=223 guifg=#ff5874
CocSymbolNamespace xxx ctermfg=223 guifg=#ffcb8b
CocSymbolString xxx ctermfg=223 guifg=#ecc48d
CocSymbolEnumMember xxx ctermfg=223 guifg=#baebe2
lualine_c_insert xxx cleared
lualine_c_visual xxx cleared
lualine_x_normal xxx cleared
lualine_c_replace xxx cleared
lualine_x_insert xxx cleared
lualine_x_visual xxx cleared
lualine_x_replace xxx cleared
lualine_x_command xxx cleared
lualine_x_inactive xxx cleared
lualine_c_command xxx cleared
lualine_x_terminal xxx cleared
lualine_c_terminal xxx cleared
StartifyEndOfBuffer xxx guifg=#021727
StartifyNumber xxx links to Number
StartifySelect xxx links to Title
StartifyBracket xxx links to Delimiter
StartifySpecial xxx links to Comment
StartifyVar    xxx links to StartifyPath
StartifyPath   xxx links to Directory
StartifyFile   xxx links to Identifier
StartifySlash  xxx links to Delimiter
StartifyHeader xxx links to Title
StartifySection xxx links to Statement
StartifyFooter xxx links to Title
NoiceCmdlinePopupTitle xxx links to DiagnosticSignInfo
NoiceCursor    xxx links to Cursor
NoiceCmdlineIcon xxx links to DiagnosticSignInfo
NoiceCmdlineIconCalculator xxx links to NoiceCmdlineIcon
NoicePopupmenuBorder xxx links to FloatBorder
NoicePopupmenu xxx links to Pmenu
NoicePopupBorder xxx links to FloatBorder
NoicePopup     xxx links to NormalFloat
NoiceMini      xxx links to MsgArea
NoiceConfirmBorder xxx links to DiagnosticSignInfo
NoiceConfirm   xxx links to Normal
NoiceCmdlinePopupBorderSearch xxx links to DiagnosticSignWarn
NoiceCmdlinePopup xxx links to Normal
NoiceCmdlinePrompt xxx links to Title
NoiceCmdlineIconSearch xxx links to DiagnosticSignWarn
NoiceFormatLevelInfo xxx links to DiagnosticVirtualTextInfo
NoiceCompletionItemKindColor xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindDefault xxx links to Special
NoiceFormatTitle xxx links to Title
NoiceCompletionItemKindClass xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindConstructor xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindEnum xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindVariable xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindFile xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindField xxx links to NoiceCompletionItemKindDefault
NoiceCmdline   xxx links to MsgArea
NoiceCompletionItemKindEnumMember xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindText xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindFolder xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindSnippet xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindConstant xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindProperty xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindValue xxx links to NoiceCompletionItemKindDefault
NoicePopupmenuSelected xxx links to PmenuSel
NoicePopupmenuMatch xxx links to Special
NoiceCompletionItemKindModule xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindInterface xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindMethod xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindFunction xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindUnit xxx links to NoiceCompletionItemKindDefault
NoiceCmdlinePopupBorderCalculator xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupBorder xxx links to DiagnosticSignInfo
NoiceCmdlinePopupTitleCalculator xxx links to NoiceCmdlinePopupBorderCalculator
NoiceCmdlineIconHelp xxx links to NoiceCmdlineIcon
NoiceCmdlinePopupBorderHelp xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupTitleHelp xxx links to NoiceCmdlinePopupBorderHelp
NoiceCmdlinePopupTitleSearch xxx links to NoiceCmdlinePopupBorderSearch
NoiceCmdlineIconCmdline xxx links to NoiceCmdlineIcon
NoiceCmdlinePopupBorderCmdline xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupTitleCmdline xxx links to NoiceCmdlinePopupBorderCmdline
NoiceFormatLevelWarn xxx links to DiagnosticVirtualTextWarn
NoiceFormatLevelOff xxx links to NonText
NoiceFormatLevelTrace xxx links to NonText
NoiceFormatProgressTodo xxx links to CursorLine
NoiceFormatProgressDone xxx guibg=#063e5d
NoiceCmdlineIconInput xxx links to NoiceCmdlineIcon
NoiceCmdlinePopupBorderInput xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupTitleInput xxx links to NoiceCmdlinePopupBorderInput
NoiceVirtualText xxx links to DiagnosticVirtualTextInfo
NoiceScrollbar xxx links to PmenuSbar
NoiceScrollbarThumb xxx links to PmenuThumb
NoiceSplit     xxx links to NormalFloat
NoiceSplitBorder xxx links to FloatBorder
NoiceCmdlineIconLua xxx links to NoiceCmdlineIcon
NoiceCmdlinePopupBorderLua xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupTitleLua xxx links to NoiceCmdlinePopupBorderLua
NoiceFormatEvent xxx links to NonText
NoiceFormatKind xxx links to NonText
NoiceFormatDate xxx links to Special
NoiceFormatConfirm xxx links to CursorLine
NoiceFormatConfirmDefault xxx links to Visual
NoiceFormatLevelDebug xxx links to NonText
NoiceCmdlineIconFilter xxx links to NoiceCmdlineIcon
NoiceCmdlinePopupBorderFilter xxx links to NoiceCmdlinePopupBorder
NoiceCmdlinePopupTitleFilter xxx links to NoiceCmdlinePopupBorderFilter
NoiceFormatLevelError xxx links to DiagnosticVirtualTextError
NoiceLspProgressSpinner xxx links to Constant
NoiceLspProgressTitle xxx links to NonText
NoiceLspProgressClient xxx links to Title
NoiceCompletionItemKindKeyword xxx links to NoiceCompletionItemKindDefault
NoiceCompletionItemKindStruct xxx links to NoiceCompletionItemKindDefault
NoiceHiddenCursor xxx cterm=nocombine gui=nocombine blend=100
NotifyBackground xxx links to Normal
NotifyERRORBorder xxx guifg=#8a1f1f
NotifyWARNBorder xxx guifg=#79491d
NotifyINFOBorder xxx guifg=#4f6752
NotifyDEBUGBorder xxx guifg=#8b8b8b
NotifyTRACEBorder xxx guifg=#4f3552
NotifyERRORIcon xxx guifg=#f70067
NotifyWARNIcon xxx guifg=#f79000
NotifyINFOIcon xxx guifg=#a9ff68
NotifyDEBUGIcon xxx guifg=#8b8b8b
NotifyTRACEIcon xxx guifg=#d484ff
NotifyERRORTitle xxx guifg=#f70067
NotifyWARNTitle xxx guifg=#f79000
NotifyINFOTitle xxx guifg=#a9ff68
NotifyDEBUGTitle xxx guifg=#8b8b8b
NotifyTRACETitle xxx guifg=#d484ff
NotifyERRORBody xxx links to Normal
NotifyWARNBody xxx links to Normal
NotifyINFOBody xxx links to Normal
NotifyDEBUGBody xxx links to Normal
NotifyTRACEBody xxx links to Normal
NotifyLogTime  xxx links to Comment
NotifyLogTitle xxx links to Special
CocSelectedLine xxx cleared
CocErrorLine   xxx cleared
CocWarningLine xxx cleared
CocInfoLine    xxx cleared
CocHintLine    xxx cleared
PmenuMatch     xxx cleared
NoiceCompletionItemWord xxx cleared
]]
