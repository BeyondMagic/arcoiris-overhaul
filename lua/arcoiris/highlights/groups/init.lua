local root = COLOURSCHEME_ACCESS .. '.highlights.groups.'
local colourscheme = require(COLOURSCHEME_ACCESS)

function read (file_names)
	for _, name in pairs(file_names) do
    colourscheme.highlight_all(require(root .. name))
	end
end

read {
  --[[ Default highlights of n/vim. ]]
  --'defaults',

	--[[ Editor UI ]]
  'editor-ui',

	--[[ Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]
  'filetypes.c++',

	--[[ Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]

  'plugins.neo-tree',
  'plugins.nvim-ts-rainbow2',
}
