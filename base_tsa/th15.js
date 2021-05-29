{
	"steam_appid": "937580",
	"binhacks": {
		"ddc_textbox_size": {
			"code": "50e8[GetTextExtent]f30f1015b58c4c0083e81c730331c090",
			"title": "Correct text length calculation for the DDC variety of Fairy Wars-style text boxes"
		},
		"spell_align": {
			"title": "Spell card alignment",
			"code": "8b4c91088bc18b955cffffffc1f8088b9482d8f487010fb6c18d0c408b82240100008b14c88b451c03c0898560ffffff8b471cc1e80c83e00189855cffffffff75185689d6e8[GetTextExtentForFontID]89f28b8d54ffffff83c008d1f090909090909090"
		},
		"result_spell_align": {
			"code": "31d2",
			"title": "Remove spell \"alignment\" in the result screen"
		},
		"music_title_prepare": {
			"code": "8b4ce4185131c05050505068ffffff0056ff3554d74f0090",
			"title": "Prepare music room title fetching"
		}
	},
	"title": "東方紺珠伝 ～ Legacy of Lunatic Kingdom",
	"latest": [
		"v0.01b", "v1.00b"
	],
	"url_trial": "http://www16.big.or.jp/~zun/html/th15dl.html",
	"url_update": "http://www16.big.or.jp/~zun/html/th15dl.html",
	"formats": {
		"msg": "msg11",
		"end": "end10",
		"anm": "anm11"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "ebx",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "eax",
			"cavesize": "6"
		},
		"spell_id#real": {
			"spell_id_real": "ecx",
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "ecx",
			"cavesize": "6"
		},
		"spell_id#result": {
			"spell_id_real": "esi",
			"spell_rank": "ecx",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "7"
		},
		"music_title": {
			"str": "ecx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		},
		"music_cmt#line": {
			"line_num": "eax",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "eax",
			"track": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "7"
		}
	},
	"tsa_font_block": {
		"offset": 4,
		"min": 0,
		"max": 8
	},
	"tlnotes": {
		"region_size": [400, 406],
		"region_topleft": [856, 522]
	}
}
