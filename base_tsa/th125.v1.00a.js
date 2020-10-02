{
	"binhacks": {
		"log_restore": {
			"addr": "0x4653c0"
		},
		"spell_align": {
			"addr": "0x45f979"
		},
		"center_align": {
			"addr": "Rx5fa8a"
		},
		"sprintf_call_esp+14": {
			"addr": "Rx5f8dc"
		},
		"sprintf_call_esp+18": {
			"addr": "Rx5fa79"
		},
		"sprintf_rep": {
			"addr": [
				"Rx5f903",
				"Rx5fabc",
				"Rx2d28d",
				"Rx2d299",
				"Rx2d423",
				"Rx2dd88",
				"Rx2e30a",
				"Rx2e316",
				"Rx2ee48",
				"Rx2f58f",
				"Rx2f59b",
				"Rx484e8"
			]
		},
		"font_ruby_size": {
			"addr": "0x44cfcb"
		},
		"unpatch_spell_align": {
			"addr": "Rx5f9ff",
			"title": "Unpatch the questionable spell name width addition in the English patch",
			"code": "508b02578bbc24c0000000508bc5e8eefdffff8b8c2494000000838e84040000015f5d5b33cce85aba000081c48c000000c3cccccccc"
		},
		"help_align_1": {
			"addr": "Rx2d76b",
			"code": "6a 00 68 00003000 68 c0e0ff00 33db 8db5 b8030000 e8 bc220300"
		},
		"help_align_2": {
			"addr": "Rx2d7a5",
			"code": "895424 10 9090909090909090 8db5 74080000 e8 84220300"
		},
		"help_align_3": {
			"addr": "Rx2d7db",
			"code": "83c4 14"
		},
		"help_align_scalefix": {
			"addr": "Rx5fad2"
		},
		"sprintf_replay_1": {
			"addr": [
				"Rx2d264",
				"Rx2d411"
			],
			"code": "68 44 f8 49 00 54 e8[strings_sprintf] 89 44 24 4c"
		},
		"sprintf_replay_2": {
			"addr": [
				"Rx2dd76",
				"Rx2e2e0",
				"Rx2ee36",
				"Rx2f565"
			],
			"code": "68 44 f8 49 00 54 e8[strings_sprintf] 89 44 24 3c"
		},
		"sprintf_replay_3": {
			"addr": "Rx484d3",
			"code": "68 44 f8 49 00 54 e8[strings_sprintf] 89 84 24 5c 01 00 00"
		},
		"scorefile_fn_lookup": {
			"addr": "Rx3d1ff",
			"code": "578d7c040783ec04546828fd4900e8[strings_lookup]83c408595689c6f3a45e5f8d5424046a01528d44240ce8235e0200909090909090909090909090909090909090909090909090909090909090"
		}
	},
	"breakpoints": {
		"mission": {
			"addr": "0x445F80"
		},
		"mission_check_furi_a": {
			"addr": "0x445ED3"
		},
		"mission_check_furi_a#stage98": {
			"addr": ["0x445B9F", "0x445C90", "0x445D44", "0x445DF0"]
		},
		"mission_printf_hook": {
			"addr": "0x45F8B0"
		},
		"file_size": {
			"addr": "0x4630de"
		},
		"file_load": {
			"addr": "0x46311a"
		},
		"file_loaded": {
			"addr": "0x44a2b3"
		},
		"spell_id#menu": {
			"addr": "0x443683"
		},
		"spell_id#ingame_from_menu": {
			"addr": "0x40e31c"
		},
		"spell_id#ingame_from_next": {
			"addr": "Rx2b383"
		},
		"spell_id#replay": {
			"addr": "0x446a0f"
		},
		"spell_name": {
			"addr": "0x40cfc4"
		},
		"spell_name#menu": {
			"addr": "0x4436ab"
		},
		"music_title": {
			"addr": "0x44890e"
		},
		"music_cmt#first": {
			"addr": "0x448ac9"
		},
		"music_cmt#track": {
			"addr": [
				"0x448abc",
				"0x448b81"
			]
		},
		"music_cmt": {
			"addr": "0x448b8e"
		},
		"ruby_offset": {
			"addr": [
				"Rx1c577",
				"Rx1c636"
			]
		},
		"gentext#help_id": {
			"addr": "Rx2d758"
		},
		"gentext#help_line_1": {
			"addr": "Rx2d768"
		},
		"gentext#help_line_2": {
			"addr": "Rx2d7a5"
		}
	},
	"tsa_font_block": {
		"addr": "Rxd0908"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxde413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxdf036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxdd333",
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
