{
	binhacks: {
		reverse_character_bytes: {
			code: "72198b0b0fc96a045b29c3740cc1e9084b75fa909090909090",
			title: "Correctly reverses the bytes of the character in [ebx], without assuming a 2-bytes character."
		}
	},
	title: "東方深秘録 ~ Urban Legend in Limbo",
	url_trial: "http://tasofro.net/arc/th145_trial.zip",
	latest: "v1.41",
	breakpoints: {
		th135_file_name: {
			file_name: "esi",
			cavesize: 6,
			ignore: true
		},
		th145_openFile: {
			filename: "[ebp+8]",
			reader: "esi",
			cavesize: 10
		},
		th135_replaceReadFile: {
			cavesize: 6
		},
		detour_plugin: {
			cavesize: 5,
			plugin: "eax"
		}
	}
}
