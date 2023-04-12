return {
	TodoFgFIX = function(self) return {fg = self.ErrorMsg.fg} end,
	TodoFgHACK = {fg = COLOUR.yellow_0},
	TodoFgNOTE = 'DiagnosticFloatingHint',
	TodoFgPERF = 'DiagnosticFloatingInfo',
	TodoFgTODO = function(self) return {fg = self.Todo.bg, italic = true} end,
	TodoFgWARN = function(self) return {fg = self.WarningMsg.fg} end,

	TodoBgFIX = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgFIX.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgHACK = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgHACK.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgNOTE = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgNOTE.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgPERF = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgPERF.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgTODO = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgTODO.fg, bold = true, italic = true, nocombine = true} end,
	TodoBgWARN = function(self) return {fg = COLOUR.bg_0, bg = self.TodoFgWARN.fg, bold = true, italic = true, nocombine = true} end,

	TodoSignFIX = 'TodoFgFIX',
	TodoSignHACK = 'TodoFgHACK',
	TodoSignNOTE = 'TodoFgNOTE',
	TodoSignPERF = 'TodoFgPERF',
	TodoSignTODO = 'TodoFgTODO',
	TodoSignWARN = 'TodoFgWARN',
}
