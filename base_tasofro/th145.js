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
		},
		"reverse_character_bytes": {
			"code": "72198b0b0fc96a045b29c3740cc1e9084b75fa909090909090",
			"title": "Correctly reverses the bytes of the character in [ebx], without assuming a 2-bytes character."
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
		"replace_file#prepare": {
			"cavesize": 5,
			"buffer": "ecx",
			"size": "edx"
		},
		"replace_file": {
			"cavesize": 6,
			"file_struct": "esi"
		}
	}
}
