{
	"binhacks": {
		"sprintf_call_esp+18": {
			"addr": [
				"0x447a7e",
				"0x447be9"
			]
		},
		"sprintf_call_esp+1c": {
			"addr": "0x447b19"
		},
		"sprintf_replay_1": {
			"addr": "Rx239ed"
		},
		"sprintf_replay_2": {
			"addr": "Rx23ee4",
			"code": "68 c8e04600 54 e8[strings_sprintf] 894424 24"
		},
		"sprintf_replay_3": {
			"addr": "Rx3168f"
		},
		"sprintf_replay_4": {
			"addr": "Rx335fb"
		},
		"sprintf_replay_5": {
			"addr": "Rx3396b",
			"code": "68 c8e04600 54 e8[strings_sprintf] 894424 1c"
		},
		"sprintf_rep": {
			"addr": [
				"0x447aab",
				"0x447b7a",
				"0x447c40",
				"Rx23f12",
				"Rx23f1e",
				
				"Rx33999",
				"Rx339a5"
			]
		},
		"enemy_text_offset_1": {
			"addr": "0x41631a"
		},
		"enemy_text_offset_2": {
			"addr": "Rx16335",
			"code": "83c007"
		},
		"spell_align": {
			"addr": "0x447b30"
		},
		"result_spell_align": {
			"addr": "0x447c39"
		},
		"fix_practice_replay_crash#1": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #1 (jump)",
			"addr": "0x416c3d",
			"code": "e8beee0400 85c0 75",
			"expected": "f605a04c470010 74"
		},
		"fix_practice_replay_crash#2": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #2 (code cave)",
			"addr": "0x465b00",
			"code": "f605a04c470010 7403 33c0 c3 a110784700 83785c00 7506 b801000000 c3 a16c4c4700 c3"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x44b3ea"
		},
		"file_load": {
			"addr": "0x44b410"
		},
		"file_loaded": {
			"addr": "0x434ee1"
		},
		"spell_id": {
			"addr": "0x410edc"
		},
		"spell_id#real": {
			"addr": "0x410f30"
		},
		"spell_name": {
			"addr": "0x409678"
		},
		"spell_id#result": {
			"addr": "0x43278b"
		},
		"spell_name#result": {
			"addr": "0x432876"
		},
		"music_title": {
			"addr": "0x434201"
		},
		"music_cmt#params": {
			"addr": [
				"0x4343be",
				"0x434493"
			]
		},
		"music_cmt": {
			"addr": [
				"0x4343d1",
				"0x4344a6"
			]
		}
	},
	"tsa_font_block": {
		"addr": "Rx918e0"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx9d413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx9e036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx9c333",
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
