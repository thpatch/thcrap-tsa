{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x4381E7",
			"code": "660F1F4400",
			"expected": "291D980C4B"
		},
		"Main/Infinite bombs": {
			"addr": "0x422F27",
			"code": "00",
			"expected": "01"
		},
		"Main/Invincible": {
			"addr": "0x438370",
			"code": "C3",
			"expected": "83",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x41F4A7",
			"code": "00A1F06F4D",
			"expected": "0DA1400C4B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x41F515",
			"code": "8800000000",
			"expected": "0C808D0C4A"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x421DC6",
			"code": "148915F06F4D",
			"expected": "188915400C4B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x438379",
			"code": "8105F06F4D0001",
			"expected": "C786280A000004"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter/Do not erase enemy bullets": {
			"addr": "0x436D2F"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x421EB2",
			"code": "D0",
			"expected": "B0"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x43944B",
			"code": "48",
			"expected": "D4"
		},
		"Main/Power settings/Max Power#2": {
			"addr": "0x421EB9",
			"code": "EB65",
			"expected": "7E4D"
		},
		"Main/Auto-bomb": {
			"addr": "0x436D9B",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x40DB71",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x414A9B",
			"code": "90",
			"expected": "42",
			"ignore": true
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x426E55",
			"code": "00"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x426E54",
			"code": "746D",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x426E54",
			"code": "756D",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x426E66","0x426E77","0x426E88","0x426E97"],
			"code": "00"
		}
	}
}
