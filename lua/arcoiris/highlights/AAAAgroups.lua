return {
  --[[ 1. Text Analysis ]]
  Comment     = { fg = COLOUR.comment, style = 'italic' },
  NonText     = { fg = COLOUR.non_text, bg = COLOUR.non_text },
  MsgArea     = { fg = COLOUR.main_fg, bg = COLOUR.main_bg },
  EndOfBuffer = 'NonText',
  Whitespace  = { fg = COLOUR.trailing, bg = NONE },

  --[[ 1.1. Literals]]
  Constant  = { fg = COLOUR.orange_light},
  String    = { fg = COLOUR.magenta },
  Character = { fg = COLOUR.red_light},
  Number    = { fg = COLOUR.pink_light},
  Boolean   = { fg = COLOUR.yellow},
  Float     = 'Number',

  --[[ 1.2. Identifiers]]
  Identifier = { fg = FG },
  Function   = { fg = COLOUR.purple},

  --[[ 1.3. Syntax]]
  Statement   = { fg = COLOUR.ice},
  Conditional = { fg = COLOUR.ice, style = 'italic'},
  Repeat      = { fg = COLOUR.turqoise, style = 'italic'},
  Label       = { fg = COLOUR.gray_light, style = 'bold'},
  Operator    = { fg = COLOUR.green, style = 'bold'},
  Keyword     = { fg = COLOUR.teal},
  Exception   = { fg = COLOUR.red_light, style = 'bold'},
  Noise       = 'Delimiter',

  --[[ 1.4. Metatextual Information]]
  PreProc   = { fg = COLOUR.tan},
  Include   = { fg = COLOUR.green_light, style = 'nocombine' },
  Define    = { fg = COLOUR.blue, style = 'nocombine' },
  Macro     = { fg = COLOUR.blue, style = 'italic' },
  PreCondit = { fg = COLOUR.tan, style = 'italic' },

  --[[ 1.5. Semantics]]
  Type         = { fg = COLOUR.cyan},
  StorageClass = { fg = COLOUR.orange_light, style = 'bold' },
  Structure    = { fg = COLOUR.blue, style = 'bold' },
  Typedef      = { fg = COLOUR.cyan, style = 'italic' },

  --[[ 1.6. Edge Cases]]
  Special        = { fg = COLOUR.magenta,   style = 'bold'},
  SpecialChar    = { fg = COLOUR.red_light, style = 'italic'},
  Delimiter      = { fg = COLOUR.white },
  SpecialComment = { fg = COLOUR.gray, style = {'bold', 'nocombine'} },
  Debug          = 'WarningMsg',
  SpecialKey     = 'Character',
  Tag            = 'Underlined',

  --[[ 1.7. Help Syntax]]
  Underlined = { fg = COLOUR.turqoise, style = 'underline'},
  Ignore     = { fg = COLOUR.gray },
  Error      = { fg = COLOUR.red,        bg = COLOUR.lsp_erro_bg, style = 'bold' },
  Hint       = { fg = COLOUR.magenta,    bg = COLOUR.lsp_hint_bg, style = 'bold' },
  Info       = { fg = COLOUR.cyan,       bg = COLOUR.lsp_info_bg, style = 'bold' },
  Warning    = { fg = COLOUR.yellow,     bg = COLOUR.lsp_warn_bg, style = 'bold' },
  Todo       = { fg = COLOUR.black,      bg = COLOUR.yellow,      style = 'bold' },
  Note       = { fg = COLOUR.black,      bg = COLOUR.hue_3,       style = 'bold' },

  --[[ 2... Editor UI  ]]
  --[[ 2.1. Status Line]]
  StatusLine       = { fg = COLOUR.green_light, bg = COLOUR.gray_darker },
  StatusLineNC     = function(self) return { fg = COLOUR.gray, bg = self.StatusLine.bg } end,
  StatusLineTerm   = 'StatusLine',
  StatusLineTermNC = 'StatusLineNC',

  --[[ 2.2. Separators]]
  TabLine     = function(self) return { fg = FG,              bg = self.StatusLine.bg } end,
  TabLineFill = function(self) return { fg = self.TabLine.bg, bg = COLOUR.non_text } end,
  TabLineSel  = function(self) return { fg = self.TabLine.fg, bg = highlight_group_normal.bg } end,
  FloatBorder = { fg = COLOUR.gray_dark },
  Title       = { style = 'bold' },
  VertSplit   = { fg = COLOUR.background },

  -- BufferLineBackground = { bg = COLOUR.gray_darker },
  -- BufferLineNumbersSelected = { bg = COLOUR.gray_medium },
  -- BufferLineBufferSelected = { bg = COLOUR.gray_medium },
  -- BufferLineCloseButtonSelected = { bg= gray_medium },
  -- BufferLineIndicatorSelected = { fg = COLOUR.white, bg = COLOUR.gray_darker },
  -- BufferLineCloseButton = { bg= gray_darker },
  -- BufferLineNumbers = { bg = COLOUR.gray_darker },
  -- BufferLineSeparator = { bg = COLOUR.non_text },


  BufferLineFill       = { bg = COLOUR.main_bg },

  --[[ 2.3. Conditional Line Highlighting]]
  QuickFixLine    = function(self) return { bg = self.StatusLine.bg } end,
  debugBreakpoint = 'ErrorMsg',
  debugPC         = 'ColorColumn',
  Conceal         = 'NonText',
  LineNr          = { fg = COLOUR.gray },
  Visual          = { bg = COLOUR.visual_bg },
  VisualNOS       = { bg = COLOUR.red },
  CursorLine      = { bg = COLOUR.gray_dark },
  CursorLineNR    = { fg = COLOUR.white, bg = COLOUR.main_bg_light },

  --[[ 2.4. Popup Menu]]
  Pmenu      = { fg = FG,         bg = COLOUR.gray_black  },
  PmenuSbar  = { bg = COLOUR.gray_black, blend = 1               },
  PmenuSel   = { fg = COLOUR.black,      bg = COLOUR.gray_light },
  PmenuThumb = { bg = COLOUR.main_bg_light                       },
  WildMenu   = 'PmenuSel',

  --[[ 2.5. Folds]]
  FoldColumn = { style = 'bold', bg = COLOUR.background,   fg = COLOUR.visual_grey },
  Folded     = { style = 'bold', fg = COLOUR.black },

  --[[ 2.6. Scrollbar Plugin ]]
  ScrollbarHandle       = { bg = COLOUR.main_bg_light },
  ScrollbarWarnHandle   = { bg = COLOUR.main_bg_light },
  ScrollbarHintHandle   = { bg = COLOUR.main_bg_light, fg = COLOUR.magenta },
  ScrollbarMiscHandle   = { bg = COLOUR.main_bg_light },
  ScrollbarInfoHandle   = { bg = COLOUR.main_bg_light },
  ScrollbarSearchHandle = { bg = COLOUR.main_bg_light, fg = COLOUR.white },
  -- Scrollbar             = { fg = COLOUR.main_bg },
  ScrollbarWarn         = { fg = COLOUR.yellow },
  ScrollbarHint         = { fg = COLOUR.magenta },
  -- ScrollbarMisc         = { fg = COLOUR.main_bg },
  -- ScrollbarInfo         = { fg = COLOUR.main_bg },
  ScrollbarSearch       = { fg = COLOUR.white },

  --[[ 2.6. Diffs]]
  DiffChange = NONE,
  DiffAdd    = { fg = COLOUR.cyan_light,       bg = COLOUR.green_dark_bg },
  DiffDelete = { fg = COLOUR.pink_light, bg = COLOUR.red_dark_bg   },
  DiffText   = function(self) return { fg = self.DiffAdd.fg, bg = COLOUR.yellow} end,

  --[[ 2.7. Searching]]
  IncSearch    = { fg = COLOUR.gray, style = 'bold', bg = COLOUR.non_text },
  HlSearchLens = { fg = COLOUR.comment, style = 'italic', bg = COLOUR.non_text },
  MatchParen   = { style = { 'bold', 'underline' }, fg = COLOUR.green },
  Search       = { style = { 'underline',           color = COLOUR.white } },

  --[[ 2.8. Spelling]]
  SpellBad   = { style = { 'undercurl', color = COLOUR.red    } },
  SpellCap   = { style = { 'undercurl', color = COLOUR.yellow } },
  SpellLocal = { style = { 'undercurl', color = COLOUR.green  } },
  SpellRare  = { style = { 'undercurl', color = COLOUR.orange } },

  --[[ 2.9. Conditional Column Highlighting]]
  ColorColumn = { fg = COLOUR.red, bg = COLOUR.color_column },
  SignColumn  = NONE,

  --[[ 2.10. Messages]]
  ErrorMsg   = { fg = COLOUR.red,          style = 'bold'     },
  HintMsg    = { fg = COLOUR.magenta,      style = 'italic'   },
  InfoMsg    = { fg = COLOUR.pink_light,   style = 'italic'   },
  ModeMsg    = { fg = COLOUR.yellow                           },
  WarningMsg = { fg = COLOUR.orange,       style = 'bold'     },
  Question   = { fg = COLOUR.orange_light, style = 'underline'},

  --[[ 2.11. LSP / Diagnostics ]]
  DiagnosticError                   = 'Error',
  DiagnosticFloatingError           = 'ErrorMsg',
  DiagnosticSignError               = 'DiagnosticFloatingError',

  DiagnosticWarn                    = 'Warning',
  DiagnosticFloatingWarn            = 'WarningMsg',
  DiagnosticSignWarn                = 'DiagnosticFloatingWarn',

  DiagnosticHint                    = 'Hint',
  DiagnosticFloatingHint            = 'HintMsg',
  DiagnosticSignHint                = 'DiagnosticFloatingHint',

  DiagnosticInfo                    = 'Info',
  DiagnosticFloatingInfo            = 'InfoMsg',
  DiagnosticSignInfo                = 'DiagnosticFloatingInfo',

  DiagnosticUnderlineError          = { style = { 'bold,underline', color = COLOUR.red        } },
  DiagnosticUnderlineHint           = { style = { 'bold,underline', color = COLOUR.magenta    } },
  DiagnosticUnderlineInfo           = { style = { 'bold,underline', color = COLOUR.pink_light } },
  DiagnosticUnderlineWarn           = { style = { 'bold,underline', color = COLOUR.orange     } },

  LspDiagnosticsDefaultError        = 'DiagnosticError',
  LspDiagnosticsFloatingError       = 'DiagnosticFloatingError',
  LspDiagnosticsSignError           = 'DiagnosticSignError',

  LspDiagnosticsDefaultWarning      = 'DiagnosticWarn',
  LspDiagnosticsFloatingWarning     = 'DiagnosticFloatingWarn',
  LspDiagnosticsSignWarning         = 'DiagnosticSignWarn',

  LspDiagnosticsDefaultHint         = 'DiagnosticHint',
  LspDiagnosticsFloatingHint        = 'DiagnosticFloatingHint',
  LspDiagnosticsSignHint            = 'DiagnosticSignHint',

  LspDiagnosticsDefaultInformation  = 'DiagnosticInfo',
  LspDiagnosticsFloatingInformation = 'DiagnosticFloatingInfo',
  LspDiagnosticsSignInformation     = 'DiagnosticSignInfo',

  LspDiagnosticsUnderlineError      = 'DiagnosticUnderlineError',
  LspDiagnosticsUnderlineHint       = 'DiagnosticUnderlineHint',
  LspDiagnosticsUnderlineInfo       = 'DiagnosticUnderlineInfo',
  LspDiagnosticsUnderlineWarning    = 'DiagnosticUnderlineWarn',

  --[[ 2.12. Cursor ]]
  Cursor       = { style = 'inverse' },
  CursorColumn = { bg = COLOUR.gray_dark },
  CursorIM     = 'Cursor',

  --[[ 2.13. Misc ]]
  Directory = { fg = COLOUR.white, style = 'bold' },

  --[[ 3. Programming Languages
  	Everything in this section is OPTIONAL. Feel free to remove everything
  	here if you don't want to define it, or add more if there's something
  	missing.
  ]]
  --[[ 3.1. C ]]
  cConstant    = 'Constant',
  cCustomClass = 'Type',

  --[[ 3.2. C++ ]]
  cppSTLexception = 'Exception',
  cppSTLnamespace = { fg = COLOUR.turqoise},

  --[[ 3.3 C# ]]
  csBraces                       = 'Delimiter',
  csClass                        = 'Structure',
  csClassType                    = 'Type',
  csContextualStatement          = 'Conditional',
  csEndColon                     = 'Delimiter',
  csGeneric                      = 'Typedef',
  csInterpolation                = 'Include',
  csInterpolationDelimiter       = 'SpecialChar',
  csLogicSymbols                 = 'Operator',
  csModifier                     = 'Keyword',
  csNew                          = 'Operator',
  csNewType                      = 'Type',
  csParens                       = 'Delimiter',
  csPreCondit                    = 'PreProc',
  csQuote                        = 'Delimiter',
  csRepeat                       = 'Repeat',
  csStorage                      = 'StorageClass',
  csUnspecifiedStatement         = 'Statement',
  csXmlTag                       = 'Define',
  csXmlTagName                   = 'Define',
  razorCode                      = 'PreProc',
  razorcsLHSMemberAccessOperator = 'Noise',
  razorcsRHSMemberAccessOperator = 'razorcsLHSMemberAccessOperator',
  razorcsStringDelimiter         = 'razorhtmlValueDelimiter',
  razorcsTypeNullable            = 'Special',
  razorcsUnaryOperatorKeyword    = 'Operator',
  razorDelimiter                 = 'Delimiter',
  razorEventAttribute            = 'PreCondit',
  razorFor                       = 'razorIf',
  razorhtmlAttribute             = 'htmlArg',
  razorhtmlAttributeOperator     = 'Operator',
  razorhtmlTag                   = 'htmlTag',
  razorhtmlValueDelimiter        = 'Delimiter',
  razorIf                        = 'PreCondit',
  razorImplicitExpression        = 'PreProc',
  razorLine                      = 'Constant',
  razorUsing                     = 'Include',

  --[[ 3.4. CSS ]]
  cssAtRule              = 'PreCondit',
  cssAttr                = 'Keyword',
  cssAttrComma           = 'Noise',
  cssAttrRegion          = 'Keyword',
  cssBraces              = 'Delimiter',
  cssClassName           = 'Identifier',
  cssClassNameDot        = 'Noise',
  cssFlexibleBoxAttr     = 'cssAttr',
  cssFunctionComma       = 'Noise',
  cssImportant           = 'Exception',
  cssNoise               = 'Noise',
  cssProp                = 'Label',
  cssPseudoClass         = 'Special',
  cssPseudoClassId       = 'cssSelectorOp',
  cssSelectorOp          = 'Operator',
  cssTagName             = 'Structure',
  cssUnitDecorators      = 'Type',
  scssAmpersand          = 'Special',
  scssAttribute          = 'Noise',
  scssBoolean            = 'Boolean',
  scssDefault            = 'Keyword',
  scssElse               = 'scssIf',
  scssMixinName          = function(self)
  	local super = self.cssClassName
  	return { bg = super.bg, fg = super.fg, style = 'Italic' }
  end,
  scssIf                 = 'PreCondit',
  scssInclude            = 'Include',
  scssSelectorChar       = 'Delimiter',
  scssDefinition         = 'PreProc',
  scssSelectorName       = 'Identifier',
  scssVariable           = 'Define',
  scssVariableAssignment = 'Operator',
  sassDefinition         = 'Label',

  --[[ 3.5. Dart ]]
  dartLibrary = 'Statement',

  --[[ 3.6. dot ]]
  dotKeyChar = 'Character',
  dotType    = 'Type',

  --[[ 3.7. Go ]]
  goBlock                 = 'Delimiter',
  goBoolean               = 'Boolean',
  goBuiltins              = 'Operator',
  goField                 = 'Identifier',
  goFloat                 = 'Float',
  goFormatSpecifier       = 'Character',
  goFunction              = 'Function',
  goFunctionCall          = 'goFunction',
  goMethodCall            = 'goFunctionCall',
  goParamType             = 'goReceiverType',
  goPointerOperator       = 'SpecialChar',
  goPredefinedIdentifiers = 'Constant',
  goReceiver              = 'goBlock',
  goReceiverType          = 'goTypeName',
  goSimpleParams          = 'goBlock',
  goType                  = 'Type',
  goTypeConstructor       = 'goFunction',
  goTypeName              = 'Type',
  goVarAssign             = 'Identifier',
  goVarDefs               = 'goVarAssign',
  goFunctionReturn        = NONE,

  --[[ 3.8. HTML ]]
  htmlArg            = 'Label',
  htmlTitle          = 'htmlBold',
  htmlEndTag         = 'htmlTag',
  htmlH1             = 'markdownH1',
  htmlH2             = 'markdownH2',
  htmlH3             = 'markdownH3',
  htmlH4             = 'markdownH4',
  htmlH5             = 'markdownH5',
  htmlH6             = 'markdownH6',
  htmlSpecialTagName = 'Keyword',
  htmlTag            = 'Special',
  htmlTagN           = 'Typedef',
  htmlTagName        = 'Type',
  htmlItalic         = { style = 'italic' },
  htmlBold           = { fg = FG, style = 'bold'},

  --[[ 3.9. Java ]]
  javaClassDecl = 'Structure',

  --[[ 3.10. JavaScript ]]
  jsFuncBlock   = 'Function',
  jsObjectKey   = 'Type',
  jsReturn      = 'Keyword',
  jsVariableDef = 'Identifier',

  --[[ 3.11. JSON ]]
  jsonBraces        = 'luaBraces',
  jsonEscape        = 'SpecialChar',
  jsonKeywordMatch  = 'Operator',
  jsonNull          = 'Constant',
  jsonQuote         = 'Delimiter',
  jsonString        = 'String',
  jsonStringSQError = 'Exception',

  --[[ 3.12. Lua ]]
  luaBraces         = 'Structure',
  luaBrackets       = 'Delimiter',
  luaBuiltin        = 'Keyword',
  luaComma          = 'Delimiter',
  luaFuncArgName    = 'Identifier',
  luaFuncCall       = 'Function',
  luaFuncId         = 'luaNoise',
  luaFuncKeyword    = 'Type',
  luaFuncName       = 'Function',
  luaFuncParens     = 'Delimiter',
  luaFuncTable      = 'Structure',
  luaIn             = 'luaRepeat',
  luaLocal          = 'Type',
  luaNoise          = 'Delimiter',
  luaParens         = 'Delimiter',
  luaSpecialTable   = 'Structure',
  luaSpecialValue   = 'Function',
  luaStringLongTag  = function(self)
  	local delimiter = self.Delimiter
  	return { bg = delimiter.bg, fg = delimiter.fg, style = 'italic'}
  end,

  --[[ 3.12. Make ]]
  makeCommands   = 'Statment',
  makeSpecTarget = 'Type',

  --[[ 3.13. Markdown ]]
  markdownCode              = 'mkdCode',
  markdownCodeDelimiter     = 'mkdCodeDelimiter',
  markdownLinkDelimiter     = 'Delimiter',
  markdownLinkTextDelimiter = 'markdownLinkDelimiter',
  markdownUrl               = 'Underlined',
  mkdBold                   = 'Ignore',
  mkdBoldItalic             = 'mkdBold',
  mkdCode                   = 'Keyword',
  mkdCodeDelimiter          = 'mkdBold',
  mkdCodeEnd                = 'mkdCodeStart',
  mkdCodeStart              = 'mkdCodeDelimiter',
  mkdHeading                = 'Delimiter',
  mkdItalic                 = 'mkdBold',
  mkdLineBreak              = 'NonText',
  mkdListItem               = 'Special',
  markdownH1                = { fg = COLOUR.red, style = 'bold'},
  markdownH2                = { fg = COLOUR.orange, style = 'bold'},
  markdownH3                = { fg = COLOUR.yellow, style = 'bold'},
  markdownH4                = { fg = COLOUR.green_dark, style = 'bold'},
  markdownH5                = { fg = COLOUR.cyan, style = 'bold'},
  markdownH6                = { fg = COLOUR.purple_light, style = 'bold'},
  mkdRule                   = function(self) return { fg = self.Ignore.fg, style = {'underline', color=self.Delimiter.fg}} end,

  --[[ 3.20. Python ]]
  pythonBrackets        = 'Delimiter',
  pythonBuiltinFunc     = 'Operator',
  pythonBuiltinObj      = 'Type',
  pythonBuiltinType     = 'Type',
  pythonClass           = 'Structure',
  pythonClassParameters = 'pythonParameters',
  pythonDecorator       = 'PreProc',
  pythonDottedName      = 'Identifier',
  pythonError           = 'Error',
  pythonException       = 'Exception',
  pythonInclude         = 'Include',
  pythonIndentError     = 'pythonError',
  pythonLambdaExpr      = 'pythonOperator',
  pythonOperator        = 'Operator',
  pythonParam           = 'Identifier',
  pythonParameters      = 'Delimiter',
  pythonSelf            = 'Statement',
  pythonSpaceError      = 'pythonError',
  pythonStatement       = 'Statement',

  --[[ 3.21. Ruby ]]
  rubyClass                  = 'Structure',
  rubyDefine                 = 'Define',
  rubyInterpolationDelimiter = 'Delimiter',

  --[[ 3.23. Scala ]]
  scalaKeyword        = 'Keyword',
  scalaNameDefinition = 'Identifier',

  --[[ 3.24. shell ]]
  shDerefSimple = 'SpecialChar',
  shFunctionKey = 'Function',
  shLoop        = 'Repeat',
  shParen       = 'Delimiter',
  shQuote       = 'Delimiter',
  shSet         = 'Statement',
  shTestOpr     = 'Debug',

  --[[ 3.25. Solidity ]]
  solBuiltinType  = 'Type',
  solContract     = 'Typedef',
  solContractName = 'Function',

  --[[ 3.26. TOML ]]
  tomlComment = 'Comment',
  tomlDate    = 'Special',
  tomlFloat   = 'Float',
  tomlKey     = 'Label',
  tomlTable   = 'Structure',

  --[[ 3.27. VimScript ]]
  vimCmdSep      = 'Delimiter',
  vimFunction    = 'Function',
  vimFgBgAttrib  = 'Constant',
  vimHiCterm     = 'Label',
  vimHiCtermFgBg = 'vimHiCterm',
  vimHiGroup     = 'Typedef',
  vimHiGui       = 'vimHiCterm',
  vimHiGuiFgBg   = 'vimHiGui',
  vimHiKeyList   = 'Operator',
  vimIsCommand   = 'Identifier',
  vimOption      = 'Keyword',
  vimScriptDelim = 'Ignore',
  vimSet         = 'String',
  vimSetEqual    = 'Operator',
  vimSetSep      = 'Delimiter',
  vimUserFunc    = 'vimFunction',

  --[[ 3.28. XML ]]
  xmlAttrib  = 'htmlArg',
  xmlEndTag  = 'xmlTag',
  xmlEqual   = 'Operator',
  xmlTag     = 'htmlTag',
  xmlTagName = 'htmlTagName',

  --[[ 3.29. SQL ]]
  sqlKeyword   = 'Keyword',
  sqlParen     = 'Delimiter',
  sqlSpecial   = 'Constant',
  sqlStatement = 'Statement',
  sqlParenFunc = 'Function',

  --[[ 3.30. dos INI ]]
  dosiniHeader = 'Title',
  dosiniLabel  = 'Label',

  --[[ 3.31. Crontab ]]
  crontabDay  = 'StorageClass',
  crontabDow  = 'String',
  crontabHr   = 'Number',
  crontabMin  = 'Float',
  crontabMnth = 'Structure',

  --[[ 3.32. PlantUML ]]
  --	plantumlColonLine = NONE,
  plantumlArrowLR   = 'Statement',
  plantumlMindmap   = 'Label',
  plantumlMindmap2  = 'Label',

  --[[ 3.33. YAML ]]
  yamlKey = 'Label',

  --[[ 3.34. Git ]]
  diffAdded              = 'DiffAdd',
  diffRemoved            = 'DiffDelete',
  gitcommitHeader        = 'SpecialComment',
  gitcommitDiscardedFile = 'gitcommitSelectedFile',
  gitcommitOverFlow      = 'Error',
  gitcommitSelectedFile  = 'Directory',
  gitcommitSummary       = 'Title',
  gitcommitUntrackedFile = 'gitcommitSelectedFile',
  gitconfigAssignment    = 'String',
  gitconfigEscape        = 'SpecialChar',
  gitconfigNone          = 'Operator',
  gitconfigSection       = 'Structure',
  gitconfigVariable      = 'Label',
  gitrebaseBreak         = 'Keyword',
  gitrebaseCommit        = 'Tag',
  gitrebaseDrop          = 'Exception',
  gitrebaseEdit          = 'Define',
  gitrebaseExec          = 'PreProc',
  gitrebaseFixup         = 'gitrebaseSquash',
  gitrebaseMerge         = 'PreProc',
  gitrebasePick          = 'Include',
  gitrebaseReset         = 'gitrebaseLabel',
  gitrebaseReword        = 'gitrebasePick',
  gitrebaseSquash        = 'Macro',
  gitrebaseSummary       = 'Title',

  --[[ 3.35. Vimtex ]]
  texMathRegion   = 'Number',
  texMathSub      = 'Number',
  texMathSuper    = 'Number',
  texMathRegionX  = 'Number',
  texMathRegionXX = 'Number',

  --[[ 3.36. Coq ]]
  coqConstructor       = 'Constant',
  coqDefBinderType     = 'coqDefType',
  coqDefContents1      = 'coqConstructor',
  coqDefType           = 'Typedef',
  coqIndBinderTerm     = 'coqDefBinderType',
  coqIndConstructor    = 'Delimiter',
  coqIndTerm           = 'Type',
  coqKwd               = 'Keyword',
  coqKwdParen          = 'Function',
  coqProofDelim        = 'coqVernacCmd',
  coqProofDot          = 'coqTermPunctuation',
  coqProofPunctuation  = 'coqTermPunctuation',
  coqRequire           = 'Include',
  coqTactic            = 'Operator',
  coqTermPunctuation   = 'Delimiter',
  coqVernacCmd         = 'Statement',
  coqVernacPunctuation = 'coqTermPunctuation',

  --[[ 3.37 Help ]]
  helpHeader        = 'Label',
  helpOption        = 'Keyword',
  helpHeadline      = 'Title',
  helpSectionDelim  = 'Delimiter',
  helpHyperTextJump = 'Underlined',

  --[[ 3.38 Man ]]
  -- manBold = function(self) return vim.tbl_extend('force', self.mkdCode, {style = 'nocombine'}) end,
  manOptionDesc = 'Special',
  manReference  = 'Tag',
  manUnderline  = 'Label',

  --[[ 3.39 Rust ]]
  rustIdentifier = 'Identifier',

  --[[ 3.40 XXD ]]
  xxdAddress = 'Label',
  xxdAscii   = 'Character',
  xxdDot     = 'Ignore',
  xxdSep     = 'Delimiter',

  --[[ 4. Plugins
  	Everything in this section is OPTIONAL. Feel free to remove everything
  	here if you don't want to define it, or add more if there's something
  	missing.
  ]]
  --[[ 4.1. ALE ]]
  ALEErrorSign        = 'DiagnosticSignError',
  ALEWarningSign      = 'DiagnosticSignWarn',

  --[[ 4.2. coc.nvim ]]
  CocErrorHighlight   = 'DiagnosticUnderlineError',
  CocErrorSign        = 'DiagnosticSignError',
  CocHintHighlight    = 'DiagnosticUnderlineHint  ',
  CocHintSign         = 'DiagnosticSignHint',
  CocInfoHighlight    = 'DiagnosticUnderlineInfo',
  CocInfoSign         = 'DiagnosticSignInfo',
  CocWarningHighlight = 'DiagnosticUnderlineWarn',
  CocWarningSign      = 'DiagnosticSignWarn',

  --[[ 4.2. vim-jumpmotion / vim-easymotion ]]
  EasyMotion = 'IncSearch',
  JumpMotion = 'EasyMotion',

  --[[ 4.4. vim-gitgutter / vim-signify / gitsigns.nvim ]]
  GitGutterAdd            = { fg = COLOUR.green },
  GitGutterChange         = { fg = COLOUR.yellow },
  GitGutterDelete         = { fg = COLOUR.red },
  GitGutterChangeDelete   = { fg = COLOUR.orange },

  SignifySignAdd          = 'GitGutterAdd',
  SignifySignChange       = 'GitGutterChange',
  SignifySignDelete       = 'GitGutterDelete',
  SignifySignChangeDelete = 'GitGutterChangeDelete',

  GitSignsAdd             = 'GitGutterAdd',
  GitSignsChange          = 'GitGutterChange',
  GitSignsDelete          = 'GitGutterDelete',

  --[[ 4.5. vim-indent-guides ]]
  IndentGuidesOdd  = { bg = COLOUR.gray_darker },
  IndentGuidesEven = { bg = COLOUR.gray },

  --[[ 4.7. NERDTree ]]
  NERDTreeCWD        = 'Label',
  NERDTreeUp         = 'Operator',
  NERDTreeDir        = 'Directory',
  NERDTreeDirSlash   = 'Delimiter',
  NERDTreeOpenable   = 'NERDTreeDir',
  NERDTreeClosable   = 'NERDTreeOpenable',
  NERDTreeExecFile   = 'Function',
  NERDTreeLinkTarget = 'Tag',

  --[[ 4.8. nvim-treesitter ]]
  TSConstBuiltin    = 'Constant',
  TSConstructor     = 'Typedef',
  TSFuncBuiltin     = 'Function',
  TSStringEscape    = 'Character',
  TSStringRegex     = 'SpecialChar',
  TSURI             = 'Tag',
  TSVariableBuiltin = 'Identifier',

  --[[ 4.9. barbar.nvim ]]
  BufferCurrentIndex   = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferCurrent.bg } end,
  BufferCurrentMod     = { fg = COLOUR.tan, bg = COLOUR.black, style = 'bold' },
  BufferCurrent        = 'TabLineSel',
  BufferCurrentSign    = 'HintMsg',
  BufferCurrentTarget  = 'BufferCurrentSign',

  BufferInactiveIndex  = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferInactive.bg } end,
  BufferInactive       = 'BufferVisible',
  BufferInactiveMod    = 'BufferVisibleMod',
  BufferInactiveSign   = 'BufferVisibleSign',
  BufferInactiveTarget = 'BufferVisibleTarget',

  BufferTabpages       = { fg = BG, style = {'bold', 'reverse'}},
  BufferTabpageFill    = 'TabLineFill',

  BufferVisibleIndex   = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferVisible.bg} end,
  BufferVisibleMod     = function(self) return { fg = COLOUR.white, bg = self.BufferVisible.bg, style = 'italic'} end,
  BufferVisibleTarget  = function(self)
  	local super = self.BufferVisibleMod
  	return { fg = super.fg, bg = super.bg, style = 'bold'}
  end,
  BufferVisible        = 'TabLine',
  BufferVisibleSign    = 'BufferVisible',

  --[[ 4.10. vim-sandwhich ]]
  OperatorSandwichChange = 'DiffText',

  --[[ 4.11. Fern ]]
  FernBranchText = 'Directory',

  --[[ 4.12. LSPSaga ]]
  DefinitionCount = 'Number',
  DefinitionIcon  = 'Special',
  ReferencesCount = 'Number',
  ReferencesIcon  = 'DefinitionIcon',
  TargetFileName  = 'Directory',
  TargetWord      = 'Title',

  --[[ 4.13. indent-blankline.nvim ]]
  IndentBlanklineChar      = { bg = NONE, fg = COLOUR.list_chars },
  IndentBlanklineSpaceChar = { fg = COLOUR.list_chars },

  --[[ 4.14. trouble.nvim ]]
  TroubleCount = function(self) return vim.tbl_extend('force', self.Number, {style = 'underline'}) end,

  --[[ 4.15. todo-comments.nvim ]]
  TodoFgNOTE = 'HintMsg',
  TodoFgPERF = 'InfoMsg',
  TodoFgTODO = { fg = COLOUR.cyan, style = 'italic' },
  TodoFgWARN = function(self) return { fg = self.WarningMsg.fg } end,
  TodoFgFIX  = function(self) return { fg = self.ErrorMsg.fg }   end,
  TodoFgHACK = function(self) return { fg = self.Todo.bg }       end,

  TodoBgFIX  = function(self) return { fg = COLOUR.black, bg = self.ErrorMsg.fg, style = { 'bold', 'italic', 'nocombine' } } end,
  TodoBgHACK = function(self) return { fg = COLOUR.black, bg = self.Todo.bg,     style = { 'bold', 'italic', 'nocombine' } } end,
  TodoBgNOTE = function(self) return { fg = COLOUR.black, bg = self.Hint.bg,     style = { 'bold', 'italic', 'nocombine' } } end,
  TodoBgPERF = function(self) return { fg = COLOUR.black, bg = self.Info.bg,     style = { 'bold', 'italic', 'nocombine' } } end,
  TodoBgWARN = function(self) return { fg = COLOUR.black, bg = self.Warning.bg,  style = { 'bold', 'italic', 'nocombine' } } end,
  TodoBgTODO = { fg = COLOUR.black, bg = COLOUR.cyan, style = { 'bold', 'italic', 'nocombine' } },

  TodoSignFIX  = 'TodoFgFIX',
  TodoSignHACK = 'TodoFgHACK',
  TodoSignNOTE = 'TodoFgNOTE',
  TodoSignPERF = 'TodoFgPERF',
  TodoSignTODO = 'TodoFgTODO',
  TodoSignWARN = 'TodoFgWARN',

  TodoDONE = { fg = COLOUR.hue_4 },

  --[[ 4.16. nvim-cmp ]]
  CmpDocumentationBorder          = 'FloatBorder',
  CmpItemKindDefault              = 'Type',
  CmpItemKindClassDefault         = 'CmpItemKindStructDefault',
  CmpItemKindColorDefault         = 'Label',
  CmpItemKindConstantDefault      = 'Constant',
  CmpItemKindConstructorDefault   = 'CmpItemKindMethodDefault',
  CmpItemKindEnumDefault          = 'CmpItemKindStructDefault',
  CmpItemKindEnumMemberDefault    = 'CmpItemKindConstantDefault',
  CmpItemKindEventDefault         = 'Repeat',
  CmpItemKindFieldDefault         = 'Identifier',
  CmpItemKindFileDefault          = 'Directory',
  CmpItemKindFolderDefault        = 'CmpItemKindFileDefault',
  CmpItemKindFunction             = { fg = COLOUR.red_light },
  CmpItemKindInterface            = { fg = COLOUR.blue },
  CmpItemKindKeyword              = { fg = COLOUR.mono_1 },
  CmpItemKindMethod               = { fg = COLOUR.hue_5 },
  CmpItemKindModuleDefault        = 'Include',
  CmpItemKindOperatorDefault      = 'Operator',
  CmpItemKindProperty             = { fg = COLOUR.main_fg },
  CmpItemKindReferenceDefault     = 'StorageClass',
  CmpItemKindSnippetDefault       = 'Special',
  CmpItemKindStructDefault        = 'Structure',
  CmpItemKindText                 = { fg = COLOUR.purple },
  CmpItemKindTypeParameterDefault = 'Typedef',
  CmpItemKindUnit                 = { fg = COLOUR.white },
  CmpItemKindValueDefault         = 'CmpItemKindConstantDefault',
  CmpItemKindVariable= { fg = COLOUR.ice },
  CmpItemMenu                     = { fg = COLOUR.trailing },
  CmpWindowScrollThumb            = { fg = COLOUR.white, style = 'bold' },
  CmpItemAbbrMatchFuzzyDefault    = { fg = FG, style = { 'nocombine', 'underline' } },
  --CmpItemAbbrDefault              = { fg = COLOUR.green },
  CmpItemAbbr                     = { fg = COLOUR.syntax_gutter },
  --CmpItemAbbrMatchDefault         = 'Underlined',
  --CmpItemAbbrMatch                = { fg = COLOUR.white, style = { 'nocombine', 'underline' } },

  --[[ 4.17. packer.nvim ]]
  packerFail                      = 'ErrorMsg',
  packerHash                      = 'Number',
  packerPackageNotLoaded          = 'Ignore',
  packerStatusFail                = 'Statement',
  packerStatusSuccess             = 'packerStatusFail',
  packerSuccess                   = function(self) return { fg = COLOUR.green, style = self.packerFail.style } end,

  --[[ 4.18. nvim-tree ]]
  NvimTreeGitDeleted   = function(self) return { fg = self.DiffDelete.bg, bg = NONE } end,
  NvimTreeGitNew       = function(self) return { fg = self.DiffAdd.bg, bg = NONE } end,
  NvimTreeGitRenamed   = function(self) return { fg = self.DiffChange.bg, bg = NONE } end,
  NvimTreeGitStaged    = { fg = COLOUR.cyan, bg = NONE },
  NvimTreeGitDirty     = { fg = COLOUR.orange, bg = NONE },
  NvimTreeRootFolder   = { style = 'italic,bold', fg = COLOUR.main_bg },
  NvimTreeGitIgnored   = 'Ignore',
  NvimTreeNormal       = { bg = COLOUR.main_bg },
  NvimTreeStatuslineNc = { bg = COLOUR.main_bg },
  NvimTreeFolderIcon   = { fg = COLOUR.ice },
  NvimTreeEndOfBuffer  = { bg = COLOUR.main_bg, fg = COLOUR.main_bg },
  NvimTreeGitMerge     = 'NvimTreeGitRenamed',

  --[[ 4.19. Telescope ]]
  TelescopeTitle         = { fg = COLOUR.blue },
  TelescopeBorder        = { fg = COLOUR.main_bg, bg = COLOUR.main_bg },
  TelescopeNormal        = { bg = COLOUR.main_bg },
  TelescopePromptBorder  = { fg = COLOUR.gray_dark, bg = COLOUR.gray_dark },
  TelescopePromptNormal  = { bg = COLOUR.gray_dark },
  TelescopePromptCounter = { bg = COLOUR.gray_dark, fg = COLOUR.red},
  TelescopeResultsTitle  = { fg = COLOUR.main_bg_light },
  TelescopePreviewTitle  = { fg = COLOUR.yellow },

  --[[ 4.20. Neo-Tree ]]
  NeoTreeNormal        = { bg = COLOUR.main_bg },
  NeoTreeNormalNC      = { bg = COLOUR.main_bg },
  NeoTreeDirectoryIcon = { fg = COLOUR.ice },
  NeoTreeExpander      = { fg = COLOUR.ice },
  NeoTreeRootName      = { style = 'bold', fg = COLOUR.white },
  NeoTreeGitModified   = { fg = COLOUR.mono_chrome },
  NeoTreeGitUntracked  = { fg = COLOUR.syntax_accent },
  NeoTreeGitConflict   = { fg = COLOUR.syntax_color_added },
  NeoTreeFloatBorder   = { fg = COLOUR.pink_light },
  NeoTreeFloatTitle    = { fg = COLOUR.white, style = 'bold' },
  NeoTreeDirectoryName = { sytle = 'bold' },
  NeoTreeEndOfBuffer   = { bg = COLOUR.main_bg, fg = COLOUR.main_bg },

  --[[ 4.21. Nvim-Cokeline ]]
  CokeLineFg        = { fg = COLOUR.red },
  CokeLineBg        = { bg = COLOUR.red },

  --[[ 4.22. Zen-Mode ]]
  ZenBg = { bg = COLOUR.non_text, fg = COLOUR.non_text },

  --[[ 4.22. Barbecue ]]
  NavicSeparator = { fg = COLOUR.comment },
  NavicText      = { fg = COLOUR.gray },
  NavicBold      = { fg = COLOUR.bold },
  NavicRed       = { fg = COLOUR.red_strong },
  NavicYellow    = { fg = COLOUR.yellow_strong },
}
