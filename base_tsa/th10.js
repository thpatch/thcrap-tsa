{
	"steam_appid": "1100140",
	"binhacks": {
		"sprintf_replay_1": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 9090",
			"title": "Replay name sprintf 1"
		},
		"sprintf_replay_2": {
			"title": "Replay name sprintf 2"
		},
		"sprintf_replay_3": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 9090909090",
			"title": "Replay name sprintf 3"
		},
		"sprintf_replay_4": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 9090",
			"title": "Replay name sprintf 4"
		},
		"sprintf_replay_5": {
			"title": "Replay name sprintf 5"
		},
		"enemy_text_offset_1": {
			"code": "8d7560",
			"title": "Move enemy text to the left (line 1)"
		},
		"enemy_text_offset_2": {
			"code": "31c0 90909090",
			"title": "Move enemy text to the left (line 2)"
		},
		"spell_align": {
			"code": "8b8e 60030000 8bbe 94030000 d1e9 83e1 01 51 55 ff7424 18 e8 [GetTextExtentForFontID] 89c1 8b9424 a0000000 9090909090",
			"title": "Spell card alignment"
		}
	},
	"title": "東方風神録　～ Mountain of Faith",
	"url_trial": "http://www16.big.or.jp/~zun/html/th10dl.html",
	"latest": ["v0.02a", "v1.00a"],
	"formats": {
		"msg": "msg10",
		"anm": "anm06",
		"end": "end10"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ecx",
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
			"cavesize": "5"
		},
		"spell_id#real": {
			"spell_id_real": "esi",
			"cavesize": "7"
		},
		"spell_name": {
			"spell_name": "edx",
			"cavesize": "6"
		},
		"spell_id#result": {
			"spell_id_real": "edi",
			"spell_rank": "edx",
			"cavesize": "7"
		},
		"spell_name#result": {
			"spell_name": "edx",
			"cavesize": "10"
		},
		"music_title": {
			"str": "edx",
			"track": "edi",
			"format_id": "Music Room Numbered Title",
			"cavesize": "6"
		},
		"music_cmt#params": {
			"track": "eax",
			"line_num": "edx",
			"cavesize": "9"
		},
		"music_cmt": {
			"str": "ecx",
			"format_id": "Music Room Note Title",
			"cavesize": "6"
		}
	},
	"tsa_font_block": {
		"offset": -4,
		"min": 16,
		"max": 30
	},
	"tlnotes": {
		"region_size": [400, 600],
		"region_topleft": [856, 328]
	}
}
