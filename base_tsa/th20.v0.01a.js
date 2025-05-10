{
	"codecaves": {
		"th20_file_load": {
			"access": "rx",
			"code": "6A 00 FF 74 24 0C FF 74 24 0C E8[Rx105D0] 83 C4 0C C2 08 00"
		},
		"th20_text_file_strlen_fix": {
			"access": "re",
			"code": "5756FF742414FF742414FF742414E8[Rx105D0]83C40C85C0742489C650E8[Rx160DDD]83C40489C7405056E8[Rx15CE93]83C40885C07406C6040700EB0289F05E5FC3"
		}
	},
	"binhacks": {
		"fix-focus-stealing": {
			"addr": "Rx1D6E8",
			"code": "E9 5C 03 00 00 90 90 90 90 90 90"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx12CA69",
			"code": "50"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx12CABD",
			"code": "4c"
		},
		"th20_list_crash_fix": {
			"addr": "Rx11AD0",
			"code": "89C88B4C24040F57C00F1340183B4814740AE819000000C20400CCCC8B5108895014E809000000C20400CCCCCCCCCC"
		},
		"th20_text_file_strlen_fix": {
			"addr": [ "Rx11C360", "Rx121AAA", "Rx12CCD0" ],
			"code": "E8[codecave:th20_text_file_strlen_fix]",
			"expected": "E8[Rx105D0]"
		},
		"th20_lzss_fix": {
			"addr": "Rx139B9A",
			"code": "31C08945EC8B450CFFC8",
			"enable": false
		},
		// Not calling strings_lookup cause it's gonna get called anyways by the safe sprintf hack anyways
		"std_string_to_literal": {
			"addr": [ "RxE1921", "RxE19AB" ],
			"code": "b8<Rx170BB8><nop:29>"
		},
		"std_string_to_literal_2": {
			"addr": "RxE1A2C",
			"code": "b8<Rx170BD0><nop:29>"
		},

		"safe_vsprintf_1": {
			"addr": [ "Rx4A7F2", "Rx4A9B6", "Rx4AC06" ],
			"code": "55 e8[strings_vsprintf] 8985 f0faffff"
		},
		"safe_sprintf_2": {
			"addr": "Rx6EFB4",
			"code": "55 e8[strings_vsprintf] 8985 f0feffff"
		},
		"safe_sprintf_3": {
			"addr": [ "Rx53A23", "Rx53B03" ],
			"code": "51 ff75 0c ff75 08 e8[strings_vsprintf] 83c4 0c 50 <nop:33>"
		},
		"sprintf_rep": {
			"addr": [ "Rx4A8C7", "Rx4AA5B", "Rx4AB1F", "Rx4ACAB", "Rx4AD67", "Rx6EFDA" ]
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx1067C",
			"file_size": "eax",
			"file_name": "[ebp-0x34]",
			"cavesize": 7
		},
		"file_load": {
			"addr": "Rx106DD",
			"file_buffer": "eax",
			"stack_clear_size": 8,
			"cavesize": 5
		},
		"file_loaded": {
			"addr": "Rx13B24D",
			"cavesize": 7
		},
		"gentext#stone_name": {
			"addr": "Rx11B5B4",
			"cavesize": 19,
			"str": "edx",
			"ids": "[ebp-0x90]",
			"line": 0,
		},
		"gentext#stone_name_desc": {
			"addr": "Rx11B824",
			"cavesize": 16,
			"str": "edx",
			"ids": "[ebp-0x58]",
		},
		"gentext#stone_desc": {
			"addr": "Rx11B942",
			"cavesize": 25,
			"str": "edx",
			"ids": [ "[ebp-0x58]", 0 ],
			"line": "[ebp-0x6C]",
		},
		"gentext#stone_select_name": {
			"addr": "Rx11BFFE",
			"cavesize": 16,
			"str": "edx",
			"ids": "[ebp-0x80]",
		},

		"gentext#stone_common_line_0": {
			"addr": "Rx11BA21",
			"cavesize": 27,
			"ids": [ "[ebp-0x74]", 0 ],
			"str": "edx"
		},
		"gentext#stone_common_line_1": {
			"addr": "Rx11BA96",
			"cavesize": 26,
			"ids": [ "[ebp-0x74]", 0 ],
			"str": "edx"
		},
		"gentext#stone_common_line_2_3__left_right": {
			"addr": "Rx11BB6C",
			"cavesize": 25,
			"ids": [ "[ebp-0x58]", 0 ],
			"line": "[ebp-0x64]",
			"str": "eax"
		},
		"gentext#stone_common_line_2_3__bottom": {
			"addr": "Rx11BC2D",
			"cavesize": 25,
			"line": "[ebp-0x68]",
			"ids": [ "[ebp-0x58]", 0 ],
			"str": "edx"
		},
		"gentext#stone_name_result": {
			"addr": "Rx124678",
			"cavesize": 9,
			"str": "eax",
			"ids": "edx",
		},
		"gentext#stone_name_unlock": {
			"addr": "RxE1912",
			"cavesize": 12,
			"str": "eax",
			"ids": "[ebp-0x44]",
		},
		"gentext#stone_name_spell_result": {
			"addr": "Rx126B6B",
			"cavesize": 12,
			"str": "eax",
			// The game itself performs this multiplication to convert this ID
			// into a gemstone ID. It's actually really easy to tell that the
			// game does that because the left shift by 2 and left shift by 8
			// instructions did not get merged into one left shift by 10.
			"ids": "ecx << 2"
		},
		"gentext#trophy_name": {
			"addr": "Rx12A38F",
			"cavesize": 9,
			"cave_exec": false,
			"str": "eax",
			"ids": "eax",
		},
		"gentext#trophy_desc": {
			"addr": "Rx12DF23",
			"cavesize": 8,
			"eip_jump_dist": "0x4c",
			"str": "eax",
			"ids": [ "[ebp+0x8]", "[ebp+0xC]" ],
			"line": "[ebp+0x10]"
		},
		"gentext#ingame_trophy_name": {
			"addr": "Rx12CA58",
			"cavesize": 9,
			"cave_exec": false,
			"str": "eax",
			"ids": "[ebp-0x20]"
		},
		"music_title": {
			"addr": "Rx122765",
			"cavesize": 10,
			"track": "[ebp-0x18]",
			"str": "[esp+0x4]"
		},
		"music_cmt": {
			"addr": "Rx122887",
			"cavesize": 10,
			"str": "[esp+0x4]",
			"line_num": "[ebp-0x1c]",
			"track": "[[ebp-0x14]+0x484]"
		},
		"spell_name#result": {
			"addr": "Rx1271DD",
			"cavesize": 6,
			"cave_exec": false,
			"spell_name": "eax",
			"spell_id_real": "[ebp-0xe0]",
			"spell_rank": "[[ebp-0xe4]+0xbc]"
		},
		"spell_id": {
			"addr": "Rx975D1",
			"cavesize": 6,
			"spell_id": "eax",
		},
		"spell_name": {
			"addr": "Rx8B56F",
			"cavesize": 5,
			"spell_name": "[esp+0x4]",
			"spell_id_real": "[ebp+0x8]"
		}
	},
	"tsa_font_block": {
		"addr": "Rx1B4770",
		"offset": 4,
		"min": 0,
		"max": 22
	},
	"file_load_func": "<codecave:th20_file_load>",
	"free_func": "<Rx157254>"
}