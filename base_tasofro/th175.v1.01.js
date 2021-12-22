{
	binhacks: {
		ret: {
			addr: [
				"RxDF10",
				"RxF470"
			]
		},
		remove_fullscreen: {
			addr: "Rx4590"
		},
		remove_cleanup: {
			code: "9090 9090 90 9090",
			addr: "Rx14219",
			title: "Remove a bugged cleanup function"
			// This cleanup function tend to crash a lot when we close the game,
			// and, well, it's only called when the game exits, so we don't care
			// if it doesn't free some resources before the OS frees the entire process.
		}
	},
	"breakpoints": {		
		"th175_open_file": {
			"addr": "Rx19177"
		},
		"th175_prepareReadFile": {
			"addr": "Rx1b572"
		},
		"th175_replaceReadFile": {
			"addr": "Rx19ccc"
		},
		"th175_close_file": {
			"addr": "Rx1b760"
		},
		/*
		 * Not used (yet)
		detour_plugin: {
			cavesize: 6,
			plugin: "eax",
			addr: "Rx141dc"
		}
		*/
	}
}