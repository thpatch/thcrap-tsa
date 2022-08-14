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
		}
	}
}