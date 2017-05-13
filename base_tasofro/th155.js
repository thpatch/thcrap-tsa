{
	"binhacks": {
		"force_jump": {
			"code": "eb",
			"title": "Replaces a conditional jump with an absolute jump"
		},
		"nop_jump": {
			"code": "9090",
			"title": "Removes a jump"
		},
		"nop_CreateProcess": {
			"code": "9090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Removes a call to CreateProcess"
		}
	},
	"title": "東方憑依華 ~ Antinomy of Common Flowers",
	"url_trial": "http://tasofro.net/arc/th155_trial.zip",
	"latest": "v0.01a",
	"breakpoints": {
		"file_header": {
			"struct": "ebp",
			"struct_offset": -72,
			"key": "edi",
			"cavesize": 5
		},
		"replace_file#prepare_variable_size": {
			"cavesize": 5,
			"buffer": "ecx",
			"size": "eax"
		},
		"replace_file#variable_size": {
			"cavesize": 6,
			"file_struct": "esi"
		},
		"replace_file#fixed_size": {
			"cavesize": 6,
			"file_struct": "esi",
			"buffer": 0,
			"size": 65536
		}
	}
}
