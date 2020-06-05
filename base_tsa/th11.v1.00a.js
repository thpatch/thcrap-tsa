{
	"binhacks": {
		"sprintf_call_esp+14": {
			"addr": "0x454c8d"
		},
		"sprintf_call_esp+1c": {
			"addr": [
				"0x454d39",
				"0x454e19"
			]
		},
		"sprintf_replay_reuse_1": {
			"code": "68 84534900 54 e8[strings_sprintf] 894424 40",
			"addr": "Rx2d280"
		},
		"sprintf_replay_push_result_1": {
			"addr": [ "Rx2d42d", "Rx2ea5d", "Rx2dd2b" ]
		},
		"sprintf_replay_push_result_2": {
			"addr": "Rx3dc8e"
		},
		"sprintf_replay_reuse_2": {
			"code": "68 84534900 54 e8[strings_sprintf] 894424 30",
			"addr": [ "Rx2e1ec", "Rx2ef1c" ]
		},
		"sprintf_replay_reuse_3": {
			"code": "68 84534900 54 e8[strings_sprintf] 83c4 0c 894424 14 50 90909090",
			"addr": "Rx40021"
		},
		"sprintf_replay_reuse_4": {
			"code": "68 84534900 54 e8[strings_sprintf] 894424 20",
			"addr": "Rx40396"
		},
		"sprintf_rep": {
			"addr": [
				"0x454cd3",
				"0x454db6",
				"0x454e8a",
				"Rx2d2aa",
				"Rx2d2b6",
				"Rx2e217",
				"Rx2e223",
				"Rx2ef47",
				"Rx2ef53",
				"Rx403c1",
				"Rx403cd"
			]
		},
		"spell_align": {
			"addr": "0x454d67"
		},
		"result_spell_align": {
			"addr": "0x454e79"
		},
		"unpatch_font_assist": {
			"addr": "0x4445c5"
		},
		"directinput_fix_1": {
			"addr": "Rx46add"
		},
		"directinput_fix_2": {
			"addr": "Rx46d20"
		},
		"directinput_fix_3": {
			"addr": "Rx456c3",
			"code": "e8 15140000"
		},
		"directinput_fix_4": {
			"addr": "Rx45737",
			"code": "a1 883d4c00 85c0 0f84"
		},
		"fix_alice_practice_end_crash": {
			"addr": "Rx35233",
			"code": "85c0 7412 51 d980c4030000 d91c24 e88a3c0200 d95e30 33c0 5e c20400",
			"expected": "51 d980c4030000 d91c24 e88e3c0200 d95e30 33c0 5e c20400 cccccccc"
		},
		"fix_extra_stage_relocking": {
			"addr": "Rxede8",
			"code": "08 94 01 eadd0200"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x45848e"
		},
		"file_load": {
			"addr": "0x4584ca"
		},
		"file_loaded": {
			"addr": "0x441883"
		},
		"spell_id": {
			"addr": "0x415b99"
		},
		"spell_id#real": {
			"addr": "0x415bea"
		},
		"spell_name": {
			"addr": "0x40c853"
		},
		"spell_id#result": {
			"addr": "0x43f203"
		},
		"spell_name#result": {
			"addr": "0x43f2de"
		},
		"music_title": {
			"addr": "0x440b93"
		},
		"music_cmt#track": {
			"addr": [
				"0x440d47",
				"0x440e18"
			]
		},
		"music_cmt": {
			"addr": [
				"0x440d58",
				"0x440e29"
			]
		},
		"ruby_offset": {
			"addr": [
				"Rx1d680",
				"Rx1d719"
			]
		}
	},
	"tsa_font_block": [
		"Rxc2eec",
		"Rxc2ee8",
		"Rxc0ee4"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxce413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxcf036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxcd333",
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
