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
			"cave_exec": false,
			"str": "edx",
			"ids": "[ebp-0x90]",
			"line": 0,
			"file": "stonetext.js"
		},
		"gentext#stone_name_desc": {
			"addr": "Rx11B824",
			"cavesize": 16,
			"cave_exec": false,
			"str": "edx",
			"ids": "[ebp-0x58]",
			"file": "stonetext.js"
		},
		"gentext#stone_desc": {
			"addr": "Rx11B942",
			"cavesize": 25,
			"cave_exec": false,
			"str": "edx",
			"ids": [ "[ebp-0x58]", 0 ],
			"line": "[ebp-0x6C]",
			"file": "stonetext.js"
		},
		"gentext#stone_select_name": {
			"addr": "Rx11BFFE",
			"cavesize": 16,
			"cave_exec": false,
			"str": "edx",
			"ids": "[ebp-0x80]",
			"file": "stonetext.js"
		},
		"gentext#trophy_name": {
			"addr": "Rx12A38F",
			"cavesize": 9,
			"cave_exec": false,
			"str": "eax",
			"ids": "eax",
			"line": 0,
			"file": "trophy.js",
		},
		"gentext#trophy_desc": {
			"addr": "Rx12DF23",
			"cavesize": 8,
			"eip_jump_dist": "0x4c",
			"str": "eax",
			"ids": [ "[ebp+0x8]", "[ebp+0xC]" ],
			"line": "[ebp+0x10]",
			"file": "trophy.js",
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