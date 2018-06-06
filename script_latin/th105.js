{
	"binhacks": {
		"story_mode_font_spacing": {
			"code": "01",
			"title": "Change the font spacing in story mode, making place for a 3rd line."
		}
	},
	"breakpoints": {
		"th105_font_spacing": {
			"font_size":    "[esi+0x114]",
			"y_offset":     "[esi+0x128]",
			"font_spacing": "[esi+0x130]",
			"new_y_offset": {
				"24": 1,
				"16": 0
			},
			"new_spacing": {
				"24": 1,
				"16": 2
			},
			"cavesize": 7
		}
	},
	"fontrules": {
		"* 24": "* 22",
		"* 16": "* 18"
	}
}
