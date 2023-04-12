return {
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
}
