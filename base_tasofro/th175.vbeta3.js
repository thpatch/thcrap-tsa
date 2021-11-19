{
	binhacks: {
		ret: {
			addr: [
				"Rx1B70",
				"Rx3570"
			]
		}
	},
	breakpoints: {
		"th135_file_name#eax": {
			addr: "Rx175C3"
		},
		"th135_file_name#esi": {
			addr: [
				"Rx8967",
				"Rx2659D"
			]
		},
		th175_open_file: {
			addr: "Rx17181"
		},
		th175_replaceReadFile: {
			file_handle: "esi",
			addr: "Rx16994"
		},
		th175_close_file: {
			addr: "Rx17E30"
		},
		detour_plugin: {
			addr: "Rx13096"
		}
	}
}