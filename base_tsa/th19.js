{
	"title": "東方獣王園　〜 Unfinished Dream of All Living Ghost",
	"latest": [
		"v0.01a"
	],
	"steam_appid": "2400340",
	"breakpoints": {
		"file_size": {
			"file_name": "esi",
			"file_size": "eax",
			"cavesize": 6
		},
		"file_load": {			
			"file_buffer": "ebx",
			"stack_clear_size": 8,
			"cavesize": 5
		},
		"file_loaded": {
			"cavesize": 5
		},
		"music_title": {
			"format_id": "Music Room Numbered Title",
			"cavesize": 5,
		},
		"music_cmt": {
			"format_id": "Music Room Note Title",
			"cavesize": 5
		},
		"spell_name": {
			"spell_name": "[ebp+0xC]",
			"cavesize": 5,
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": 6
		},
		"gentext#ability_select_desc": {
			"file": "abilities.js",
			"ids": [ "[ebp+0x10]", 0 ],
			"line": 0,
			"str": "eax",
			"cavesize": 14,
			"cave_exec": false,
		},
		"gentext#ability_name": {
			"file": "abilities.js",
			"ids": "[ebp+0xC]",
		},
		"gentext#ability_desc": {
			"file": "abilities.js",
			"ids": [ "[ebp+0xC]", 0 ],
			"str": "[esp+0x4]",
			"cavesize": 6,
		},
	},
}