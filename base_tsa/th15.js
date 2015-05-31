{
	"binhacks": {
		"ddc_textbox_size": {
			"code": "50e8[GetTextExtent]f30f1015b58c4c0083e81c730331c090",
			"title": "Correct text length calculation for the DDC variety of Fairy Wars-style text boxes"
		},
		"spell_align_call": {
			"code": "e81a6803009090",
			"title": "Call to spell_align"
		},
		"spell_align": {
			"code": "51536a00ff74e440e8[GetTextExtentForFontID]31d2bb08000000f7f389c683c60231c031d25b59c3",
			"title": "Spell card alignment"
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
		"v0.01a"
	],
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
		},
		"update_poll": {
			"cavesize": "5"
		}
	},
	"tsa_font_block": {
		"offset": 4,
		"min": 0,
		"max": 8
	}
}
