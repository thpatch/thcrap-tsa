{
	binhacks: {
		reverse_character_bytes: {
			code: "721b8b0e0fc9536a045b29c3c1e9084b75fa87c85b909090909090",
			title: "Correctly reverses the bytes of the character in [esi], without assuming a 2-bytes character."
		},
		replace_GetFullPathName: {
			code: "89d98a108811404184d275f690909090909090",
			title: "Replace a GetFullPathName call with a strcpy"
		}
	},
	title: "東方心綺楼 ~ Hopeless Masquerade",
	url_trial: "http://s1.gptwm.com/tasofro/touhou135/th135_trial_web.zip",
	latest: "v1.34b",
	breakpoints: {
		th135_file_name: {
			file_name: "ecx",
			cavesize: 5,
			ignore: true
		},
		"th135_openFile#filename": {
			filename: "[ebp+8]",
			cavesize: 5
		},
		th135_openFile: {
			reader: "esi",
			cavesize: 6
		},
		th135_replaceReadFile: {
			cavesize: 6
		}
	}
}
