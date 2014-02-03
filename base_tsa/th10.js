{
	"binhacks": {
		"sprintf_call_1": {
			"code": "50e8[strings_vsprintf]8944e418",
			"title": "Safe sprintf (call #1)"
		},
		"sprintf_call_2": {
			"code": "50e8[strings_vsprintf]8944e41c",
			"title": "Safe sprintf (call #2)"
		},
		"sprintf_rep": {
			"code": "8b5ce4",
			"title": "Safe sprintf (replace pointer)"
		},
		"enemy_text_offset_1": {
			"code": "8d7560",
			"title": "Move enemy text to the left (line 1)"
		},
		"enemy_text_offset_2": {
			"code": "83c007",
			"title": "Move enemy text to the left (line 2)"
		},
		"spell_align": {
			"code": "8b8e600300008bbe94030000d1e983e10151ffb4e4a0000000ff35a0184900ff74e41ce8[GetTextExtentForFont]83c00450db04e45890909090909085c0",
			"title": "Spell card alignment"
		},
		"result_spell_align": {
			"code": "31c0",
			"title": "Remove spell \"alignment\" in the result screen"
		}
	},
	"game": "th10",
	"title": "東方風神録　～ Mountain of Faith",
	"url_trial": "http://www16.big.or.jp/~zun/html/th10dl.html",
	"latest": "v1.00a",
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
		"music_cmt#first_params": {
			"track": "eax",
			"line_num": "edx",
			"cavesize": "9"
		},
		"music_cmt#first": {
			"str": "ecx",
			"format_id": "Music Room Note Title",
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
	}
}