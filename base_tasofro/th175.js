{
	title: "東方剛欲異聞 ~ 水没した沈愁地獄",
	url_trial: "http://www.tasofro.net/touhou175/index.html",
	latest: "v1.01",
	breakpoints: {
		"th135_file_name#eax": {
			// Thcrap don't need the file names, but 3rd party extractors do need them.
			// You can enable this breakpoint and enable dat_dump if you want thcrap to
			// dump a files list for you.
			ignore: true,
			file_name: "eax",
			cavesize: 5
		},
		"th135_file_name#esi": {
			// Same as above
			ignore: true,
			file_name: "esi",
			cavesize: 5
		},
		th175_open_file: {
			file_name: "[ebp+0x0c]",
			file_reader: "eax",
			cavesize: 6
		},
		th175_replaceReadFile: {
			file_handle: "esi",
			cavesize: 6
		},
		th175_close_file: {
			file_reader: "ecx",
			cavesize: 5
		},
		detour_plugin: {
			cavesize: 7,
			plugin: "edi"
		}
	}
}
