{
	"binhacks": {
		"remove_bmpfont_limit": {
			"code": "9090",
			"title": "Remove the characters limit for bmp fonts"
		},
		"remove_sjis_test": {
			"code": "eb58",
			"title": "Remove a sjis test and always take the single byte path"
		},
		"push_char": {
			"code": "505290909090",
			"title": "Push the bytes of the character in the stack"
		}
	},
	"breakpoints": {
		"bmpfont_fix_parameters": {
			"string": "esp+0x88",
			"string_location": "[esp+0x9c]",
			"offset": "[esp+0x30]",
			"c1": "edx",
			"c2": "eax",
			"cavesize": 5
		}
	}
}
