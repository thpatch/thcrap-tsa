{
	"binhacks": {
		"sprintf_call_ebp-88": {
			"addr": "0x4869ed"
		},
		"sprintf_call_ebp-8c": {
			"addr": [
				"0x486c33",
				"0x486dd3"
			]
		},
		"sprintf_replay_use_ecx_2": {
			"addr": [ "Rx51f7b", "Rx6a890" ]
		},
		"sprintf_replay_reuse_1": {
			"code": "68 34d24c00 54 e8[strings_sprintf] 83c4 0c 894424 78 8b4f 34",
			"addr": "Rx521a0"
		},
		"sprintf_replay_reuse_2": {
			"code": "68 34d24c00 54 e8[strings_sprintf] 898424 68010000",
			"addr": "Rx67e21"
		},
		"sprintf_replay_reuse_3": {
			"code": "68 34d24c00 54 e8[strings_sprintf] 894424 1c",
			"addr": "Rx6abe4"
		},
		"sprintf_rep": {
			"addr": [
				"0x486a98",
				"0x486aab",
				"0x486d51",
				"0x486edf",
				"Rx86c44",
				"Rx521cb",
				"Rx521db",
				"Rx67e83",
				"Rx6ac0f",
				"Rx6ac1c"
			]
		},
		"log_restore": {
			"addr": "0x407840"
		},
		"ddc_textbox_size": {
			"addr": [
				"0x4382f0",
				"0x4384f4"
			],
			"code": "50e8[GetTextExtent]f30f100da1454c0083e81c730331c090"
		},
		"spell_name_fetch": {
			"addr": "0x4207eb"
		},
		"spell_align": {
			"addr": "Rx86cb0"
		},
		"result_spell_align": {
			"addr": "0x486ee5"
		},
		"music_title_prepare": {
			"addr": "0x46b81e",
			"code": "8b4ce4185131c05050505068ffffff0056ff35183c500090"
		},
		"score_force_visual_update": {
			"addr": "Rx3CC53",
			"code": "83 EC 08 56 57 8B F9 8B 87 90 00 00 00 A9 00 40 00 00 0F 84 55 01 00 00 A8 10 74 0F E8 1C D0 FF FF 31 C0 B0 03 5F 5E 8B E5 5D C3 8B 87 B8 00 00 00 40 3C B4 89 87 B8 00 00 00"
		},
		"score_force_visual_update_jmp_fix_1": {
			"addr": "Rx3cfb3",
			"code": "bd"
		},
		"score_force_visual_update_jmp_fix_2": {
			"addr": "Rx3cfbb",
			"code": "b5"
		},
		"score_force_visual_update_jmp_fix_3": {
			"addr": "Rx3cfc3",
			"code": "ad"
		},
		"score_force_visual_update_jmp_fix_4": {
			"addr": "Rx3d012",
			"code": "5e"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x402e39"
		},
		"file_load": {
			"addr": "0x402e74"
		},
		"file_loaded": {
			"addr": "0x46c502"
		},
		"spell_id": {
			"addr": "0x42c982"
		},
		"spell_id#real": {
			"addr": "0x42c9b9"
		},
		"spell_name": {
			"addr": "0x4207ee"
		},
		"spell_id#result": {
			"addr": "0x469632"
		},
		"spell_name#result": {
			"addr": "0x4697c7"
		},
		"music_title": {
			"addr": "0x46b822"
		},
		"music_cmt#line": {
			"addr": [
				"0x46ba76",
				"0x46bb49"
			]
		},
		"music_cmt": {
			"addr": [
				"0x46ba88",
				"0x46bb5b"
			]
		},
		"ruby_offset": {
			"addr": [
				"Rx38252",
				"Rx3846c"
			]
		}
	},
	"tsa_font_block": {
		"addr": "Rx1217c0"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx126423",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx127046",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx125333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx6780",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
