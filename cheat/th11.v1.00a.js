{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x4327EC",
			"code": "90",
			"expected": "4A"
		},
		"Main/Invincible": {
			"addr": "0x432A90",
			"code": "C3",
			"expected": "83",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x41CB0B",
			"code": "00A1F0AF4C",
			"expected": "0DA1E0564A"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x41CB67",
			"code": "00685C",
			"expected": "076870"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x41F9CB",
			"code": "148915F0AF4C",
			"expected": "188915E0564A"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x432A9E",
			"code": "8105F0AF4C0001",
			"expected": "C7872809000004"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter/Do not erase enemy bullets": {
			"addr": "0x431205"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x41FA93",
			"code": "00",
			"expected": "05"
		},
		"Main/Auto-bomb": {
			"addr": "0x431279",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x40C0DD",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x41278C",
			"code": "90",
			"expected": "42",
			"ignore": true
		},
		"Main/Auto-collect items": {
			"addr": "0x420B34",
			"code": "00",
			"expected": "03"
		}
	}
}
