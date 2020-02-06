{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x44116B",
			"code": "00",
			"expected": "FF"
		},
		"Main/Infinite bombs": {
			"addr": "0x440BC7",
			"code": "00",
			"expected": "FF"
		},
		"Main/Invincible#1": {
			"addr": "0x43E37F",
			"code": "00",
			"expected": "07",
			"ignore": false
		},
		"Main/Invincible#2": {
			"addr": "0x43EB6A",
			"code": "00",
			"expected": "04",
			"ignore": false
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x42BEF6",
			"code": "00B8F05F3601",
			"expected": "4CA178626200"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x42BF00",
			"code": "EC",
			"expected": "FC"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x42BF15",
			"code": "2EEB29",
			"expected": "D945E4"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#4": {
			"addr": "0x42E70B",
			"code": "B9F05F360133C0EB1E",
			"expected": "A17862620083C01050"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#5": {
			"addr": "0x43EE0E",
			"code": "8005FC5F360101",
			"expected": "C6820824000002"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x42F02B",
			"code": "EB16",
			"expected": "742D"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x440DD3",
			"code": "00",
			"expected": "F0"
		},
		"Main/Auto-bomb#1": {
			"addr": "0x440B8E",
			"code": "54",
			"expected": "50"
		},
		"Main/Auto-bomb#2": {
			"addr": "0x440D2C",
			"code": "FF",
			"expected": "8B"
		},
		"Main/Auto-bomb#3": {
			"addr": "0x440D35",
			"code": "66C7054C9E4B0002",
			"expected": "8B55E0898AF82300"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x417726",
			"code": "EB",
			"expected": "75",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x421F91",
			"code": "EB",
			"expected": "75",
			"ignore": true
		},
		"Main/PoC even if not on Max Power": {
			"addr": "0x432C63",
			"code": "EB",
			"expected": "74"
		},
		"Main/Auto-collect items(always)": {
			"addr": "0x432C84",
			"code": "0FBE15E5FE4B0083FA017500"
		},
		"Main/Auto-collect items(only at focused)": {
			"addr": "0x432C84",
			"code": "B8E5FE4B008A100250FE747A",
			"ignore": true
		},
		"Main/Max cherry plus at start#1": {
			"addr": "0x0042E9A5",
			"code": "E9 94E30500 90"
		},
		"Main/Max cherry plus at start#2": {
			"addr": "0x0048CD3E",
			"code": "05 46C3 0000"
		},
		"Main/Max cherry plus at start#3": {
			"addr": "0x0048CD43",
			"code": "8981 20960000"
		},
		"Main/Max cherry plus at start#4": {
			"addr": "0x0048CD49",
			"code": "E9 5D1CFAFF"
		},
		"Main/Don't increase cherry plus#1": {
			"addr": "0x0042F60B",
			"code": "E9 3ED70500 90",
			"ignore": true
		},
		"Main/Don't increase cherry plus#2": {
			"addr": "0x0048CD4E",
			"code": "05 0000 0000",
			"title": "If you want to increase max amount(50,000), write [05 50C3 0000]."
		},
		"Main/Don't increase cherry plus#3": {
			"addr": "0x0048CD53",
			"code": "8B4D F8"
		},
		"Main/Don't increase cherry plus#4": {
			"addr": "0x0048CD56",
			"code": "E9 B628FAFF"
		}
	}
}
