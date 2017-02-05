{
	"binhacks": {
		"force_jump": {
			"code": "eb",
			"title": "Replaces a conditional jump with an absolute jump"
		},
		"nop_long_je": {
			"code": "909090909090",
			"title": "Removes a long jump"
		},
		"nop_jump": {
			"code": "9090",
			"title": "Removes a jump"
		},
		"nop_long_jump": {
			"code": "9090909090",
			"title": "Removes a function call"
		}
	},
	"title": "東方深秘録 ～ Urban Legend in Limbo",
	"url_trial": "http://tasofro.net/arc/th145_trial.zip",
	"latest": "v1.31b",
	"breakpoints": {
		"file_header": {
			"struct": "eax",
			"key": "edi",
			"cavesize": 5
		},
		"replace_file": {
			"cavesize": 6,
			"file_struct": "esi"
		},
		"replace_file#2nd_call": {
			"cavesize": 6,
			"file_struct": "esi"
		}
	}
}
