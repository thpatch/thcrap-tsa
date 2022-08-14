{
	"title": "バレットフィリア達の闇市場　〜 100th Black Market",
	"latest": [
		"v1.00a"
	],
	"binhacks": {
		"sprintf_th185_esp+34": {
			"code": "f30f11442420e8[strings_vsprintf_msvcrt14]89442434"
		},
		"sprintf_th185_2": {
			"code": "897c2428f30f11442424e8[strings_vsprintf_msvcrt14]8944243c"
		},
		"trophy_ingame_lineflip_1": {
			"code": "40"
		},
		"trophy_ingame_lineflip_2": {
			"code": "3c"
		}
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "ebx",
			"cavesize": 5
		},
		"file_load": {
			"file_buffer": "edi",
			"stack_clear_size": 8,
			"cavesize": 5
		},
		"file_loaded": {
			"cavesize": 5
		},
		"music_title": {
			"track": "eax",
			"str": "[esp+0x1c]",
			"format_id": "Music Room Numbered Title",
			"cavesize": 9
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "[edi+0x32E40]",
			"track": "[edi+0x32E44]",
			"format_id": "Music Room Note Title",
			"cavesize": 5
		},
		"gentext#trophy_result_nickname": {
			"file": "trophy.js",
			"str": "eax",
			"ids": "ecx",
			"cave_exec": false,
			"cavesize": 5
		},
		"gentext#trophy_result_desc": {
			"file": "trophy.js",
			"str": "eax",
			"ids": [ "ecx", "edx" ],
			"line": "[ebp+0x8]",
			"cave_exec": false,
			"cavesize": 5
		},
		"gentext#abilities_result_name": {
			"file": "abilities.js",
			"str": "[esp+0x10]",
			"ids": "[ebp+0xc]",
			"cavesize": 5
		},
		"gentext#abilities_result_desc": {
			"file": "abilities.js",
			"str": "[esp+4]",
			"ids": [ "[ebp+0xc]", 0 ],
			"line": "6 - [esp+0x18]",
			"cavesize": 6
		},
		"gentext#abilities_result_desc_l1": {
			"file": "abilities.js",
			"str": "[esp+4]",
			"ids": [ "[ebp+0xc]", 0 ],
			"line": 0,
			"cavesize": 6
		},
		"gentext#trophy_ingame": {
			"file": "trophy.js",
			"str": "eax",
			"ids": "[esp+0x14]",
			"cave_exec": false,
			"cavesize": 5
		},
		"gentext#abilities_ingame": {
			"file": "abilities.js",
			"str": "eax",
			"ids": "ebx",
			"cavesize": 6
		}
	}
}