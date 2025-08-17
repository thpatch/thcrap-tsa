{
	"codecaves": {
		"th20_file_load": {
			"access": "rx",
			"code": "6A 00 FF 74 24 0C FF 74 24 0C E8[Rx10AA0] 83 C4 0C C2 08 00"
		},
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx10B86",
			"cavesize": 7,
			"file_size": "edx",
			"file_name": "ecx",
		},
		"file_load": {
			"addr": "Rx10BAD",
			"cavesize": 6,
			"file_buffer": "eax",
			"stack_clear_size": 8,
		},
		"file_loaded": {
			"addr": "Rx13A60D",
			"cavesize": 7,
			"file_buffer": "eax",
		},
		"spell_id": {
			"addr": "Rx94244",
			"cavesize": 6,
			"spell_id": "eax",
		},
		"spell_name": {
			"addr": "Rx87F03",
			"cavesize": 5,
			"spell_name": "[esp+0x4]",
			"spell_id_real": "[ebp+0x8]"
		},
		"spell_name#result": {
			"addr": "Rx125FAD",
			"cavesize": 6,
			"cave_exec": false,
			"spell_name": "eax",
			"spell_id_real": "[ebp-0xe0]",
			"spell_rank": "[[ebp-0xe4]+0xbc]"
		},
		"music_title": {
			"addr": "Rx120DF0",
			"cavesize": 5,
			"track": "[ebp-0x18]",
			"str": "[esp+0x4]"
		},
		"music_cmt": {
			"addr": "Rx120F12",
			"cavesize": 5,
			"str": "[esp+0x4]",
			"line_num": "[ebp-0x1c]",
			"track": "[[ebp-0x14]+0x484]"
		},
		"gentext#trophy_name": {
			"addr": "Rx12B6B0",
			"cavesize": 5,
			"cave_exec": false,
			"str": "eax",
			"ids": "eax",
		},
		"gentext#trophy_desc": {
			"addr": "Rx12F4E3",
			"cavesize": 8,
			"eip_jump_dist": "0x4c",
			"str": "eax",
			"ids": [ "[ebp+0x8]", "[ebp+0xC]" ],
			"line": "[ebp+0x10]"
		},
		"gentext#ingame_trophy_name": {
			"addr": "Rx12E019",
			"cavesize": 5,
			"cave_exec": false,
			"str": "eax",
			"ids": "[ebp-0x20]"
		},
	},
	"binhacks": {
		"wine-fix-focus-stealing": {
			"addr": "Rx1D45B",
			"code": "E9 5A 03 00 00 90 90 90 90 90 90"
		},
		"sprintf_rep": {
			"addr": [ "Rx4AD57", "Rx4AEEB", "Rx4AFAF", "Rx4B13B", "Rx4B1F7", "Rx6C29A" ]
		},
		"sprintf_call_ebp-510": {
			"addr": [ "Rx4AC82", "Rx4AE46", "Rx4B096" ],
		},
		"sprintf_call_ebp-110": {
			"addr": "Rx6C274",
		},
		"ascii_sprintf": {
			"addr": "Rx6C9F6",
			"code": "e8[strings_vsnprintf]",
			"enable": "<strings_vsnprintf>"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx12E029",
			"code": "50"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx12E07D",
			"code": "4c"
		},
	},
	"tsa_font_block": {
		"addr": "Rx1B66F0",
		"offset": 4,
		"min": 0,
		"max": 22
	},
	"file_load_func": "<codecave:th20_file_load>",
	"free_func": "<Rx157BA0>",
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx1fa413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx1fb036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx1f9333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx3e6e",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
