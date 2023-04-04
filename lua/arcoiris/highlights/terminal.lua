--[[ Terminal Colors
	Define the color palette used by :terminal when in GUI Vim
	or in TUI Vim when 'termguicolors' is enabled. If this list
	is empty or if it doesn't contain exactly 16 items, the corresponding
	Vim variable won't be set.

	The expected values are colors defined in step 3.

	Terminal emulators use a basic palette of 16 colors that can be
	addressed by CLI and TUI tools via their name or their index, from
	0 to 15. The list is not really standardized but it is generally
	assumed to look like this:

	 | Index  | Name          |
	 |:------:|:-------------:|
	 | 1      | black         |
	 | 2      | darkred       |
	 | 3      | darkgreen     |
	 | 4      | darkyellow    |
	 | 5      | darkblue      |
	 | 6      | darkmagenta   |
	 | 7      | darkcyan      |
	 | 8      | gray          |
	 | 9      | darkgray      |
	 | 10     | red           |
	 | 11     | green         |
	 | 12     | yellow        |
	 | 13     | blue          |
	 | 14     | magenta       |
	 | 15     | cyan          |
	 | 16     | white         |

	While you are certainly free to make colors 0 to 7 shades of blue,
	this will inevitably cause usability issues so… be careful.
]]

return {
  [1]  = COLOUR.black,
  [2]  = COLOUR.red_dark,
  [3]  = COLOUR.green_dark,
  [4]  = COLOUR.orange,
  [5]  = COLOUR.blue,
  [6]  = COLOUR.magenta_dark,
  [7]  = COLOUR.teal,
  [8]  = COLOUR.gray,
  [9]  = COLOUR.gray_dark,
  [10] = COLOUR.red,
  [11] = COLOUR.green,
  [12] = COLOUR.yellow,
  [13] = COLOUR.turqoise,
  [14] = COLOUR.purple,
  [15] = COLOUR.cyan,
  [16] = COLOUR.gray_light
}
