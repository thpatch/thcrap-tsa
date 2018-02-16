{
	"binhacks": {
		"Main/Revive on hit#1": {
			"addr": "0x430026",
			"code": "75168B0D98DD4B00E87D81FDFF8B0DE0454C00E8D2DFFEFFE942FFFFFF909090909090909090",
			"expected": "7424A1C8DE4B008B88FC00000083C9208B15C8DE4B00898AFC000000C705D8DE4B000000803F"
		},
		"Main/Revive on hit#2": {
			"addr": "0x43011D",
			"code": "EB",
			"expected": "75"
		},
		"Main/Revive on hit#3": {
			"addr": "0x4307BB",
			"code": "80",
			"expected": "00"
		},
		"Main/Invincible#1": {
			"addr": "0x4304F4",
			"code": "00",
			"expected": "04",
			"ignore": true
		},
		"Main/Invincible#2": {
			"addr": "0x430691",
			"code": "00",
			"expected": "04",
			"ignore": true
		},
		"Main/Invincible (with hit sound)#1": {
			"addr": "0x4306DE",
			"code": "01",
			"expected": "02"
		},
		"Main/Invincible (with hit sound)#2": {
			"addr": "0x4307BB",
			"code": "80",
			"expected": "00"
		},
		"Main/Charge rate is always 100%": {
			"addr": "0x433EE2",
			"code": "00",
			"expected": "0D"
		},
		"Main/Boss timer freeze": {
			"addr": "0x418317",
			"code": "2EE9",
			"expected": "0F84"
		}
	}
}
