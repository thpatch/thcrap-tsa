{
	"steam_appid": "1100180",
	"binhacks": {
		"sprintf_call_1": {
			"code": "50e8[strings_vsprintf]89857cffffff89bd78ffffff",
			"title": "Safe sprintf (call #1)"
		},
		"fw_textbox_size": {
			"code": "ff35bc2a4d0057e8[GetTextExtentForFont]50db04e4589090909090909090909090909090",
			"title": "Correct text length calculation for Fairy Wars-style text boxes"
		},
		"spell_align": {
			"code": "c1e90483e10151ff750cff7508ff35cc2a4d00ff7518e8[GetTextExtentForFont]50db04e458909090",
			"title": "Spell card alignment"
		}
	},
	"title": "妖精大戦争　～ 東方三月精",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11",
		"end": "end10"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ebx",
			"cavesize": "5"
		},
		"file_load": {
			"file_buffer": "edi",
			"stack_clear_size": "12",
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
			"spell_name": "ecx",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "edi",
			"spell_rank": "ecx",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "ecx",
			"cavesize": "8"
		},
		"music_title": {
			"str": "edx",
			"track": "ebx",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		},
		"music_cmt#line_first": {
			"track": "eax",
			"line_num": "ecx",
			"cavesize": "5"
		},
		"music_cmt#first": {
			"str": "eax",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"music_cmt#line": {
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
			"str": "edi",
			"offset": "eax",
			"cavesize": "5"
		}
	},
	"tlnotes": {
		"region_size": [184, 448],
		"region_topleft": [1056, 484],
		"valign": "bottom"
	}
}
