{
	"title": "秘封ナイトメアダイアリー　〜 Violet Detector",
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
		}
	}
}
