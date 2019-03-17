{
	"binhacks": {
		"overflow_spell_rep": {
			"code": "90909090",
			"title": "Fix buffer overflow in spell name rendering (replace pointer)"
		},
		"spell_align": {
			"code": "8b9ce4a00000008b8e640300008b7e70d1e983e10151ffb4e4a0000000ff3500e2480053e8[GetTextExtentForFont]83c00450db04e458eb24909090909090909090909090909090909090909090909090909090909090909085c0",
			"title": "Spell card alignment"
		}
	},
	"title": "黄昏酒場～Uwabami Breakers～",
	"url_trial": "http://alcostg.amatukami.com/",
	"latest": "v1.00a",
	"formats": {
		"anm": "anm06"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ebx",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "esi",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "esi",
			"cavesize": "7"
		},
		"spell_name": {
			"spell_name": "eax",
			"cavesize": "6"
		}
	},
	"tlnotes": {
		"region_size": [224, 448],
		"region_topleft": [16, 464]
	}
}
