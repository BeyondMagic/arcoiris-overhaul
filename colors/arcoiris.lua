-- This is the name of your colorscheme which will be used as per |g:colors_name|.
local colorscheme_name = 'arcoiris'

-- WARN: users shouldn't touch this.
vim.api.nvim_set_var('colors_name', colorscheme_name)

-- WARN: users shouldn't touch this.
local colourscheme_access = 'colourschemes.' .. colorscheme_name

-- WARN: users shouldn't touch this.
local colorscheme = require(colourscheme_access)

COLOUR = nil

if vim.o.background == 'dark' then
  COLOUR = require(colourscheme_access .. '.colours.dark')
else
  COLOUR = require(colourscheme_access .. '.colours.light')
end

colorscheme.highlight_all(
  require(colourscheme_access .. '.highlights.groups')
)
colorscheme.highlight_terminal(
  require(colourscheme_access .. '.highlights.terminal')
)
