{
	"binhacks": {
		"force_jump": {
			"addr": [
				"Rx11EE42",
				"Rx11EE94",
				"Rx11F740",
				"Rx11F7C1",
				"Rx11F7E1",
				"Rx11FB11",
				"Rx11FC1B",
				"Rx11FC44",
				"Rx1206A6",
				"Rx12070D",
				"Rx120759",
				"Rx1207BB"
			]
		},
		"nop_long_je": {
			"addr": "Rx11F073"
		},
		"nop_jump": {
			"addr": [
				"Rx11F737",
				"Rx11FC3B",
				"Rx120693",
				"Rx120788"
			]
		},
		"nop_long_jump": {
			"addr": [
				"Rx11F775",
				"Rx0103A7",
				"Rx022139"
			]
		},
		"nop_CreateProcess": {
			"addr": "Rx11FBC7"
		},
		"nop_AddAccessDeniedAce": {
			"addr": "Rx11DA3D"
		}
	},
	"breakpoints": {
		"file_header": {
			"addr": "Rx02A348",
			"struct": "ebp",
			"struct_offset": -72
		},
		"replace_file#prepare": {
			"addr": "Rx032B77",
			"cavesize": 6
		},
		"replace_file": {
			"addr": [
				"Rx032401",
				"Rx03239C"
			]
		},
		"detour_plugin": {
			"addr": "Rx1166BF"
		}
	}
}
