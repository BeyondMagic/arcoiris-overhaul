return {
	NvimTreeGitDeleted = function(self) return {fg = self.DiffDelete.bg} end,
	NvimTreeGitDirty = {fg = COLOUR.orange_0},
	NvimTreeGitIgnored = 'Ignore',
	NvimTreeGitMerge = 'NvimTreeGitRenamed',
	NvimTreeGitNew = function(self) return {fg = self.DiffAdd.bg} end,
	NvimTreeGitRenamed = function(self) return {fg = self.DiffChange.bg} end,
	NvimTreeGitStaged = {fg = COLOUR.blue_3},
}
