{
	"binhacks": {
		"fix_satono_1": {
			"title": "Fix Spell Practice bugs for Stage 5, #1: Jump to code cave",
			"addr": "Rx21596",
			"code": "e9 65990600"
		},
		"fix_satono_2": {
			"title": "Fix Spell Practice bugs for Stage 5, #2: Call BossDeadB() if the second character is killed",
			"addr": "Rx8af00",
			"code": "83bf7040000000 7507 6870214900 eb05 681aaf4800 e98166f9ff 426f7373446561644200"
		},
		"sprintf_msvcrt14_esp+34": {
			"addr": [
				"Rx6d9c9",
				"Rx6dae9"
			]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx6dc59"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"addr": "Rx0827f"
		},
		"sprintf_rep": {
			"addr": [
				"Rx0828d",
				"Rx6da66",
				"Rx6da77",
				"Rx6db34",
				"Rx6dbd7",
				"Rx6dbe7",
				"Rx6dd2d"
			]
		},
		"music_title_prepare": {
			"addr": "Rx54aef",
			"code": "8b542418 52 31c0 50 50 50 a1 480f4c00"
		},
		"th15_textbox_size": {
			"addr": [
				"Rx2a5d0",
				"Rx2a7c6"
			]
		},
		"spell_align": {
			"addr": "Rx6db40"
		},
		"result_spell_align": {
			"addr": "Rx6dd11"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx024cc",
			"file_name": "ebx"
		},
		"file_load": {
			"addr": "Rx02504"
		},
		"file_loaded": {
			"addr": "Rx5724b"
		},
		"music_title": {
			"addr": "Rx54af3"
		},
		"music_cmt#line": {
			"addr": [
				"Rx54d46",
				"Rx54e0f"
			]
		},
		"music_cmt": {
			"addr": [
				"Rx54d59",
				"Rx54e22"
			]
		},
		"ruby_offset": {
			"addr": [
				"Rx2a53a",
				"Rx2a736"
			],
			"cavesize": 7
		},
		"spell_id": {
			"addr": "Rx217c9"
		},
		"spell_id#real": {
			"addr": "Rx17f4a"
		},
		"spell_name": {
			"addr": "Rx180d6"
		},
		"spell_id#result": {
			"addr": "Rx52d8d"
		},
		"spell_name#result": {
			"addr": "Rx52ed5"
		},
		"spell_name#practice": {
			"addr": "Rx56622"
		}
	},
	"tsa_font_block": {
		"addr": "Rxdf90c"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxe3b73",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxe40b7",
					"module": "ebx",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxe3333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx66d0",
					"code": "90909090909090909090 b030 884513 e9"
				}
			}
		}
	]
}
