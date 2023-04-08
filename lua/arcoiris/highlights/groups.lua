--[[ These are the ones you should edit.
     TIP: you can use `COLOUR.black`, etc to access what you defined in the other file. ]]

return {
	--[[ Plaintext ]]

	-- Basic styles
	Bold = {bold = true},
	Italic = {italic = true},
	Normal = {fg = COLOUR.gray_light},
	Title = 'Bold',
	Underlined = {fg = COLOUR.turqoise, underline = true},
	Whitespace = {fg = COLOUR.trailing, bg = NONE },

	-- "Non"-text
	Conceal = 'NonText',
	EndOfBuffer = 'NonText',
	Ignore = {fg = COLOUR.gray},
	NonText = {fg = COLOUR.non_text, bg = COLOUR.non_text},

	-- Literals
	Constant = {fg = COLOUR.orange_light},
	String = {fg = COLOUR.magenta},
	Character = {fg = COLOUR.red_light},
	Number = {fg = COLOUR.pink_light},
	Boolean = {fg = COLOUR.yellow},
	Float = 'Number',

	-- Syntax
	Comment = {fg = COLOUR.comment, italic = true},
	Conditional = {fg = COLOUR.ice, italic = true},
	Debug = 'WarningMsg',
	Delimiter = {fg = COLOUR.white},
	Exception = {fg = COLOUR.red_light, bold = true},
	Function = {fg = COLOUR.purple},
	Identifier = function(self) return {fg = self.Normal.fg} end,
	Keyword = {fg = COLOUR.teal},
	Label = {fg = COLOUR.pink, bold = true},
	Noise = 'Delimiter',
	Operator = {fg = COLOUR.green, bold = true},
	Repeat = {fg = COLOUR.turqoise, italic = true},
	Statement = {fg = COLOUR.ice},
	StorageClass = {fg = COLOUR.orange_light, bold = true},
	Structure = {fg = COLOUR.blue, bold = true},
	Tag = 'Underlined',
	Type = {fg = COLOUR.cyan},
	Typedef = {fg = COLOUR.cyan, italic = true},

	-- Pre-processor
	Define = {fg = COLOUR.blue, nocombine = true},
	Include = {fg = COLOUR.green_light, nocombine = true},
	Macro = {fg = COLOUR.blue, italic = true},
	PreCondit = {fg = COLOUR.tan, italic = true},
	PreProc = {fg = COLOUR.tan},

	-- Special
	Special = {fg = COLOUR.magenta, bold = true},
	SpecialChar = {fg = COLOUR.red_light, italic = true},
	SpecialComment = {fg = COLOUR.gray, bold = true, nocombine = true},
	SpecialKey = 'Character',

	-- LSP
	['@lsp.mod.consCOLOUR.tant'] = '@consCOLOUR.tant',
	['@lsp.mod.readonly'] = '@lsp.mod.consCOLOUR.tant',
	['@lsp.type.boolean'] = '@boolean',
	['@lsp.type.character'] = '@character',
	['@lsp.type.float'] = '@float',
	['@lsp.type.interface'] = '@lsp.type.type',
	['@lsp.type.namespace'] = '@namespace',
	['@lsp.type.number'] = '@number',
	['@lsp.type.operator'] = '@operator',
	['@lsp.type.string'] = '@string',
	['@lsp.typemod.type.readonly'] = '@lsp.type.type',

	-- Treesitter
	['@namespace'] = 'Directory',

	--[[ Editor UI ]]

	-- Status Line
	StatusLine = {fg = COLOUR.green_light, bg = COLOUR.main_bg},
	StatusLineNC = function(self) return {fg = COLOUR.gray, bg = self.StatusLine.bg} end,
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	-- Tabline
	TabLine = function(self) return {fg = self.Normal.fg, bg = self.StatusLine.bg} end,
	TabLineFill = {fg = COLOUR.black, bg = COLOUR.black},
	TabLineSel = function(self) return {fg = self.TabLine.fg, bg = COLOUR.gray_dark} end,

	-- Line Highlighting
	CursorLine = {bg = COLOUR.main_bg},
	CursorLineNr = function(self) return {fg = COLOUR.pink, bg = self.LineNr.bg} end,
	LineNr = {fg = COLOUR.gray},
	QuickFixLine = function(self) return {bg = self.StatusLine.bg} end,
	Visual = {reverse = true},
	VisualNOS = {bg = COLOUR.gray_darker},

	-- Popups
	FloatBorder = {fg = COLOUR.gray},
	Pmenu = function(self) return {fg = self.Normal.fg, bg = COLOUR.gray_dark} end,
	PmenuSbar = {bg = COLOUR.gray_darker},
	PmenuSel = {fg = COLOUR.black, bg = COLOUR.gray_light},
	PmenuThumb = {bg = COLOUR.white},
	WildMenu = 'PmenuSel',

	-- Folds
	FoldColumn = {bg = COLOUR.gray_darker, bold = true},
	Folded = {fg = COLOUR.black, bg = COLOUR.purple_light, italic = true},

	-- Diffs
	DiffAdd = {fg = COLOUR.black, bg = COLOUR.green_dark},
	diffAdded = 'DiffAdd',
	DiffChange = {},
	DiffDelete = function(self) return {fg = self.DiffAdd.fg, bg = COLOUR.red} end,
	DiffText = function(self) return {fg = self.DiffAdd.fg, bg = COLOUR.yellow} end,
	diffRemoved = 'DiffDelete',

	-- Searching
	IncSearch = {reverse = true},
	MatchParen = {fg = COLOUR.green, bold = true, underline = true},
	Search = {sp = COLOUR.white, underline = true},

	-- Spelling
	SpellBad = {sp = COLOUR.red, undercurl = true},
	SpellCap = {sp = COLOUR.yellow, undercurl = true},
	SpellLocal = {sp = COLOUR.green, undercurl = true},
	SpellRare = {sp = COLOUR.orange, undercurl = true},

	-- Conditional Column Highlighting
	ColorColumn = {reverse = false},
	SignColumn = {},

	-- Messages
	Error = {fg = COLOUR.red, bg = COLOUR.lsp_erro_bg, bold = true},
	ErrorMsg = {fg = COLOUR.red, bold = true},
	ModeMsg = {fg = COLOUR.yellow},
	Question = {fg = COLOUR.orange_light, underline = true},
	Todo = {fg = COLOUR.black, bg = COLOUR.cyan, bold = true},
	WarningMsg = {fg = COLOUR.orange, bold = true},

	-- Diagnostics
	debugBreakpoint = 'ErrorMsg',
	debugPC = 'ColorColumn',

	DiagnosticError = 'Error',
	DiagnosticFloatingError = 'ErrorMsg',
	DiagnosticSignError = 'DiagnosticFloatingError',

	DiagnosticWarn = {fg = COLOUR.black, bg = COLOUR.orange, bold = true},
	DiagnosticFloatingWarn = 'WarningMsg',
	DiagnosticSignWarn = 'DiagnosticFloatingWarn',

	DiagnosticHint = {fg = COLOUR.black, bg = COLOUR.magenta, bold = true},
	DiagnosticFloatingHint = {fg = COLOUR.magenta, italic = true},
	DiagnosticSignHint = 'DiagnosticFloatingHint',

	DiagnosticInfo = {fg = COLOUR.black, bg = COLOUR.pink_light, bold = true},
	DiagnosticFloatingInfo = {fg = COLOUR.pink_light, italic = true},
	DiagnosticSignInfo = 'DiagnosticFloatingInfo',

	DiagnosticUnderlineError = {sp = COLOUR.red, undercurl = true},
	DiagnosticUnderlineHint = {sp = COLOUR.magenta, undercurl = true},
	DiagnosticUnderlineInfo = {sp = COLOUR.pink_light, undercurl = true},
	DiagnosticUnderlineWarn = {sp = COLOUR.orange, undercurl = true},

	-- Cursor
	Cursor = {reverse = true},
	CursorIM = 'Cursor',
	CursorColumn = {bg = COLOUR.main_bg},

	-- Misc
	Directory = {fg = COLOUR.ice, bold = true},
	WinSeparator = {fg = COLOUR.list_chars},

	--[[ Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]

	-- Coq
	coqConstructor = 'ConsCOLOUR.tant',
	coqDefBinderType = 'coqDefType',
	coqDefContents1 = 'coqConstructor',
	coqDefType = 'Typedef',
	coqIndBinderTerm = 'coqDefBinderType',
	coqIndConstructor = 'Delimiter',
	coqIndTerm = 'Type',
	coqKwd = 'Keyword',
	coqKwdParen = 'Function',
	coqProofDelim = 'coqVernacCmd',
	coqProofDot = 'coqTermPunctuation',
	coqProofPunctuation = 'coqTermPunctuation',
	coqRequire = 'Include',
	coqTactic = 'Operator',
	coqTermPunctuation = 'Delimiter',
	coqVernacCmd = 'Statement',
	coqVernacPunctuation = 'coqTermPunctuation',

	-- C++
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'Directory',

	-- Crontab
	crontabDay = 'StorageClass',
	crontabDow = 'String',
	crontabHr = 'Number',
	crontabMin = 'Float',
	crontabMnth = 'Structure',

	-- C#
	csBraces = 'Delimiter',
	csClass = 'Structure',
	csClassType = 'Type',
	csContextualStatement = 'Conditional',
	csEndColon = 'Delimiter',
	csGeneric = 'Typedef',
	csInterpolation = 'Include',
	csInterpolationDelimiter = 'SpecialChar',
	csLogicSymbols = 'Operator',
	csModifier = 'Keyword',
	csNew = 'Operator',
	csNewType = 'Type',
	csParens = 'Delimiter',
	csPreCondit = 'PreProc',
	csQuote = 'Delimiter',
	csRepeat = 'Repeat',
	csStorage = 'StorageClass',
	csUnspecifiedStatement = 'Statement',
	csXmlTag = 'Define',
	csXmlTagName = 'Define',

	-- CSS/SCSS
	cssAtRule = 'PreCondit',
	cssAttr = 'Keyword',
	cssAttrComma = 'Noise',
	cssAttrRegion = 'Keyword',
	cssBraces = 'Delimiter',
	cssClassName = 'Identifier',
	cssClassNameDot = 'Noise',
	cssFlexibleBoxAttr = 'cssAttr',
	cssFunctionComma = 'Noise',
	cssImportant = 'Exception',
	cssNoise = 'Noise',
	cssProp = 'Label',
	cssPseudoClass = 'Special',
	cssPseudoClassId = 'cssSelectorOp',
	cssSelectorOp = 'Operator',
	cssTagName = 'Structure',
	cssUnitDecorators = 'Type',

	-- dart
	dartLibrary = 'Statement',

	-- dos INI
	dosiniHeader = 'Title',
	dosiniLabel = 'Label',

	-- dot
	dotKeyChar = 'Character',
	dotType = 'Type',

	-- Git
	gitcommitHeader = 'SpecialComment',
	gitcommitDiscardedFile = 'gitcommitSelectedFile',
	gitcommitOverFlow = 'Error',
	gitcommitSelectedFile = 'Directory',
	gitcommitSummary = 'Title',
	gitcommitUntrackedFile = 'gitcommitSelectedFile',
	gitconfigAssignment = 'String',
	gitconfigEscape = 'SpecialChar',
	gitconfigNone = 'Operator',
	gitconfigSection = 'Structure',
	gitconfigVariable = 'Label',
	gitrebaseBreak = 'Keyword',
	gitrebaseCommit = 'Tag',
	gitrebaseDrop = 'Exception',
	gitrebaseEdit = 'Define',
	gitrebaseExec = 'PreProc',
	gitrebaseFixup = 'gitrebaseSquash',
	gitrebaseMerge = 'PreProc',
	gitrebasePick = 'Include',
	gitrebaseReset = 'gitrebaseLabel',
	gitrebaseReword = 'gitrebasePick',
	gitrebaseSquash = 'Macro',
	gitrebaseSummary = 'Title',

	-- Go
	goBlock = 'Delimiter',
	goBoolean = 'Boolean',
	goBuiltins = 'Function',
	goField = 'Identifier',
	goFloat = 'Float',
	goFormatSpecifier = 'Character',
	goFunction = 'Function',
	goFunctionCall = 'goFunction',
	goFunctionReturn = {},
	goImport = 'Include',
	goMethodCall = 'goFunctionCall',
	goPackage = 'goStatement',
	goParamType = 'goReceiverType',
	goPointerOperator = 'StorageClass',
	goPredefinedIdentifiers = 'ConsCOLOUR.tant',
	goReceiver = 'goBlock',
	goReceiverType = 'goTypeName',
	goSimpleParams = 'goBlock',
	goStatement = 'Keyword',
	goType = 'Type',
	goTypeConstructor = 'goFunction',
	goTypeName = 'Type',
	goVarAssign = 'Identifier',
	goVarDefs = 'goVarAssign',

	-- Help
	helpCommand = 'Statement',
	helpHeader = 'Label',
	helpHeadline = 'Title',
	helpHyperTextJump = 'Tag',
	helpHyperTextEntry = 'Tag',
	helpExample = 'Statement',
	helpNote = 'DiagnosticHint',
	helpOption = 'Keyword',
	helpSectionDelim = 'Delimiter',

	-- HTML
	htmlArg = 'Label',
	htmlBold = 'Bold',
	htmlTitle = 'htmlBold',
	htmlEndTag = 'htmlTag',
	htmlH1 = 'markdownH1',
	htmlH2 = 'markdownH2',
	htmlH3 = 'markdownH3',
	htmlH4 = 'markdownH4',
	htmlH5 = 'markdownH5',
	htmlH6 = 'markdownH6',
	htmlItalic = 'Italic',
	htmlSpecialTagName = 'Keyword',
	htmlTag = 'Special',
	htmlTagN = 'Typedef',
	htmlTagName = 'Type',

	-- i3config
	i3ConfigAction = 'Function',
	i3ConfigAssignKeyword = 'Keyword',
	i3ConfigAssign = 'i3ConfigVariable',
	i3ConfigBind = '@text',
	i3ConfigBindKeyword = 'Keyword',
	i3ConfigBlockKeyword = 'Keyword',
	i3ConfigBorderKeyword = 'Keyword',
	i3ConfigBorderStyleKeyword = 'Keyword',
	i3ConfigClientColorKeyword = 'Keyword',
	i3ConfigCommandKeyword = 'Keyword',
	i3ConfigDelayUrgencyKeyword = 'Keyword',
	i3ConfigDrawingMarksKeyword = 'Keyword',
	i3ConfigEdgeKeyword = 'Keyword',
	i3ConfigExec = 'Statement',
	i3ConfigExecKeyword = 'Keyword',
	i3ConfigFloating = 'Keyword',
	i3ConfigFocusFollowsMouseKeyword = 'Keyword',
	i3ConfigFocusOnActivationKeyword = 'Keyword',
	i3ConfigFocusWrappingKeyword = 'Keyword',
	i3ConfigFontContent = 'String',
	i3ConfigFontKeyword = 'Keyword',
	i3ConfigFontSeparator = 'Delimiter',
	i3ConfigFontSize = 'i3ConfigNumber',
	i3ConfigForceXineramaKeyword = 'Keyword',
	i3ConfigGapStyleKeyword = 'Keyword',
	i3ConfigInitialize = 'String',
	i3ConfigInitializeKeyword = 'Keyword',
	i3ConfigInterprocessKeyword = 'Keyword',
	i3ConfigLayoutKeyword = 'Keyword',
	i3ConfigMouseWarpingKeyword = 'Keyword',
	i3ConfigNoFocusKeyword = 'Keyword',
	i3ConfigNoStartupId = 'i3ConfigBindArgument',
	i3ConfigNumber = 'Number',
	i3ConfigOrientationKeyword = 'Keyword',
	i3ConfigPopupOnFullscreenKeyword = 'Keyword',
	i3ConfigResourceKeyword = 'Keyword',
	i3ConfigSmartBorderKeyword = 'Keyword',
	i3ConfigSmartGapKeyword = 'Keyword',
	i3ConfigString = 'String',
	i3ConfigTitleAlignKeyword = 'Keyword',
	i3ConfigVariable = 'Define',
	i3ConfigVariableAndModifier = 'Character',
	i3ConfigVariableModifier = 'Operator',
	i3ConfigWindowCommandSpecial = 'htmlTag',
	i3ConfigWorkspaceKeyword = 'Keyword',

	-- Java
	javaClassDecl = 'Structure',

	-- JavaScript
	jsFuncBlock = 'Function',
	jsObjectKey = 'Type',
	jsReturn = 'Keyword',
	jsVariableDef = 'Identifier',

	-- JSON
	jsonBraces = 'luaBraces',
	jsonEscape = 'SpecialChar',
	jsonKeywordMatch = 'Operator',
	jsonNull = 'ConsCOLOUR.tant',
	jsonQuote = 'Delimiter',
	jsonString = 'String',
	jsonStringSQError = 'Exception',

	-- Lua
	['@lsp.type.function.lua'] = {},
	['@lsp.type.keyword.lua'] = 'SpecialComment',
	['@lsp.typemod.function.declaration.lua'] = '@lsp.type.function',
	['@lsp.typemod.function.global.lua'] = '@lsp.type.function',
	['@lsp.typemod.variable.defaultLibrary.lua'] = '@lsp.type.class.lua',
	['@lsp.typemod.variable.definition.lua'] = '@structure.lua',
	luaBraces = 'Structure',
	luaBrackets = 'Delimiter',
	luaBuiltin = 'Keyword',
	luaComma = 'Delimiter',
	luaDocTag = 'SpecialComment',
	luaFuncArgName = 'Identifier',
	luaFuncCall = 'Function',
	luaFuncId = 'luaNoise',
	luaFuncKeyword = 'Type',
	luaFuncName = 'Function',
	luaFuncParens = 'Delimiter',
	luaFuncTable = 'Identifier',
	luaFunction = 'Keyword',
	luaGotoLabel = 'luaLabel',
	luaIn = 'luaRepeat',
	luaLocal = 'Keyword',
	luaNoise = 'Delimiter',
	luaParens = 'Delimiter',
	luaSpecialTable = 'Structure',
	luaSpecialValue = 'Function',
	luaStatement = 'Keyword',
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return {bg = delimiter.bg, fg = delimiter.fg, italic = true}
	end,

	-- Make
	makeCommands = 'Statment',
	makeSpecTarget = 'Type',

	-- Man
	manHeader = 'markdownH1',
	manOptionDesc = 'Special',
	manReference = '@text.uri',
	manSectionHeading = 'markdownH2',
	manSubHeading = 'markdownH3',
	manUnderline = '@text.literal',

	-- Markdown
	markdownCode = 'mkdCode',
	markdownCodeDelimiter = 'mkdCodeDelimiter',
	markdownEscape = 'SpecialChar',
	markdownH1 = {fg = COLOUR.red, bold = true},
	markdownH2 = {fg = COLOUR.orange, bold = true},
	markdownH3 = {fg = COLOUR.yellow, bold = true},
	markdownH4 = {fg = COLOUR.green_dark, bold = true},
	markdownH5 = {fg = COLOUR.cyan, bold = true},
	markdownH6 = {fg = COLOUR.purple_light, bold = true},
	markdownLinkDelimiter = 'mkdDelimiter',
	markdownLinkText = 'mkdLink',
	markdownLinkTextDelimiter = 'markdownLinkDelimiter',
	markdownUrl = 'mkdURL',
	mkdBold = 'Ignore',
	mkdBoldItalic = 'mkdBold',
	mkdCode = 'Statement',
	mkdCodeDelimiter = 'mkdBold',
	mkdCodeEnd = 'mkdCodeStart',
	mkdCodeStart = 'mkdCodeDelimiter',
	mkdDelimiter = 'Delimiter',
	mkdHeading = 'Delimiter',
	mkdItalic = 'mkdBold',
	mkdLineBreak = 'NonText',
	mkdLink = 'Underlined',
	mkdListItem = 'Special',
	mkdRule = function(self) return {fg = self.Ignore.fg, sp = self.Delimiter.fg, underline = true} end,
	mkdURL = 'htmlString',

	-- PlantUML
	plantumlArrowLR = 'Statement',
	plantumlColonLine = {},
	plantumlMindmap = 'Label',
	plantumlMindmap2 = 'Label',

	-- Rust
	['@lsp.mod.callable.rust'] = '@lsp.type.function',
	['@lsp.type.builtinType.rust'] = '@lsp.type.type',
	['@lsp.type.character.rust'] = {},
	['@lsp.type.decorator.rust'] = '@preproc',
	['@lsp.type.derive.rust'] = '@macro',
	['@lsp.type.enumMember.rust'] = {},
	['@lsp.type.macro.rust'] = {},
	['@lsp.type.operator.rust'] = {},
	['@lsp.type.selfKeyword.rust'] = '@keyword',
	['@lsp.type.selfTypeKeyword.rust'] = '@lsp.type.typeAlias.rust',
	['@lsp.type.string.rust'] = {},
	['@lsp.type.typeAlias.rust'] = '@type.definition',
	['@lsp.typemod.character.injected.rust'] = '@lsp.type.character',
	['@lsp.typemod.deriveHelper.attribute.rust'] = '@lsp.type.decorator.rust',
	['@lsp.typemod.keyword.injected.rust'] = '@keyword',
	['@lsp.typemod.macro.injected.rust'] = '@macro',
	['@lsp.typemod.operator.injected.rust'] = '@operator',
	['@lsp.typemod.string.injected.rust'] = '@lsp.type.string',
	rustAssert = 'Debug',
	rustCharacterDelimiter = 'rustNoise',
	rustIdentifier = 'Identifier',
	rustStaticLifetime = 'rustStorage',
	rustStringDelimiter = 'rustNoise',

	-- Python
	pythonBrackets = 'Delimiter',
	pythonBuiltinFunc = 'Operator',
	pythonBuiltinObj = 'Type',
	pythonBuiltinType = 'Type',
	pythonClass = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator = 'PreProc',
	pythonDottedName = 'Identifier',
	pythonError = 'Error',
	pythonException = 'Exception',
	pythonInclude = 'Include',
	pythonIndentError = 'pythonError',
	pythonLambdaExpr = 'pythonOperator',
	pythonOperator = 'Operator',
	pythonParam = 'Identifier',
	pythonParameters = 'Delimiter',
	pythonSelf = 'Statement',
	pythonSpaceError = 'pythonError',
	pythonStatement = 'Statement',

	-- Razor
	razorCode = 'PreProc',
	razorcsLHSMemberAccessOperator = 'Noise',
	razorcsRHSMemberAccessOperator = 'razorcsLHSMemberAccessOperator',
	razorcsStringDelimiter = 'razorhtmlValueDelimiter',
	razorcsTypeNullable = 'Special',
	razorcsUnaryOperatorKeyword = 'Operator',
	razorDelimiter = 'Delimiter',
	razorEventAttribute = 'PreCondit',
	razorFor = 'razorIf',
	razorhtmlAttribute = 'htmlArg',
	razorhtmlAttributeOperator = 'Operator',
	razorhtmlTag = 'htmlTag',
	razorhtmlValueDelimiter = 'Delimiter',
	razorIf = 'PreCondit',
	razorImplicitExpression = 'PreProc',
	razorLine = 'ConsCOLOUR.tant',
	razorUsing = 'Include',

	-- Ruby
	rubyClass = 'Structure',
	rubyDefine = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	-- Scala
	scalaKeyword = 'Keyword',
	scalaNameDefinition = 'Identifier',

	-- SCSS
	scssAmpersand = 'Special',
	scssAttribute = 'Noise',
	scssBoolean = 'Boolean',
	scssDefault = 'Keyword',
	scssDefinition = 'PreProc',
	scssElse = 'scssIf',
	scssIf = 'PreCondit',
	scssInclude = 'Include',
	scssMixinName = function(self)
		local definition = self.cssClassName
		return {bg = definition.bg, fg = definition.fg, italic = true}
	end,
	scssSelectorChar = 'Delimiter',
	scssSelectorName = 'Identifier',
	scssVariable = 'Define',
	scssVariableAssignment = 'Operator',

	-- shell
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop = 'Repeat',
	shParen = 'Delimiter',
	shQuote = 'Delimiter',
	shSet = 'Statement',
	shTestOpr = 'Debug',

	-- SQL
	sqlKeyword = 'Keyword',
	sqlParen = 'Delimiter',
	sqlSpecial = 'ConsCOLOUR.tant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	-- Solidity
	solBuiltinType = 'Type',
	solContract = 'Typedef',
	solContractName = 'Function',

	-- TeX
	texMathRegion = 'Number',
	texMathSub = 'Number',
	texMathSuper = 'Number',
	texMathRegionX = 'Number',
	texMathRegionXX = 'Number',

	-- TOML
	tomlComment = 'Comment',
	tomlDate = 'Special',
	tomlFloat = 'Float',
	tomlKey = 'Label',
	tomlTable = 'Structure',

	-- VimScript
	vimCmdSep = 'Delimiter',
	vimFunction = 'Function',
	vimFgBgAttrib = 'ConsCOLOUR.tant',
	vimHiCterm = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup = 'Typedef',
	vimHiGui = 'vimHiCterm',
	vimHiGuiFgBg = 'vimHiGui',
	vimHiKeyList = 'Operator',
	vimIsCommand = 'Identifier',
	vimOption = 'Keyword',
	vimScriptDelim = 'Ignore',
	vimSet = 'String',
	vimSetEqual = 'Operator',
	vimSetSep = 'Delimiter',
	vimUserFunc = 'vimFunction',

	-- XML
	xmlAttrib = 'htmlArg',
	xmlEndTag = 'xmlTag',
	xmlEqual = 'Operator',
	xmlTag = 'htmlTag',
	xmlTagName = 'htmlTagName',

	-- XXD
	xxdAddress = 'Label',
	xxdAscii = 'Character',
	xxdDot = 'Ignore',
	xxdSep = 'Delimiter',

	-- YAML
	yamlInline = 'Delimiter',
	yamlKey = 'Label',

	--[[ Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]

	-- ALE
	ALEErrorSign = 'DiagnosticSignError',
	ALEWarningSign = 'DiagnosticSignWarn',

	-- barbar.nvim
	BufferAlternate = function(self) return {fg = self.BufferVisible.fg, bg = self.TabLine.bg} end,
	BufferAlternateERROR = function(self) return {fg = self.ErrorMsg.fg, bg = COLOUR.gray_dark} end,
	BufferAlternateHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = COLOUR.gray_dark} end,
	BufferAlternateIndex = function(self) return {fg = self.Number.fg, bg = COLOUR.gray_dark} end,
	BufferAlternateINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = COLOUR.gray_dark} end,
	BufferAlternateMod = function(self) return {fg = self.BufferVisibleMod.fg, bg = COLOUR.gray_dark, bold = true} end,
	BufferAlternateSign = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferAlternate.bg} end,
	BufferAlternateTarget = function(self) return {fg = self.BufferAlternateSign.fg, bg = COLOUR.gray_dark, italic = true} end,
	BufferAlternateWARN = function(self) return {fg = self.WarningMsg.fg, bg = COLOUR.gray_dark} end,

	BufferCurrent = 'TabLineSel',
	BufferCurrentERROR = function(self) return {fg = self.ErrorMsg.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentIndex = function(self) return {fg = self.Number.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentMod = {fg = COLOUR.tan, bg = COLOUR.black, bold = true},
	BufferCurrentSign = function(self) return {fg = COLOUR.teal, bg = self.BufferCurrent.bg} end,
	BufferCurrentTarget = 'BufferCurrentSign',
	BufferCurrentWARN = function(self) return {fg = self.WarningMsg.fg, bg = self.BufferCurrent.bg} end,

	BufferInactive = 'BufferVisible',
	BufferInactiveERROR = function(self) return {fg = self.ErrorMsg.fg, bg = self.BufferInactive.bg} end,
	BufferInactiveHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferInactive.bg} end,
	BufferInactiveIndex = function(self) return {fg = self.Number.fg, bg = self.BufferInactive.bg} end,
	BufferInactiveINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferInactive.bg} end,
	BufferInactiveMod = 'BufferVisibleMod',
	BufferInactiveSign = 'BufferVisibleSign',
	BufferInactiveTarget = 'BufferVisibleTarget',
	BufferInactiveWARN = function(self) return {fg = self.WarningMsg.fg, bg = self.BufferInactive.bg} end,

	BufferTabpages = {bold = true},
	BufferTabpageFill = 'TabLineFill',

	BufferVisible = 'TabLine',
	BufferVisibleERROR = function(self) return {fg = self.ErrorMsg.fg, bg = self.BufferVisible.bg} end,
	BufferVisibleHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferVisible.bg} end,
	BufferVisibleIndex = function(self) return {fg = self.Number.fg, bg = self.BufferVisible.bg} end,
	BufferVisibleINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferVisible.bg} end,
	BufferVisibleMod = function(self) return {fg = COLOUR.white, bg = self.BufferVisible.bg, italic = true} end,
	BufferVisibleSign = function(self)
		local definition = self.BufferVisibleMod
		return {fg = definition.fg, bg = definition.bg, bold = true}
	end,
	BufferVisibleTarget = 'BufferVisibleSign',
	BufferVisibleWARN = function(self) return {fg = self.WarningMsg.fg, bg = self.BufferVisible.bg} end,

	-- coc.nvim
	CocErrorHighlight = 'DiagnosticUnderlineError',
	CocErrorSign = 'DiagnosticSignError',
	CocHintHighlight = 'DiagnosticUnderlineHint',
	CocHintSign = 'DiagnosticSignHint',
	CocInfoHighlight = 'DiagnosticUnderlineInfo',
	CocInfoSign = 'DiagnosticSignInfo',
	CocWarningHighlight = 'DiagnosticUnderlineWarn',
	CocWarningSign = 'DiagnosticSignWarn',

	-- Fern
	FernBranchText = 'Directory',

	-- gitsigns.nvim
	GitSignsAdd = 'GitGutterAdd',
	GitSignsChange = 'GitGutterChange',
	GitSignsDelete = 'GitGutterDelete',

	-- indent-blankline.nvim
	IndentBlanklineChar = function(self)
		local definition = vim.deepcopy(self.Whitespace)
		definition.nocombine = true
		return definition
	end,
	IndentBlanklineSpaceChar = 'IndentBlanklineChar',

	-- lazy.nvim
	LazyButton = 'TabLine',
	LazyButtonActive = 'TabLineSel',
	LazyCommit = 'Number',
	LazyCommitIssue = 'LazyUrl',
	LazyCommitType = 'Type',
	LazyDir = 'Directory',
	LazyH1 = 'markdownH1',
	LazyH2 = 'markdownH2',
	LazyProp = '@field',
	LazyReasonEvent = 'Repeat',
	LazyReasonFt = 'Conditional',
	LazyReasonImport = 'Function',
	LazyReasonKeys = 'String',
	LazyReasonPlugin = 'Label',
	LazyReasonSource = 'Include',
	LazyReasonStart = 'ConsCOLOUR.tant',
	LazySpecial = 'Special',
	LazyTaskOutput = 'Statement',
	LazyUrl = 'Underlined',

	-- LSPSaga
	DefinitionCount = 'Number',
	DefinitionIcon = 'Special',
	ReferencesCount = 'Number',
	ReferencesIcon = 'DefinitionIcon',
	TargetFileName = 'Directory',
	TargetWord = 'Title',

	-- mini.nvim
	MiniJump = 'MiniJump2dSpot',

	-- NERDTree
	NERDTreeCWD = 'Label',
	NERDTreeUp = 'Operator',
	NERDTreeDir = 'Directory',
	NERDTreeDirSlash = 'Delimiter',
	NERDTreeOpenable = 'NERDTreeDir',
	NERDTreeClosable = 'NERDTreeOpenable',
	NERDTreeExecFile = 'Function',
	NERDTreeLinkTarget = 'Tag',

	-- nvim-cmp
	CmpItemAbbr = 'Ignore',
	CmpItemAbbrMatch = 'Underlined',
	CmpItemAbbrMatchFuzzy = function(self) return {fg = self.Normal.fg, nocombine = true, underline = true} end,
	CmpItemKindClass = 'CmpItemKindStruct',
	CmpItemKindsp = 'Label',
	CmpItemKindConstant = 'ConsCOLOUR.tant',
	CmpItemKindConstructor = 'CmpItemKindMethod',
	CmpItemKind = 'Type',
	CmpItemKindEnum = 'CmpItemKindStruct',
	CmpItemKindEnumMember = 'CmpItemKindConsCOLOUR.tant',
	CmpItemKindEvent = 'Repeat',
	CmpItemKindField = 'Identifier',
	CmpItemKindFile = 'Directory',
	CmpItemKindFolder = 'CmpItemKindFile',
	CmpItemKindFunction = 'Function',
	CmpItemKindInterface = 'Type',
	CmpItemKindKeyword = 'Keyword',
	CmpItemKindMethod = 'CmpItemKindFunction',
	CmpItemKindModule = 'Include',
	CmpItemKindOperator = 'Operator',
	CmpItemKindProperty = 'CmpItemKindField',
	CmpItemKindReference = 'StorageClass',
	CmpItemKindSnippet = 'Special',
	CmpItemKindStruct = 'Structure',
	CmpItemKindText = 'String',
	CmpItemKindTypeParameter = 'Typedef',
	CmpItemKindUnit = 'CmpItemKindStruct',
	CmpItemKindValue = 'CmpItemKindConsCOLOUR.tant',
	CmpItemKindVariable = 'Identifier',

	-- nvim-tree
	NvimTreeGitDeleted = function(self) return {fg = self.DiffDelete.bg} end,
	NvimTreeGitDirty = {fg = COLOUR.orange},
	NvimTreeGitIgnored = 'Ignore',
	NvimTreeGitMerge = 'NvimTreeGitRenamed',
	NvimTreeGitNew = function(self) return {fg = self.DiffAdd.bg} end,
	NvimTreeGitRenamed = function(self) return {fg = self.DiffChange.bg} end,
	NvimTreeGitStaged = {fg = COLOUR.cyan},

	-- packer.nvim
	packerFail = 'ErrorMsg',
	packerHash = 'Number',
	packerPackageNotLoaded = 'Ignore',
	packerStatusFail = 'Statement',
	packerStatusSuccess = 'packerStatusFail',
	packerSuccess = function(self)
		local definition = vim.deepcopy(self.packerFail)
		definition.bg = nil
		definition.fg = COLOUR.green
		return definition
	end,

	-- symbols-outline.nvim
	FocusedSymbol = {},
	SymbolsOutlineConnector = 'Delimiter',

	-- todo-comments.nvim
	TodoFgFIX = function(self) return {fg = self.ErrorMsg.fg} end,
	TodoFgHACK = {fg = COLOUR.yellow},
	TodoFgNOTE = 'DiagnosticFloatingHint',
	TodoFgPERF = 'DiagnosticFloatingInfo',
	TodoFgTODO = function(self) return {fg = self.Todo.bg, italic = true} end,
	TodoFgWARN = function(self) return {fg = self.WarningMsg.fg} end,

	TodoBgFIX = function(self) return {fg = COLOUR.black, bg = self.TodoFgFIX.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgHACK = function(self) return {fg = COLOUR.black, bg = self.TodoFgHACK.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgNOTE = function(self) return {fg = COLOUR.black, bg = self.TodoFgNOTE.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgPERF = function(self) return {fg = COLOUR.black, bg = self.TodoFgPERF.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgTODO = function(self) return {fg = COLOUR.black, bg = self.TodoFgTODO.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgWARN = function(self) return {fg = COLOUR.black, bg = self.TodoFgWARN.fg, bold = true, italic = true, nocombine = true} end,

	TodoSignFIX = 'TodoFgFIX',
	TodoSignHACK = 'TodoFgHACK',
	TodoSignNOTE = 'TodoFgNOTE',
	TodoSignPERF = 'TodoFgPERF',
	TodoSignTODO = 'TodoFgTODO',
	TodoSignWARN = 'TodoFgWARN',

	-- vim-easymotion
	EasyMotion = 'IncSearch',

	-- vim-gitgutter
	GitGutterAdd = {fg = COLOUR.green},
	GitGutterChange = {fg = COLOUR.yellow},
	GitGutterDelete = {fg = COLOUR.red},
	GitGutterChangeDelete = {fg = COLOUR.orange},

	-- vim-indent-guides
	IndentGuidesOdd = {bg = COLOUR.gray_darker},
	IndentGuidesEven = {bg = COLOUR.gray},

	-- vim-jumpmotion
	JumpMotion = 'EasyMotion',

	-- vim-sandwhich
	OperatorSandwichChange = 'DiffText',

	-- vim-signify
	SignifySignAdd = 'GitGutterAdd',
	SignifySignChange = 'GitGutterChange',
	SignifySignDelete = 'GitGutterDelete',
	SignifySignChangeDelete = 'GitGutterChangeDelete',

}
