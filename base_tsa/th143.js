{
	"steam_appid": "937570",
	"title": "弾幕アマノジャク　～ Impossible Spell Card",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11"
	},
	"binhacks": {
		"titlemsg_box_size_1": {
			"title": "Day description box size, #1: Calculate the width of both lines",
			"code": "e9 9d000000 51 52 56 6a00 52 e8[GetTextExtentForFontID] 50 6a00 56 e8[GetTextExtentForFontID] 5e b9 0000803f 660f6ed1 0f29d3 0f29d4"
		},
		"titlemsg_box_size_2": {
			"title": "Day description box size, #2: Remove the original width calculation of the second line",
			"code": "909090909090909090"
		},
		"titlemsg_box_size_3": {
			"title": "Day description box size, #3: Turn into a function",
			"code": "660f5ad8 f30f5cdd f30f59de f30f5fd9 31c9 660f6ec1 f30f5fd8 5e 5a 59 c3 9090"
		},
		"titlemsg_prepare": {
			"title": "Prepare patching of both day description lines in a single breakpoint"
		},
		"titlemsg_emptylines": {
			"title": "Don't show empty day description lines",
			"code": "00"
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
			"line": 0,
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
			"line": 0,
			"cavesize": 6
		},
		"gentext#titlemsg_id": {
			"file": "titlemsg.js",
			"ids": "ecx",
			"cavesize": 6
		},
		"gentext#titlemsg_str": {
			"file": "titlemsg.js",
			"str": ["edx", "esi"],
			"line": 0,
			"cavesize": 5
		}
	},
	"tlnotes": {
		"region_size": [576, 240],
		"region_topleft": [448, 112],
		"valign": "top"
	}
}
