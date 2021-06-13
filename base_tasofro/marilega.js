{
	title: "マリサランド・レガシィ",
	url_trial: "http://tasofro.net/arc/th155_trial.zip",
	latest: "v1.10",
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
		}
	}
}
