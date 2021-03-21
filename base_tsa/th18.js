{
	"title": "東方虹龍洞　〜 Unconnected Marketeers",
	"latest": [
		"v0.01b"
	],
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
			"str": "edx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": 5
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "[edi+0x614]",
			"track": "[edi+0x618]",
			"format_id": "Music Room Note Title",
			"cavesize": 5
		}
	},
	"binhacks": {
		"sprintf_th18_l": {
			"code": "ff752450f30f11442420e8[strings_vsprintf]89442434"
		},
		"sprintf_th18_r": {
			"code": "ff752050f30f11442420e8[strings_vsprintf]89442434"
		},
		"sprintf_th18_c": {
			"code": "ff752050897c2428f30f11442424e8[strings_vsprintf]8944243c"
		}
	}
}