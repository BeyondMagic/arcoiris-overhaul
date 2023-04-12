return {
	packerFail = 'ErrorMsg',
	packerHash = 'Number',
	packerPackageNotLoaded = 'Ignore',
	packerStatusFail = 'Statement',
	packerStatusSuccess = 'packerStatusFail',
	packerSuccess = function(self)
		local definition = vim.deepcopy(self.packerFail)
		definition.bg = nil
		definition.fg = COLOUR.green_0
		return definition
	end,
}
