{
	"steam_appid": "1100170",
	"binhacks": {
		"spell_align": {
			"code": "8b8e880400008bbefc030000d94738c1e90483e101518b94e4b000000052ffb4e4a8000000ffb4e4a8000000ff3508094d0052e8[GetTextExtentForFont]50db04e458eb2e90909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Spell card alignment"
		},
		"center_align": {
			"code": "ffb424 9c000000 ff30 e8[GetTextExtentForFontID] 83c0 03 d1e0 89c3 8b8e 88040000 8bbe fc030000 d947 38 c1e9 04",
			"title": "Correct alignment for centered text"
		},
		"font_ruby_size": {
			"code": "6a0f",
			"title": "Ensure correct size of ruby font"
		},
		"help_align_1": {
			"title": "Center-align the help messages, #1 (first line)"
		},
		"help_align_2": {
			"title": "Center-align the help messages, #2 (second line, reusing the stack of the first call)"
		},
		"help_align_3": {
			"title": "Center-align the help messages, #3 (clean the stack)"
		},
		"help_align_scalefix": {
			"code": "83c0 0e",
			"title": "Hack around the combined +11 and 77,78% scaling factors to correctly align the help messages"
		}
	},
	"title": "ダブルスポイラー　～ 東方文花帖",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11"
	},
	"breakpoints": {
		"mission": {
			"line": "EAX",
			"stage": 4,
			"scene": 8,
			"chara": 12,
			"ret_fixup": 12,
			"cavesize": 6
		},
		"mission_check_furi_a": {
			"line": "EDI",
			"cavesize": 5
		},
		"mission_check_furi_a#stage98": {
			"line": "EBX",
			"cavesize": 8
		},
		"mission_printf_hook": {
			"cavesize": 6
		},
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
		"spell_id#menu": {
			"spell_id": "ecx",
			"cavesize": "5"
		},
		"spell_id#ingame_from_menu": {
			"spell_id": "esi",
			"cavesize": "6"
		},
		"spell_id#ingame_from_next": {
			"spell_id": "eax",
			"cavesize": 6
		},
		"spell_id#replay": {
			"spell_id": "edx",
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "esi",
			"cavesize": "9"
		},
		"spell_name#menu": {
			"spell_name": "eax",
			"cavesize": "5"
		},
		"music_title": {
			"str": "eax",
			"track": "ebx",
			"format_id": "Music Room Numbered Title",
			"cavesize": "8"
		},
		"music_cmt#first": {
			"str": "eax",
			"line_num": "ecx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"music_cmt#track": {
			"track": "eax",
			"cavesize": "6"
		},
		"music_cmt": {
			"str": "ecx",
			"line_num": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "5"
		},
		"gentext#help_id": {
			"file": "help.js",
			"ids": "edx",
			"cavesize": 6
		},
		"gentext#help_line_1": {
			"str": "edx",
			"cavesize": 5
		},
		"gentext#help_line_2": {
			"str": "edx",
			"cavesize": 5
		}
	},
	"tsa_font_block": {
		"offset": -4,
		"min": 0,
		"max": 3
	},
	"tlnotes": {
		"region_size": [184, 448],
		"region_topleft": [1056, 188],
		"valign": "top"
	}
}
