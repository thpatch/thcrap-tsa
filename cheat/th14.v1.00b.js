{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x44F617",
			"code": "90",
			"expected": "48"
		},
		"Main/Infinite bombs": {
			"addr": "0x412173",
			"code": "90",
			"expected": "48"
		},
		"Main/Invincible": {
			"addr": "0x44F7A0",
			"code": "C3",
			"expected": "55",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x43147C",
			"code": "F0EF",
			"expected": "9858"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x435C6B",
			"code": "14A3F0EF",
			"expected": "18A39858"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x44F871",
			"code": "8105F0EF4F0001",
			"expected": "C7878406000004"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x435DB0",
			"code": "5C",
			"expected": "60"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x44DDA5",
			"code": "58",
			"expected": "60"
		},
		"Main/Auto-bomb": {
			"addr": "0x44DEC4",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x41C5DD",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x424ACA",
			"code": "90",
			"expected": "40",
			"ignore": true
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x438C3A",
			"code": "7500"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x438C3A",
			"code": "7466",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x438C3A",
			"code": "7566",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x438C48","0x438C55","0x438C5E","0x438C67"],
			"code": "00"
		}
	}
}
