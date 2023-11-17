{
	binhacks: {
		ret: {
			addr: [
				"Rx12e820",
				"Rx130630",
				"Rx132af0"
			]
		}
	},
	pl_parsing_strict_eol: true,
	subtitles_support: true,
	breakpoints: {
		th135_file_name: {
			addr: "Rx032d8e"
		},
		th145_openFile: {
			addr: "Rx023faa"
		},
		th135_replaceReadFile: {
			addr: [
				"Rx02dfa1",
				"Rx02dfed"
			]
		},
		detour_plugin: {
			addr: "Rx127aef"
		}
	}
}
