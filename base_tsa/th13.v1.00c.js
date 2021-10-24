{
	"binhacks": {
		"sprintf_call_1": {
			"addr": "0x46ea5f"
		},
		"sprintf_call_ebp-88": {
			"addr": "0x46e914"
		},
		"sprintf_call_ebp-8c": {
			"addr": "0x46e99f"
		},
		"sprintf_replay_reuse_1": {
			"code": "68 1cbb4a00 55 e8[strings_sprintf] 89 45 bc",
			"addr": [ "Rx3f23e", "Rx412b3", "Rx54de5" ]
		},
		"sprintf_replay_reuse_2": {
			"code": "68 1cbb4a00 55 e8[strings_sprintf] 894424 44",
			"addr": "Rx40251"
		},
		"sprintf_replay_reuse_3": {
			"code": "68 1cbb4a00 55 e8[strings_sprintf] 898424 70010000",
			"addr": "Rx52361"
		},
		"sprintf_replay_push_1": {
			"code": "e8[strings_sprintf] 83c4 0c 50 909090",
			"addr": [ "Rx3f3cb", "Rx40e2a", "Rx54a40" ]
		},
		"sprintf_replay_push_2": {
			"code": "e8[strings_sprintf] 83c4 0c 50 90909090",
			"addr": "Rx3fd40"
		},
		
		"sprintf_rep": {
			"addr": [
				"0x46e94c",
				"0x46ea0c",
				"0x46eac9",
				"Rx3f268",
				"Rx3f273",
				"Rx4027c",
				"Rx40288",
				"Rx412dd",
				"Rx412e8",
				"Rx523ce",
				"Rx54e12",
				"Rx54e1d"
			]
		},
		"log_restore": {
			"addr": "0x475030"
		},
		"fw_textbox_size": {
			"addr": [
				"0x428eb9",
				"0x4290db"
			]
		},
		"spell_align": {
			"addr": "0x46e9cb",
			"code": "ff7510c1e90c83e10151ff750cff7508ff3510c34d00ffb574ffffffe8[GetTextExtentForFont]83c00850db04e4587906d805b0ea4a00dee9"
		},
		"result_spell_align": {
			"addr": "0x46eac3"
		},
		"unpatch_fonts": {
			"addr": "0x45ad24"
		},
		"unpatch_dialog": {
			"addr": "0x45c3a1"
		},
		"unpatch_layout_1": {
			"title": "Remove English patch text formatting tag parsing (1)",
			"addr": "Rx5afbe",
			"code": "75778b4d185156ff1518204a008b450c5303c0578945e46a0483c00250"
		},
		"unpatch_layout_2": {
			"title": "Remove English patch text formatting tag parsing (2)",
			"addr": "Rx5b2b0",
			"code": "751f8b55145256ff1518204a008b450c53576a028d0c00"
		},
		"unpatch_strings_result_known_spell": {
			"addr": "Rx53ced"
		},
		"unpatch_strings_result_unknown_spell": {
			"addr": "Rx53d54"
		},
		"fix_practice_replay_crash#1": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #1",
			"addr": "Rx47ce9",
			"code": "df",
			"expected": "cf"
		},
		"fix_practice_replay_crash#2": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #2",
			"addr": "Rx52b30",
			"code": "0fb6470a e82768ffff 31c0 48 a3d4e74b00"
		},
		"score_force_visual_update": {
			"addr": "Rx2c553",
			"code": "83 EC 5C 53 56 8B 75 08 8B 46 60 57 A9 00 40 00 00 0F 84 01 01 00 00 A8 10 74 12 E8 FD DD FF FF 31 C0 B0 03 5F 5E 5B 8B E5 5D C2 04 00 8B 46 78 40 3C B4 89 46 78"
		},
		"score_force_visual_update_jmp_fix_1": {
			"addr": "Rx2cad9",
			"code": "96"
		},
		"score_force_visual_update_jmp_fix_2": {
			"addr": "Rx2cae1",
			"code": "8e"
		},
		"score_force_visual_update_jmp_fix_3": {
			"addr": "Rx2cae9",
			"code": "86"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x47254a"
		},
		"file_load": {
			"addr": "0x472586"
		},
		"file_loaded": {
			"addr": "0x457fcf"
		},
		"spell_id": {
			"addr": "0x41e4db"
		},
		"spell_id#real": {
			"addr": "0x41e546"
		},
		"spell_name": {
			"addr": "0x4135b5"
		},
		"spell_id#result": {
			"addr": "0x453c22"
		},
		"spell_name#result": {
			"addr": "0x453cea"
		},
		"spell_id#practice": {
			"addr": "0x4571f7"
		},
		"spell_name#practice": {
			"addr": "0x4572aa"
		},
		"music_title": {
			"addr": "0x4558f3"
		},
		"music_cmt#line_first": {
			"addr": "0x455abe"
		},
		"music_cmt#first": {
			"addr": "0x455acf"
		},
		"music_cmt#line": {
			"addr": "0x455b96"
		},
		"music_cmt": {
			"addr": "0x455ba7"
		},
		"ruby_offset": {
			"addr": [
				"Rx28e24",
				"Rx2904c"
			]
		},
		"bgmmod_tranceseek_byte_offset#regular": {
			"addr": "Rx76c60"
		},
		"bgmmod_tranceseek_byte_offset#looped": {
			"addr": "Rx76c9a"
		}
	},
	"tsa_font_block": [
		"Rxdc310",
		"Rxdc30c",
		"Rxdc308",
		"Rxdc304",
		"Rxdc300",
		"Rxdc2fc",
		"Rxdc2f8",
		"Rxda2f4"
	],
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
					"addr": "Rx66d0",
					"code": "90909090909090909090 b030 884513 e9"
				}
			}
		}
	]
}
