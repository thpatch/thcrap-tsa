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
	},
	"binhacks": {
		"wine-fix-focus-stealing": {
			"addr": "Rx1D45B",
			"code": "E9 5A 03 00 00 90 90 90 90 90 90"
		},
		"sprintf_rep": {
			"addr": [ "Rx4AD57", "Rx4AEEB", "Rx4AFAF", "Rx4B13B", "Rx6C29A" ]
		},
		"sprintf_call_ebp-510": {
			"addr": [ "Rx4AC82", "Rx4AE46", "Rx4B096" ],
		},
		"sprintf_call_ebp-110": {
			"addr": "Rx6C274",
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
