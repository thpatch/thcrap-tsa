{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x443D39",
			"code": "90",
			"expected": "48"
		},
		"Main/Infinite bombs": {
			"addr": "0x40DB83",
			"code": "909090",
			"expected": "83E801"
		},
		"Main/Invincible": {
			"addr": "0x443F10",
			"code": "C3",
			"expected": "55"
		},
		"Main/Power Settings/Max Power": {
			"addr": "0x42CE29",
			"code": "E8"
		},
		"Main/Power doesn't decrease on death": {
			"addr": "0x44273D",
			"code": "C0"
		},		
		"Main/Season/Start with full gauge(Stage 1, Extra stage)": {
			"addr": "0x42CECC",
			"code": "7404"
		},
		"Main/Season/Start with full gauge(rest of the stages)#1": {
			"addr": "0x42CEFD",
			"code": "E9 D8DD0500 90"
		},
		"Main/Season/Start with full gauge(rest of the stages)#2": {
			"addr": "0x48ACDA",
			"code": "C705 08584A00 74040000 E9 1A22FAFF"
		},
		"Main/Season/Keep maxed(spring, autumn, winter)": {
			"addr": "0x40DCAE",
			"code": "7404"
		},
		"Main/Season/Keep maxed(summer, dog days)": {
			"addr": "0x40DCBD",
			"code": "83E8 00 90 90 90 90"
		},
		"Main/Auto-bomb": {
			"addr": "0x4427A1",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x417965",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x41D4EF",
			"code": "058D",
			"expected": "9D8C",
			"ignore": true
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x42FF1D",
			"code": "7500"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x42FF1D",
			"code": "7475",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x42FF1D",
			"code": "7575",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x42FF2B","0x42FF38","0x42FF41","0x42FF4A"],
			"code": "00"
		}
	}
}
