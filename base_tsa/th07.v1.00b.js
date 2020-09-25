{	
	"codecaves": {
		"stage_result_align": "56 8d75 f4 6a 00 68 fc844900 e8[strings_lookup] 89c1 41 8339 00 75 fa 29c1 c1e1 03 b8 c8000000 2bc1 8906 db06 d91e 83c4 08 5e c3"
	},
	"binhacks": {
		"antitamper_remove_check": {
			"addr": "Rx04fe0"
		},
		"sprintf_call_ebp-50": {
			"addr": [
				"0x4542f1",
				"0x4543ee",
				"0x4545ee"
			]
		},
		"sprintf_replay_1": {
			"addr": "Rx475ab"
		},
		"sprintf_replay_2": {
			"addr": "Rx47c41"
		},
		"sprintf_replay_3": {
			"addr": "Rx5aa3a"
		},
		"sprintf_rep": {
			"addr": [
				"0x45431e",
				"0x454493",
				"0x454527",
				"0x45472d",
				"Rx5aa8d"
			]
		},
		"sprintf_call_ebp-208": {
			"addr": "Rx2077"
		},
		"menu_desc_align": {
			"addr": "Rx546e4"
		},
		"boss_title_align": {
			"addr": "0x4544eb"
		},
		"spell_loop": {
			"addr": "0x40fcb1"
		},
		"music_cmt_prepare": {
			"addr": "0x43aa32"
		},
		"music_cmt_prepare_first": {
			"addr": "0x43b30a"
		},
		"unpatch_result_spell": {
			"addr": "Rx467ea"
		},
		"log_restore": {
			"addr": [
				"Rx37903",
				"Rx5e4f0"
			]
		},
		"ending_copy_rem" : {
			"addr": "Rx1e2e9"
		},
		"ending_copy_rep" : {
			"addr": "Rx1e11d"
		},
		"bosstitle_line_order#1": {
			"addr": "Rx2acfc"
		},
		"bosstitle_line_order#2": {
			"addr": "Rx2ad13"
		},
		"hud_force_redraw": {
			"addr": "Rx2b677"
		},
		"stage_result_align_call": {
			"addr": "Rx27f73",
			"code": "e8[codecave:stage_result_align] 8d45 f4 90 833d 5cf86200 06 7d 12 6818854900 50 68 18ce3401 e8 cba0fdff eb 10 68 0c854900"
		},
		"force_disable_vsync": {
			"addr": "Rx38887",
			"code": "e9 f6000000 90"
		}
	},
	"breakpoints": {
		"file_name": {
			"addr": "Rx313a0"
		},
		"file_size": {
			"addr": "Rx313ab"
		},
		"file_load": {
			"addr": "0x431420"
		},
		"file_loaded": {
			"addr": "0x45fa9b"
		},
		"spell_name": {
			"addr": "0x40fce1"
		},
		"spell_name#result": {
			"addr": "0x4467ed"
		},
		"music_title#track": {
			"addr": [
				"0x43b1c4",
				"0x43b393"
			]
		},
		"music_title": {
			"addr": "0x43b23b"
		},
		"music_cmt#track": {
			"addr": "0x43a9f4"
		},
		"music_cmt#line_num": {
			"addr": [
				"0x43aa3b",
				"0x43b313"
			]
		},
		"music_cmt": {
			"addr": [
				"0x43aab2",
				"0x43b403"
			]
		},
		"textimage_set": {
			"addr": "Rx2a2d5",
			"sprites": {
				"0x702": "[Rx22f85c] - 1 + (([Rx22f85c] >= 5) * 2) + (([Rx22f85c] == 4) * (word ptr [[ebp-0x78]+0x1fe0c+0x1d4] - 0x4ad / 3))",
				"0x703": "[Rx22f85c] - 1 + (([Rx22f85c] >= 5) * 2) + (([Rx22f85c] == 4) * (word ptr [[ebp-0x78]+0x1fe0c+0x1d4] - 0x4ad / 3))"
			}
		},
		"textimage_is_active": {
			"addr": "Rx2a339"
		},
		"textimage_init": {
			"addr": "Rx3414c",
			"D3DXCreateTextureFromFileInMemoryEx": "Rx62cf4",
			"pD3DDevice": "[0x575958]",
			"TextureSlots": "[0x4b9e44]+0x282ac",
			"SpriteSpecs": "[0x4b9e44]+0x60",
			"SpriteScripts": "[0x4b9e44]+0x28ef0"
		}
	}
}
