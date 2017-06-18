{
	"title": "弾幕アマノジャク　～ Impossible Spell Card",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11"
	},
	"binhacks": {
		"titlemsg_box_size_1": {
			"title": "Day description box size (calculation)",
			"code": "50 6a0056e8[GetTextExtentForFontID]89c6 6a0053e8[GetTextExtentForFontID] 5a b90000803f660f6ed1660f6ed9660f6ee1 909090909090"
		},
		"titlemsg_box_size_2": {
			"title": "Day description box size (cleanup)",
			"code": "909090909090909090"
		},
		"trophy_ingame_lineflip_1": {
			"title": "Flip the two lines in the new nickname popup (line #1)",
			"code": "ffb3 44020000",
			"ignore": true
		},
		"trophy_ingame_lineflip_2": {
			"title": "Flip the two lines in the new nickname popup (line #2)",
			"code": "ffb3 40020000",
			"ignore": true
		}
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
		"update_poll": {
			"cavesize": "5"
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
		"spell_id": {
			"spell_id": "ecx",
			"cavesize": "5"
		},
		"spell_id#resurrection": {
			"spell_id": "eax",
			"cavesize": "5"
		},
		"spell_name": {
			"spell_name": "ecx",
			"cavesize": "5"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "7"
		},
		"gentext#hint_id": {
			"file": "hint.js",
			"ids": "ecx",
			"cavesize": 6
		},
		"gentext#hint_line_1": {
			"str": "ecx",
			"cavesize": 5
		},
		"gentext#hint_line_2": {
			"str": "ecx",
			"cavesize": 5
		},
		"gentext#trophy_result_nickname": {
			"file": "trophy.js",
			"ids": "ecx",
			"str": "eax",
			"cavesize": 5,
			"cave_exec": false
		},
		"gentext#trophy_result_desc_params": {
			"file": "trophy.js",
			"ids": ["ecx", "edx"],
			"line": "eax",
			"cavesize": 6
		},
		"gentext#trophy_result_desc_str": {
			"str": "eax",
			"cavesize": 5
		},
		"gentext#trophy_ingame": {
			"file": "trophy.js",
			"ids": "esi",
			"str": "eax",
			"cavesize": 6
		}
	}
}
