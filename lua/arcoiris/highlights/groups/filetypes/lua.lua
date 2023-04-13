return {
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
		return { fg = COLOUR.fg_1, italic = true }
	end,
}