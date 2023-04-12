return {
	BufferAlternate = function(self) return {fg = self.BufferVisible.fg, bg = self.TabLine.bg} end,
	BufferAlternateERROR = function(self) return {fg = self.ErrorMsg.fg, bg = COLOUR.bg_4} end,
	BufferAlternateHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = COLOUR.bg_4} end,
	BufferAlternateIndex = function(self) return {fg = self.Number.fg, bg = COLOUR.bg_4} end,
	BufferAlternateINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = COLOUR.bg_4} end,
	BufferAlternateMod = function(self) return {fg = self.BufferVisibleMod.fg, bg = COLOUR.bg_4, bold = true} end,
	BufferAlternateSign = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferAlternate.bg} end,
	BufferAlternateTarget = function(self) return {fg = self.BufferAlternateSign.fg, bg = COLOUR.bg_4, italic = true} end,
	BufferAlternateWARN = function(self) return {fg = self.WarningMsg.fg, bg = COLOUR.bg_4} end,

	BufferCurrent = 'TabLineSel',
	BufferCurrentERROR = function(self) return {fg = self.ErrorMsg.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentHINT = function(self) return {fg = self.DiagnosticFloatingHint.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentIndex = function(self) return {fg = self.Number.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentINFO = function(self) return {fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferCurrent.bg} end,
	BufferCurrentMod = {fg = COLOUR.yellow_1, bg = COLOUR.bg_0, bold = true},
	BufferCurrentSign = function(self) return {fg = COLOUR.blue_4, bg = self.BufferCurrent.bg} end,
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
	BufferVisibleMod = function(self) return {fg = COLOUR.fg_1, bg = self.BufferVisible.bg, italic = true} end,
	BufferVisibleSign = function(self)
		local definition = self.BufferVisibleMod
		return {fg = definition.fg, bg = definition.bg, bold = true}
	end,
	BufferVisibleTarget = 'BufferVisibleSign',
	BufferVisibleWARN = function(self) return {fg = self.WarningMsg.fg, bg = self.BufferVisible.bg} end,
}
