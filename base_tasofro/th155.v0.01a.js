{
	"binhacks": {
		"nop_jump": {
			"addr": [
				"Rx11A91F",
				"Rx11CC9C",
				"Rx11D717",
				"Rx11D81A"
			]
		},
		"force_jump": {
			"addr": [
				"Rx11B48B",
				"Rx11C828",
				"Rx11CC7C",
				"Rx11D72B",
				"Rx11D79F",
				"Rx11D7EB"
			]
		},
		"fix_enum_modules": {
			"addr": "Rx11B339",
			"code": "8D8D48E4FFFF51908B8D48E4FFFF5150",
			"title": "Fixes an exception by giving EnumProcessModules its mandatory 4rd parameter"
		},
		"nop_CreateProcess": {
			"addr": "Rx11CC2E"
		}
	},
	"breakpoints": {
		"file_header": {
			"addr": "Rx025c08"
		},
		"replace_file#prepare_variable_size": {
			"addr": "Rx02dcb9"
		},
		"replace_file#variable_size": {
			"addr": "Rx02dcc7"
		},
		"replace_file#fixed_size": {
			"addr": "Rx02dd13"
		}
	}
}
