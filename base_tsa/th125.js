{
	"binhacks": {
		"spell_align": {
			"code": "8b8e880400008bbefc030000d94738c1e90483e101518b94e4b000000052ffb4e4a8000000ffb4e4a8000000ff3508094d0052e8[GetTextExtentForFont]50db04e458eb2e90909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Spell card alignment"
		},
		"sprintf_rep": {
			"code": "8b54e4",
			"title": "Safe sprintf (replace pointer)"
		},
		"font_ruby_size": {
			"code": "6a0f",
			"title": "Ensure correct size of ruby font"
		}
	},
	"title": "ダブルスポイラー　～ 東方文花帖",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11"
	},
	"breakpoints": {
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
		"spell_id#ingame": {
			"spell_id": "esi",
			"cavesize": "6"
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
		"music_cmt#first_track": {
			"track": "eax",
			"cavesize": "6"
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
		}
	}
}
