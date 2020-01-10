{
	"title": "東方鬼形獣 　～ Wily Beast and Weakest Creature",
	"latest": [
		"v0.01a", "v1.00b"
	],
	"url_trial": "https://kourindou.exblog.jp/28323776/",
	"url_update": "https://kourindou.exblog.jp/28512725/",
	"formats": {
		"anm": "anm11",
		"msg": "msg11",
		"end": "end10"
	},
	"binhacks": {
		"th17_textbox_size": {
			"code": "6a00 51 e8[GetTextExtentForFontID] 83e81c 7302 31c0 f30f1097b4010000 f30f108fb0010000 8bcf 90909090909090",
			"title": "Correct text length calculation for the TH17 variety of Fairy Wars-style text boxes"
		},
		"spell_align": {
			"title": "Correctly align right-aligned text (TH16+)",
			"code": "ff7518 56 e8[GetTextExtentForFontID] 83c008 d1e0 89c6 8b442410 8b4c240c 8b542414 8b4c8808 8bc1 c1f808 8b9482ECFA8401 0fb6c1 8d0c40 8b8224010000 8b0cc8 8b451c 8d1400 89f0 8b742410 909090"
		},
		"trophy_ingame_lineflip_2": {
			"code": "ffb3 3c02 0000",
			"ignore": true
		}
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "ebx",
			"cavesize": "5"
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"music_title": {
			"str": "edx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "eax",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "eax",
			"cavesize": "6"
		},
		"spell_id#real": {
			"spell_id_real": "ebx",
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "edi",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "esi",
			"spell_rank": "eax",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "7"
		},
		"spell_name#practice": {
			"spell_name": "eax",
			"spell_id_real": "ecx",
			"spell_rank": "esi",
			"cavesize": 7
		},
		"gentext#trophy_result_desc": {
			"file": "trophy.js",
			"ids": ["edi", "ebx"],
			"line": "[ebp+8]",
			"str": "eax",
			"cavesize": 5
		},
		"gentext#trophy_result_nickname": {
			"file": "trophy.js",
			"ids": "ecx",
			"str": "eax",
			"cavesize": 5,
			"cave_exec": false
		},
		"gentext#trophy_ingame": {
			"file": "trophy.js",
			"line": 0
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax"
		}
	},
	"tsa_font_block": {
		"offset": 4,
		"min": 0,
		"max": 8
	},
	"tlnotes": {
		"region_size": [400, 428],
		"region_topleft": [856, 504]
	}
}
