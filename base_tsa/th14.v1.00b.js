{
	"binhacks": {
		"sprintf_call_esp+34": {
			"addr": [
				"0x47db89",
				"Rx7dc79",
				"0x47dda9"
			]
		},
		"sprintf_long_call": {
			"addr": [
				"0x40bb2e",
				"0x40bdde"
			]
		},
		"sprintf_replay_reuse_1": {
			"code": "68 98ed4b00 54 e8[strings_sprintf] 8945 bc",
			"addr": [ "Rx499fb", "Rx4b945", "Rx6178a" ]
		},
		"sprintf_replay_reuse_2": {
			"code": "68 98ed4b00 54 e8[strings_sprintf] 894424 2c",
			"addr": "Rx4aa2c"
		},
		"sprintf_replay_reuse_3": {
			"code": "68 98ed4b00 54 e8[strings_sprintf] 898424 68010000",
			"addr": "Rx5ed91"
		},
		"sprintf_replay_use_ecx_1": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 90",
			"addr": [ "Rx49b8a", "Rx4b511", "Rx6143a" ]
		},
		"sprintf_replay_use_ecx_2": {
			"addr": "Rx4a59e"
		},
		"sprintf_rep": {
			"addr": [
				"0x40bb3d",
				"0x40bded",
				"0x47dbf8",
				"Rx7dd24",
				"0x47de3b",
				"Rx49a25",
				"Rx49a31",
				"Rx4aa57",
				"Rx4aa64",
				"Rx4b96f",
				"Rx4b97b",
				"Rx5edf3",
				"Rx617b4",
				"Rx617c0"
			]
		},
		"log_restore": {
			"addr": "0x4075c0"
		},
		"ddc_textbox_size_full": {
			"addr": [
				"0x4327f0",
				"0x4329e7"
			],
			"code": "53e8[GetTextExtent]f30f100d781a4c0083e81c730331c090"
		},
		"spell_name_fetch": {
			"addr": "0x41cefb"
		},
		"spell_align": {
			"addr": "Rx7dc8a"
		},
		"result_spell_align": {
			"addr": "Rx7ddfe"
		},
		"music_title_prepare": {
			"addr": "0x46235d"
		},
		"score_force_visual_update": {
			"addr": "Rx36623",
			"code": "83 EC 5C 53 56 57 8B F9 8B 87 80 00 00 00 A9 00 40 00 00 0F 84 2D 01 00 00 A8 10 74 10 E8 1B DD FF FF 31 C0 B0 03 5F 5E 5B 8B E5 5D C3 8B 87 98 00 00 00 40 3C B4 89 87 98 00 00 00"
		},
		"score_force_visual_update_jmp_fix_1": {
			"addr": "Rx36c8a",
			"code": "b7"
		},
		"score_force_visual_update_jmp_fix_2": {
			"addr": "Rx36c92",
			"code": "af"
		},
		"score_force_visual_update_jmp_fix_3": {
			"addr": "Rx36c9a",
			"code": "a7"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x402b89"
		},
		"file_load": {
			"addr": "0x402bc4"
		},
		"file_loaded": {
			"addr": "0x464822"
		},
		"spell_id": {
			"addr": "0x428912"
		},
		"spell_id#real": {
			"addr": "0x428949"
		},
		"spell_name": {
			"addr": "0x41cefe"
		},
		"spell_id#result": {
			"addr": "0x46055d"
		},
		"spell_name#result": {
			"addr": "0x460647"
		},
		"spell_name#practice": {
			"addr": "0x463b20"
		},
		"music_title": {
			"addr": "0x462361"
		},
		"music_cmt#line": {
			"addr": [
				"0x46257e",
				"0x462651"
			]
		},
		"music_cmt": {
			"addr": [
				"0x462590",
				"0x462663"
			]
		},
		"ruby_offset": {
			"addr": [
				"Rx3275f",
				"Rx3296a"
			]
		}
	},
	"tsa_font_block": {
		"addr": "Rxfd61c"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx102413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx103036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx101333",
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
