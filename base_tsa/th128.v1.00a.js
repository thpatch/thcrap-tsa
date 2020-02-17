{
	"binhacks": {
		"sprintf_call_1": {
			"addr": "0x46639f"
		},
		"sprintf_call_ebp-88": {
			"addr": "0x466234"
		},
		"sprintf_call_ebp-8c": {
			"addr": "0x4662cf"
		},
		"sprintf_replay_reuse_ebp-44": {
			"code": "68 28374a00 54 e8[strings_sprintf] 8945 bc",
			"addr": [ "Rx37cfb", "Rx38c80", "Rx399d3", "Rx4e33e" ]
		},
		"sprintf_replay_reuse_esp+170": {
			"code": "68 28374a00 54 e8[strings_sprintf] 898424 70010000",
			"addr": "Rx4b441"
		},
		"sprintf_replay_push_3": {
			"code": "e8[strings_sprintf] 83c4 0c 50 909090",
			"addr": [ "Rx37e9a", "Rx38781", "Rx3954a" ]
		},
		"sprintf_rep": {
			"addr": [
				"0x466272",
				"0x466342",
				"0x46640f",
				"Rx37d1d",
				"Rx37d31",
				"Rx38ca2",
				"Rx38cb6",
				"Rx399f5",
				"Rx39a09",
				"Rx4b4ae",
				"Rx4e360",
				"Rx4e374"
			]
		},
		"log_restore": {
			"addr": "0x46c320"
		},
		"fw_textbox_size": {
			"addr": [
				"0x423960",
				"0x423b20"
			]
		},
		"spell_align": {
			"addr": "0x466307"
		},
		"result_spell_align": {
			"addr": "0x466409"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x469ccd"
		},
		"file_load": {
			"addr": "0x469d06"
		},
		"file_loaded": {
			"addr": "0x44f90f"
		},
		"spell_id": {
			"addr": "0x41b45a"
		},
		"spell_id#real": {
			"addr": "0x41b4a5"
		},
		"spell_name": {
			"addr": "0x40dfe6"
		},
		"spell_id#result": {
			"addr": "0x44cffb"
		},
		"spell_name#result": {
			"addr": "0x44d116"
		},
		"music_title": {
			"addr": "0x44ec35"
		},
		"music_cmt#line_first": {
			"addr": "0x44ee0c"
		},
		"music_cmt#first": {
			"addr": "0x44ee1d"
		},
		"music_cmt#line": {
			"addr": "0x44eee4"
		},
		"music_cmt": {
			"addr": "0x44eef5"
		},
		"ruby_offset": {
			"addr": [
				"Rx2392e",
				"Rx23aa5"
			],
			"font_dialog": 4,
			"font_ruby": 6
		}
	},
	"tsa_font_block": [
		"Rxd2acc",
		"Rxd2ac8",
		"Rxd2ac4",
		"Rxd2ac0",
		"Rxd2abc",
		"Rxd2ab8",
		"Rxd0ab4",
		"Rxb8aa4"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rxe0413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rxe1036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rxdf333",
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
