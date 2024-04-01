{
	"binhacks": {
		"mov_char_to_eax": {
			"addr": "Rx12713"
		},
		ret: {
			// At a first glance, the code at this address looks like some
			// anti-tampering code? At least it calls IsDebuggerPresent.
			// And it tends to crash the game when thcrap is loaded, so
			// let's just ignore it.
			addr: "Rx28A11F"
		}
	},
	"breakpoints": {
		"th105_open_file": {
			"addr": "RxCF71"
		},
		"th105_open_file#file_size": {
			"addr": "RxCF98"
		},
		"nsml_read_file": {
			"comment": "deprecated",
			"addr": "Rx1C143"
		},
		"fragmented_close_file": {
			"comment": "deprecated",
			"addr": "Rx1B893"
		},
		"th105_replaceReadFile": {
			"addr": "Rx1C143"
		},
		"th105_close_file": {
			"addr": "Rx1B893"
		},
		"th105_fix_csv_parser": {
			"addr": "RxF28A"
		},
		"th105_cv0_escape_comma": {
			"addr": "Rx28B267"
		},
		strings_lookup: {
			addr: "Rx12683"
		},
	}
}
