{
	"binhacks": {
		"mov_char_to_eax": {
			"addr": "Rx129B3"
		},
		ret: {
			// At a first glance, the code at this address looks like some
			// anti-tampering code? At least it calls IsDebuggerPresent.
			// And it tends to crash the game when thcrap is loaded, so
			// let's just ignore it.
			addr: "Rx41FF4C"
		}
	},
	"breakpoints": {
		"th105_open_file": {
			"addr": "RxD211"
		},
		"th105_open_file#file_size": {
			"addr": "RxD238"
		},
		"nsml_read_file": {
			"comment": "deprecated",
			"addr": "Rx1C223"
		},
		"fragmented_close_file": {
			"comment": "deprecated",
			"addr": "RxD193"
		},
		"th105_replaceReadFile": {
			"addr": "Rx1C223"
		},
		"th105_close_file": {
			"addr": "RxD193"
		},
		"th105_fix_csv_parser": {
			"addr": "RxF4AA"
		},
		"th105_cv0_escape_comma": {
			"addr": "Rx42112A"
		},
		strings_lookup: {
			addr: "Rx12923"
		},
	}
}
