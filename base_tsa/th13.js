{
	"steam_appid": "1043230",
	"binhacks": {
		"sprintf_call_1": {
			"code": "50e8[strings_vsprintf]89857cffffff89bd78ffffff",
			"title": "Safe sprintf (call #1)"
		},
		"fw_textbox_size": {
			"code": "909056e8[GetTextExtent]50db04e4589090909090909090909090",
			"title": "Correct text length calculation for Fairy Wars-style text boxes"
		},
		"spell_align": {
			"code": "ff7510c1e90c83e10151ff750cff7508ff3510c34d00ffb574ffffffe8[GetTextExtentForFont]83c00850db04e458",
			"title": "Spell card alignment"
		},
		"unpatch_fonts": {
			"code": "68e4cc4a006a116a04",
			"title": "Remove English patch font creation"
		},
		"unpatch_dialog": {
			"code": "ff15f8214a00",
			"title": "Remove English patch replacement for the resolution dialog"
		},
		"unpatch_strings_result_known_spell": {
			"code": "684cc84a00",
			"title": "Remove English patch hardcoded string replacements (Result Known Spell)"
		},
		"unpatch_strings_result_unknown_spell": {
			"code": "6860c84a00",
			"title": "Remove English patch hardcoded string replacements (Result Unknown Spell)"
		}
	},
	"title": "東方神霊廟　～ Ten Desires",
	"url_trial": "http://www16.big.or.jp/~zun/html/th13dl.html",
	"url_update": "http://www16.big.or.jp/~zun/html/th13dl.html",
	"latest": "v1.00c",
	"formats": {
		"msg": "msg11",
		"anm": "anm11",
		"end": "end10"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ebx",
			"cavesize": "6"
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
			"spell_name": "edx",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "edi",
			"spell_rank": "esi",
			"cavesize": "8"
		},
		"spell_name#result": {
			"spell_name": "edx",
			"cavesize": "8"
		},
		"spell_id#practice": {
			"spell_id_real": "edi",
			"spell_rank": "eax",
			"cavesize": "7"
		},
		"spell_name#practice": {
			"spell_name": "ecx",
			"cavesize": "8"
		},
		"music_title": {
			"str": "eax",
			"track": "edi",
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
			"str": "ebx",
			"offset": "eax",
			"cavesize": "5"
		},
		"bgmmod_tranceseek_byte_offset#regular": {
			"offset": "ecx",
			"cavesize": 8
		},
		"bgmmod_tranceseek_byte_offset#looped": {
			"offset": "edi",
			"cavesize": 9
		}
	},
	"tlnotes": {
		"region_size": [400, 354],
		"region_topleft": [856, 574]
	}
}
