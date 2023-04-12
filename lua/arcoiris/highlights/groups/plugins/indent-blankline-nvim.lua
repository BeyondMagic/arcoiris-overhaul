return {
	IndentBlanklineChar = function(self)
		local definition = vim.deepcopy(self.Whitespace)
		definition.nocombine = true
		return definition
	end,
	IndentBlanklineSpaceChar = 'IndentBlanklineChar',
}
