{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x428DDC",
			"code": "15",
			"expected": "09"
		},
		"Main/Infinite bombs": {
			"addr": "0x4289E3",
			"code": "00",
			"expected": "01"
		},
		"Main/Invincible#1": {
			"addr": "0x426DD5",
			"code": "00",
			"expected": "07"
		},
		"Main/Invincible#2": {
			"addr": "0x427611",
			"code": "00",
			"expected": "04"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x41ABCF",
			"code": "F07F6E006868",
			"expected": "ACBC69006824"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x4277BC",
			"code": "8305F07F6E0001",
			"expected": "C682E009000002"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x41BCFE",
			"code": "33C0EB0D",
			"expected": "8D044150"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x41BD10",
			"code": "F07F6E",
			"expected": "ACBC69"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x41BBE2",
			"code": "3EC6801018000080",
			"expected": "6683A01018000000"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x428B7D",
			"code": "00",
			"expected": "10"
		},
		"Main/Auto-bomb#1": {
			"addr": "0x428989",
			"code": "EB1D",
			"expected": "33C0"
		},
		"Main/Auto-bomb#2": {
			"addr": "0x4289B4",
			"code": "85D2",
			"expected": "3BCA"
		},
		"Main/Auto-bomb#3": {
			"addr": "0x428A94",
			"code": "FF89",
			"expected": "8B91"
		},
		"Main/Auto-bomb#4": {
			"addr": "0x428A9D",
			"code": "66C70504D9690002",
			"expected": "8B45088990D80900"
		},
		"Main/Boss timer freeze": {
			"addr": "0x412DD1",
			"code": "EB",
			"expected": "75",
			"ignore": true
		},
		"Main/PoC even if not on Max Power": {
			"addr": "0x41F71D",
			"code": "00",
			"expected": "6A"
		},
		"Main/Auto-collect items(always)": {
			"addr": "0x41F6FE",
			"code": "8B55EC0FBE824301000083F801EB"
		},
		"Main/Auto-collect items(only at focused)": {
			"addr": "0x41F6FE",
			"code": "83F801742E3E803D0BB06C000174",
			"ignore": true
		},
		"Main/Carry over/Graze": {
			"addr": "0x41BE27",
			"code": "48",
			"expected": "60"
		},
		"Main/Carry over/Score items": {
			"addr": "0x41BE1D",
			"code": "88",
			"expected": "A0"
		},
		"Main/Remove Graze cap": {
			"addr": "0x427648",
			"code": "3F420F",
			"expected": "0F2700"
		}
	}
}
