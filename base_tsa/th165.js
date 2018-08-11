{
	"title": "秘封ナイトメアダイアリー　〜 Violet Detector",
	"binhacks": {
		"th165_textbox_size": {
			"code": "6a00 51 e8[GetTextExtentForFontID] 83e81c 7302 31c0 f30f1093b4010000 f30f108bb0010000 8b8b90010000 c1e902 90909090909090",
			"title": "Correct text length calculation for the TH16.5 variety of Fairy Wars-style text boxes"
		},
		"center_align": {
			"code": "ff7518 56 e8[GetTextExtentForFontID] 83c003 c1e002 8bf0 8b442418 8b4c2414 8b542410 8b4c8808 8bc1 c1f808 8b9482f0f48401 0fb6c1 8d0c40 8b8224010000 8b542418 8b04c8 89442410 8b451c 03c0 8bce",
			"title": "Correctly align centered text"
		},
		"trophy_ingame_lineflip_1": {
			"title": "Flip the two lines in the new nickname popup (line #1)",
			"code": "ffb3 40020000",
			"ignore": true
		},
		"trophy_ingame_lineflip_2": {
			"title": "Flip the two lines in the new nickname popup (line #2)",
			"code": "ffb3 3c020000",
			"ignore": true
		}
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "ebx",
			"cavesize": 5
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": 8,
			"cavesize": 5
		},
		"file_loaded": {
			"cavesize": 5
		},
		"music_title": {
			"str": "edx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": 5
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "[edi+0x7B0]",
			"track": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": 5
		},
		"spell_name": {
			"spell_name": "edi",
			"spell_id": "[[Rxb566c]]",
			"cavesize": 5
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": 5
		},
		"gentext#trophy_result_desc": {
			"file": "trophy.js",
			"ids": ["edi", "[ebp+0x14]"],
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
			"ids": "esi",
			"str": "eax",
			"line": 0,
			"cavesize": 6
		}
	}
}
