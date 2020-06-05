{
	"binhacks": {
		"fix_score_1": {
			"addr": [
				"0x401631",
				"0x40166a",
				"0x4016ab"
			]
		},
		"fix_score_2": {
			"addr": [
				"0x401651",
				"0x401699",
				"0x4016cf"
			]
		},
		"sprintf_call_esp+14": {
			"addr": "0x46078d"
		},
		"sprintf_call_esp+1c": {
			"addr": [
				"0x460839",
				"0x460929"
			]
		},
		"sprintf_replay_reuse_1": {
			"code": "68 24104a00 54 e8[strings_sprintf] 894424 44",
			"addr": "Rx33416"
		},
		"sprintf_replay_reuse_2": {
			"code": "68 24104a00 54 e8[strings_sprintf] 894424 30",
			"addr": [ "Rx3442a", "Rx3516c" ]
		},
		"sprintf_replay_reuse_4": {
			"code": "68 24104a00 54 e8[strings_sprintf] 894424 20",
			"addr": "Rx48e20"
		},
		"sprintf_replay_reuse_3": {
			"code": "68 24104a00 54 e8[strings_sprintf] 83c4 0c 894424 14 50 90909090",
			"addr": "Rx48a61"
		},
		"sprintf_replay_push_1": {
			"addr": [ "Rx335cb", "Rx33f6b", "Rx34cae" ]
		},
		"sprintf_replay_push_2": {
			"addr": "Rx4659e"
		},
		"sprintf_rep": {
			"addr": [
				"0x4608b7",
				"0x4607d4",
				"0x46099b",
				"Rx33440",
				"Rx3344c",
				"Rx34455",
				"Rx34461",
				"Rx35197",
				"Rx351a3",
				"Rx48e4b",
				"Rx48e57"
			]
		},
		"spell_align": {
			"addr": "0x460867"
		},
		"result_spell_align": {
			"addr": "0x46098a"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x463c9e"
		},
		"file_load": {
			"addr": "0x463cda"
		},
		"file_loaded": {
			"addr": "0x44b8d3"
		},
		"spell_id": {
			"addr": "0x4188e9"
		},
		"spell_id#real": {
			"addr": "0x418939"
		},
		"spell_name": {
			"addr": "0x40e21d"
		},
		"spell_id#result": {
			"addr": "0x447c00"
		},
		"spell_name#result": {
			"addr": "0x447cde"
		},
		"music_title": {
			"addr": "0x449600"
		},
		"music_cmt#first_track": {
			"addr": "0x4497d9"
		},
		"music_cmt#first": {
			"addr": "0x4497ea"
		},
		"music_cmt#params": {
			"addr": "0x4498aa"
		},
		"music_cmt": {
			"addr": "0x4498bb"
		},
		"ruby_offset": {
			"addr": [
				"Rx1ff61",
				"Rx2002b"
			]
		}
	},
	"tsa_font_block": [
		"Rxce554",
		"Rxce550",
		"Rxcc54c"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxda413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxdb036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxd9333",
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
