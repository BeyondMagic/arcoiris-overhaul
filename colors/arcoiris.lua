-- This is the name of your colorscheme which will be used as per |g:colors_name|.
local colorscheme_name = 'arcoiris'

-- WARN: users shouldn't touch this.
vim.api.nvim_set_var('colors_name', colorscheme_name)

-- WARN: users shouldn't touch this.
local colorscheme = require(colorscheme_name)

COLOUR = nil

if vim.o.background == 'dark' then
  COLOUR = require('arcoiris.colours.dark')
else
  COLOUR = require('arcoiris.colours.light')
end

colorscheme.highlight_all(require'arcoiris.highlights.groups')
colorscheme.highlight_terminal(require'arcoiris.highlights.terminal')
