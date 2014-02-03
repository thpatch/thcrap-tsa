{
	"binhacks": {
		"fix_score_1": {
			"code": "73",
			"title": "Score counter bugfix (jumps)"
		},
		"fix_score_2": {
			"code": "e1",
			"title": "Score counter bugfix (multiplications)"
		},
		"sprintf_call_1": {
			"code": "50e8[strings_vsprintf]8944e414",
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
		"spell_align": {
			"code": "8b968004000051d1ea83e20152ffb4e4a8000000ffb4e4a8000000ff3554e54c0053e8[GetTextExtentForFont]83c00450db04e45885c090",
			"title": "Spell card alignment"
		},
		"result_spell_align": {
			"code": "31c0",
			"title": "Remove spell \"alignment\" in the result screen"
		}
	},
	"game": "th12",
	"title": "東方星蓮船　～ Undefined Fantastic Object",
	"url_trial": "http://www16.big.or.jp/~zun/html/th12dl.html",
	"url_update": "http://www16.big.or.jp/~zun/html/th12dl.html",
	"latest": "v1.00b",
	"formats": {
		"msg": "msg11",
		"anm": "anm11",
		"end": "end10"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ebp",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "ebx",
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
			"spell_name": "ebx",
			"cavesize": "9"
		},
		"spell_id#result": {
			"spell_id_real": "edi",
			"spell_rank": "esi",
			"cavesize": "7"
		},
		"spell_name#result": {
			"spell_name": "edx",
			"cavesize": "8"
		},
		"music_title": {
			"str": "eax",
			"track": "edx",
			"format_id": "Music Room Numbered Title",
			"cavesize": "9"
		},
		"music_cmt#first_track": {
			"track": "eax",
			"cavesize": "5"
		},
		"music_cmt#first": {
			"str": "eax",
			"line_num": "ecx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"music_cmt#params": {
			"track": "eax",
			"line_num": "edx",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "5"
		}
	}
}
