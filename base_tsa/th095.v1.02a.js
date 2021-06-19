{
	"binhacks": {
		"sprintf_call_ebp-88": {
			"addr": "Rx43d07"
		},
		"sprintf_replay_1": {
			"addr": [ "Rx2839f", "Rx2a7f1" ],
			"code": "54 e8[strings_sprintf] 8985 00ffffff"
		},
		"sprintf_replay_2": {
			"addr": "Rx50caa",
			"code": "54 e8[strings_sprintf] 8985 b0fdffff"
		},
		"sprintf_rep": {
			"addr": [ 
				"Rx43d37",
				"Rx283bb",
				"Rx2a800",
				"Rx50cb9"
			]
		},
		"overflow_spell_menu_rep": {
			"addr": "0x44406b"
		},
		"overflow_spell_ingame_rep": {
			"addr": "0x443ef7"
		},
		"spell_align_menu": {
			"addr": "0x443fb0"
		},
		"spell_align": {
			"addr": "0x443e0f"
		},
		"music_cmt_prepare": {
			"addr": "0x4515f0"
		},
		"unpatch_font_small": {
			"addr": "0x41c7f3"
		},
		"unpatch_spell_scale": {
			"addr": [
				"0x443ded",
				"0x443f97"
			]
		},
		"help_align_1": {
			"addr": "Rx28bce",
			"code": "e8 adb30100"
		},
		"help_align_2": {
			"addr": "Rx28c30",
			"code": "e8 4bb30100"
		}
	},
	"breakpoints": {
		"mission": {
			"addr": "0x44D020"
		},
		"file_size": {
			"addr": "0x41a9fe"
		},
		"file_load": {
			"addr": "0x41aa5e"
		},
		"file_loaded": {
			"addr": "0x4552ba"
		},
		"spell_name": {
			"addr": "0x408715",
			"spell_id": "[[Rxca2f0]]"
		},
		"spell_name#menu": {
			"addr": "0x448556",
			"spell_id": "[[Rxca2f0]]"
		},
		"music_title#track": {
			"addr": "0x45148f"
		},
		"music_title": {
			"addr": "0x45149f"
		},
		"music_cmt": {
			"addr": "0x451607"
		},
		"gentext#help_id": {
			"addr": "Rx28bab"
		},
		"gentext#help_line_1": {
			"addr": "Rx28bb0"
		},
		"gentext#help_line_2": {
			"addr": "Rx28c12"
		}
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxea413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxeb036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxe9333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx3ea0",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
