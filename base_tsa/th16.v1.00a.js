{
	"steam_appid": "745880",
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
		"sprintf_replay_use_ecx_2": {
			"addr": "Rx401ab"
		},
		"sprintf_replay_reuse_1": {
			"code": "68 ac2a4900 54 e8[strings_sprintf] 894424 1c",
			"addr": [ "Rx403c1", "Rx53c86", "Rx54004" ]
		},
		"sprintf_replay_reuse_2": {
			"code": "68 ac2a4900 54 e8[strings_sprintf] 8945 b0",
			"addr": "Rx515a5"
		},
		"sprintf_rep": {
			"addr": [
				"Rx0828d",
				"Rx6da66",
				"Rx6da77",
				"Rx6db34",
				"Rx6dbd7",
				"Rx6dbe7",
				"Rx6dd2d",
				"Rx403ec",
				"Rx403f9",
				"Rx51603",
				"Rx53c98",
				"Rx53ccd",
				"Rx53cea",
				"Rx5402f",
				"Rx5403c"
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
		},
		"score_force_visual_update": {
			"addr": "Rx2d7b3",
			"code": "51 53 56 57 8B F9 8B 87 88 00 00 00 A9 00 40 00 00 0F 84 3E 01 00 00 A8 10 74 10 E8 3D E4 FF FF 31 C0 B0 03 5F 5E 5B 8B E5 5D C3 8B 87 B0 00 00 00 40 3C B4 89 87 B0 00 00 00"
		},
		"score_force_visual_update_jmp_fix_1": {
			"addr": "Rx2da3c",
			"code": "93"
		},
		"score_force_visual_update_jmp_fix_2": {
			"addr": "Rx2da44",
			"code": "8B"
		},
		"score_force_visual_update_jmp_fix_3": {
			"addr": "Rx2da4c",
			"code": "83"
		},
		"score_force_visual_update_jmp_fix_4": {
			"addr": "Rx2da9b",
			"code": "34"
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
