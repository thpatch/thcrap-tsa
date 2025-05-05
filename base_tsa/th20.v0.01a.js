{
	"codecaves": {
		"th20_file_load": {
			"access": "rx",
			"code": "6A 00 FF 74 24 0C FF 74 24 0C E8[Rx105D0] 83 C4 0C C2 08 00"
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