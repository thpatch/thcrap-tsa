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
		"spell_name#practice": {
			"addr": "Rx1202D3",
			"cavesize": 6,
			"cave_exec": false,
			"spell_name": "eax",
			"spell_id_real": "[ebp-0xd8]",
			"spell_id": "[ebp+0x8]"
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
		"gentext#stone_name": {
			"addr": [ "RxDEE89", "RxDEF76", "RxDF081", "Rx122F4C", "Rx125952" ],
			"cavesize": 5,
			"line": 0,
			"str": "eax",
			"ids": "[esp+0x4] << 2",
			"stack_clear_size": 4,
		},
		"gentext#stone_name_charsel": {
			"file": "stonetext.js",
			"line": 0,
			"addr": "Rx118BB4",
			"cavesize": 19,
			"cave_exec": false,
			"str": "edx",
			"ids": "[ebp-0x90]"
		},
		"gentext#stone_select_name": {
			"addr": "Rx1196EC",
			"cavesize": 16,
			"str": "edx",
			"ids": "[ebp-0x80]"
		},
		"gentext#stone_name_desc": {
			"addr": "Rx118EA1",
			"cavesize": 16,
			"line": 0,
			"str": "edx",
			"ids": "[ebp-0x54]",
		},
		"gentext#stone_desc": {
			"addr": "Rx118FBF",
			"cavesize": 25,
			"str": "edx",
			"ids": [ "[ebp-0x54]", 0 ],
			"line": "[ebp-0x60]",
		},
		"gentext#stone_common_line_0": {
			"addr": "Rx11909E",
			"cavesize": 27,
			"ids": [ "[ebp-0x74]", 0 ],
			"str": "edx"
		},
		"gentext#stone_common_line_1": {
			"addr": "Rx119113",
			"cavesize": 26,
			"ids": [ "[ebp-0x74]", 0 ],
			"str": "edx"
		},
		"gentext#stone_common_line_2_3__left_right": {
			"addr": "Rx1191E9",
			"cavesize": 25,
			"ids": [ "[ebp-0x54]", 0 ],
			"line": "[ebp-0x64]",
			"str": "eax"
		},
		"gentext#stone_common_line_2_3__bottom": {
			"addr": "Rx1192AA",
			"cavesize": 25,
			"line": "[ebp-0x68]",
			"ids": [ "[ebp-0x54]", 0 ],
			"str": "edx"
		},
		"ruby_offset": {
			"addr": [ "RxB0BAA", "RxB1004" ],
			"str": "esi",
			"offset": "eax",
			"font_dialog": 4,
			"font_ruby": 18,
			"cavesize": 5
		}
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
		"std_string_array_to_string_literal_array": {
			"addr": "RxAA40",
			"code": [
				"c705 <Rx1C5B5C> <Rx171ED4> c705 <Rx1C5B78> <Rx171EE0>",
				"c705 <Rx1C5B94> <Rx171EF8> c705 <Rx1C5BB0> <Rx171EE0>",
				"c705 <Rx1C5BCC> <Rx171EF8> c705 <Rx1C5BE8> <Rx171EE0>",
				"c705 <Rx1C5C04> <Rx171EF8> c705 <Rx1C5C20> <Rx171EE0>",
				"c705 <Rx1C5C3C> <Rx171EF8> c705 <Rx1C5C58> <Rx171EE0>",
				"c705 <Rx1C5C74> <Rx171EF8> c705 <Rx1C5C90> <Rx171EE0>",
				"c705 <Rx1C5CAC> <Rx171EF8> c705 <Rx1C5CC8> <Rx171EE0>",
				"c705 <Rx1C5CE4> <Rx171EF8> c705 <Rx1C5D00> <Rx171EE0>",
				"c705 <Rx1C5D1C> <Rx171EF8> c705 <Rx1C5D38> <Rx171F1C>",
				"c705 <Rx1C5D54> <Rx171F28> c705 <Rx1C5D70> <Rx171F1C>",
				"c705 <Rx1C5D8C> <Rx171F28> c705 <Rx1C5DA8> <Rx171F1C>",
				"c705 <Rx1C5DC4> <Rx171F28> c705 <Rx1C5DE0> <Rx171F1C>",
				"c705 <Rx1C5DFC> <Rx171F28> c705 <Rx1C5E18> <Rx171F1C>",
				"c705 <Rx1C5E34> <Rx171F28> c705 <Rx1C5E50> <Rx171F1C>",
				"c705 <Rx1C5E6C> <Rx171F28> c705 <Rx1C5E88> <Rx171F1C>",
				"c705 <Rx1C5EA4> <Rx171F28> c705 <Rx1C5EC0> <Rx171F1C>",
				"c705 <Rx1C5EDC> <Rx171F28> c705 <Rx1C5EF8> <Rx171F40>",
				"c705 <Rx1C5F14> <Rx171F28> c705 <Rx1C5F30> <Rx171F40>",
				"c705 <Rx1C5F4C> <Rx171F28> c705 <Rx1C5F68> <Rx171F40>",
				"c705 <Rx1C5F84> <Rx171F28> c705 <Rx1C5FA0> <Rx171F40>",
				"c705 <Rx1C5FBC> <Rx171F28> c705 <Rx1C5FD8> <Rx171F40>",
				"c705 <Rx1C5FF4> <Rx171F28> c705 <Rx1C6010> <Rx171F40>",
				"c705 <Rx1C602C> <Rx171F28> c705 <Rx1C6048> <Rx171F40>",
				"c705 <Rx1C6064> <Rx171F28> c705 <Rx1C6080> <Rx171F40>",
				"c705 <Rx1C609C> <Rx171F28> c3 <int3:528>"
			]
		},
		"std_string_c_str_to_deref": {
			"addr": [ "RxDEEAE", "RxDEF9B", "RxDF0A9", "RxDF148", "RxDF1DB" ],
			"code": "8b01<nop:3>"
		},
		"textbox_size": {
			"addr": [ "RxB0CB9", "RxB1107" ],
			"code": "6A 04 50 E8[GetTextExtentForFontID] 83 E8 1C 73 07 31 C0 <nop:5>"
		},		
		"ruby_prepare_1": {
			"addr": "RxB0B9F",
			"code": "89 C6 56 E8 25 05 0A 00 83 C4 04 89 45 D8 6A 2C 56 E8 BB 04 FF FF 90 90 90 90 90 90 90 90"
		},
		"ruby_prepare_2": {
			"addr": "RxB0FF9",
			"code": "89 C6 56 E8 CB 00 0A 00 83 C4 04 89 45 E0 6A 2C 56 E8 61 00 FF FF 90 90 90 90 90 90 90 90"
		},
		"center_align": {
			"addr": "Rx4AEF1",
			"code": "FF 75 1C 50 E8[GetTextExtentForFontID] 89 C1 8B 95 D8 FA FF FF F3 0F 2D 42 4C D1 E8 29 C8 <nop:86>"
		},
		"spell_align": {
			"addr": "Rx4B141",
			"code": "FF 75 1C 50 E8[GetTextExtentForFontID] 83 C0 02 D1 F0 89 C1 8B 95 D8 FA FF FF F3 0F 2D 42 4C 29 C8 <nop:75>"
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
