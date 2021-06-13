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
			addr: "Rx032cee"
		},
		th145_openFile: {
			addr: "Rx023f2a"
		},
		th135_replaceReadFile: {
			addr: [
				"Rx02df11",
				"Rx02df5d"
			]
		},
		detour_plugin: {
			addr: "Rx127aef"
		}
	}
}
