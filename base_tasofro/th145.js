{
	"binhacks": {
		"reverse_character_bytes": {
			"code": "72198b0b0fc96a045b29c3740cc1e9084b75fa909090909090",
			"title": "Correctly reverses the bytes of the character in [ebx], without assuming a 2-bytes character."
		}
	},
	"title": "東方深秘録 ~ Urban Legend in Limbo",
	"url_trial": "http://tasofro.net/arc/th145_trial.zip",
	"latest": "v1.41",
	"crypt": "th145",
	"breakpoints": {
		"th135_file_header": {
			"file_hash": "[eax]",
			"file_size": "[eax+12]",
			"file_key": "edi",
			"cavesize": 5
		},
		"th135_file_name": {
			"file_name": "esi",
			"cavesize": 6
		},
		"th135_read_file#prepare": {
			"cavesize": 5,
			"hash": "[esi+65564]"
		},
		"th135_read_file": {
			"cavesize": 6,
			"apply": true
		},
		"detour_plugin": {
			"cavesize": 5,
			"plugin": "eax"
		}
	}
}
