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
	},
	"tsa_font_block": {
		"addr": "Rx1B66F0",
		"offset": 4,
		"min": 0,
		"max": 22
	},
	"file_load_func": "<codecave:th20_file_load>",
	"free_func": "<Rx157BA0>",
}
