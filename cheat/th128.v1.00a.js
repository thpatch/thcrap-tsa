{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x43CDD9",
			"code": "00000000",
			"expected": "F0D8FFFF"
		},
		"Main/Infinite bombs#1": {
			"addr": "0x43B7D7",
			"code": "00000000",
			"expected": "F0D8FFFF"
		},
		"Main/Infinite bombs#2": {
			"addr": "0x43B90D",
			"code": "00000000",
			"expected": "F0D8FFFF"
		},
		"Main/Invincible": {
			"addr": "0x43D0C0",
			"code": "C20400",
			"expected": "558BEC",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x4229A3",
			"code": "F0CF4D",
			"expected": "C04C4B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x4229B3",
			"code": "88000000008D45EC",
			"expected": "14808D45EC8D0C51"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x425F55",
			"code": "148915F0CF4D",
			"expected": "188915C04C4B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x43D0CF",
			"code": "8105F0CF4D0001",
			"expected": "C780780F000004"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter/Do not erase enemy bullets": {
			"addr": "0x43B7FA"
		},
		"Main/Power Settings/Max Power#1": {
			"addr": "0x4271DC",
			"code": "6A",
			"expected": "03"
		},
		"Main/Power Settings/Max Power#2": {
			"addr": "0x427249",
			"code": "0F",
			"expected": "01"
		},
		"Main/Auto-bomb#1": {
			"addr": "0x43B8E8",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Auto-bomb#2": {
			"addr": "0x43B8F1",
			"code": "00",
			"expected": "F9"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x40D888",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x417307",
			"code": "90",
			"expected": "42",
			"ignore": true
		},
		"Main/Charge rate is always 100%": {
			"addr": "0x41F429",
			"code": "00",
			"expected": "0A"
		},
		"Main/Max Motivation": {
			"addr": "0x425FFF",
			"code": "A08601",
			"expected": "204E00"
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x428F45",
			"code": "00"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x428F44",
			"code": "746D",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x428F44",
			"code": "756D",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x428F56","0x428F67","0x428F78","0x428F87"],
			"code": "00"
		}
	}
}
