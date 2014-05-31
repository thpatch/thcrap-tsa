{
	"title": "弾幕アマノジャク　～ Impossible Spell Card",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
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
		}
	}
}
