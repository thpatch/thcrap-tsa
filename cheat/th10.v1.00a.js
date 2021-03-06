{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x426A15",
			"code": "90",
			"expected": "49"
		},
		"Main/Infinite bombs": {
			"addr": "0x4259DB",
			"code": "00",
			"expected": "EC"
		},
		"Main/Infinite deathbombs": {
			"addr": "0x425C4A",
			"code": "00",
			"expected": "EC"
		},
		"Main/Invincible": {
			"addr": "0x426CF0",
			"code": "C20400",
			"expected": "83EC14",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x41718A",
			"code": "F09F49",
			"expected": "404C47"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x41790F",
			"code": "14",
			"expected": "18"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x417914",
			"code": "F09F49",
			"expected": "404C47"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x426CFF",
			"code": "8105F09F490001",
			"expected": "C7855804000004"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter/Do not erase enemy bullets": {
			"addr": "0x425A2B"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x417984",
			"code": "B864000000",
			"expected": "1BC083E050"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x425ABD",
			"code": "00",
			"expected": "C0"
		},
		"Main/Auto-bomb": {
			"addr": "0x425C13",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x408D93",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x40E5B0",
			"code": "90",
			"expected": "42",
			"ignore": true
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x41B79F",
			"code": "00"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x41B79E",
			"code": "745D",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x41B79E",
			"code": "755D",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x41B7B0","0x41B7C1","0x41B7D2","0x41B7E3"],
			"code": "00"
		}
	}
}
