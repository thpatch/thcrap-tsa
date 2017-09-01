{
	"binhacks": {
		"reverse_character_bytes": {
			"code": "721b8b0e0fc9536a045b29c3c1e9084b75fa87c85b909090909090",
			"title": "Correctly reverses the bytes of the character in [esi], without assuming a 2-bytes character."
		}
	},
	"title": "東方心綺楼　～ Hopeless Masquerade",
	"url_trial": "http://s1.gptwm.com/tasofro/touhou135/th135_trial_web.zip",
	"latest": "v1.34b",
	"crypt": "th135",
	"breakpoints": {
		"file_header": {
			"struct": "eax",
			"key_offset": 16,
			"cavesize": 5
		},
		"replace_file#prepare": {
			"cavesize": 6,
			"buffer": "edx",
			"size": "ecx",
			"pNumberOfBytesRead": "eax"
		},
		"replace_file#variable_size": {
			"cavesize": 5,
			"file_struct": "esi",
			"buffer_offset": 4,
			"hFile_offset": 65548,
			"hash_offset": 65564
		},
		"replace_file#fixed_size": {
			"cavesize": 9,
			"file_struct": "esi",
			"buffer_offset": 4,
			"hFile_offset": 65548,
			"hash_offset": 65564
		}
	}
}
