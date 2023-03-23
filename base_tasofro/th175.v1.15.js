{
	binhacks: {
		ret: {
			addr: [
				"RxDEE0",
				"RxF730"
			]
		},
		remove_fullscreen: {
			addr: "Rx4730"
		},
        // TODO: check if this is needed in v1.14
		/*remove_cleanup: {
			code: "9090 9090 90 9090",
			addr: "Rx14219",
			title: "Remove a bugged cleanup function"
			// This cleanup function tend to crash a lot when we close the game,
			// and, well, it's only called when the game exits, so we don't care
			// if it doesn't free some resources before the OS frees the entire process.
		}*/
	},
	breakpoints: {
		th175_open_file: {
			addr: "Rx1A925",
			file_name: "[ebp+0x08]"
		},
		th175_prepareReadFile: {
			addr: "Rx24F12"
		},
		th175_replaceReadFile: {
			addr: "Rx1ED6C"
		},
		th175_close_file: {
			addr: "Rx25100"
		},
		/*
		 * Not used (yet)
		detour_plugin: {
			cavesize: 6,
			plugin: "eax",
			addr: "TODO"
		}
		*/
	}
}