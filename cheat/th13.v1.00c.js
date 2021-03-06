{
	"binhacks": {
		"Main/Infinite lives#1": {
			"addr": "0x444A23",
			"code": "36",
			"expected": "2E"
		},
		"Main/Infinite lives#2": {
			"addr": "0x444A31",
			"code": "28",
			"expected": "20"
		},
		"Main/Infinite lives#3": {
			"addr": "0x444A42",
			"code": "17",
			"expected": "0F"
		},
		"Main/Infinite bombs": {
			"addr": "0x40A402",
			"code": "6690",
			"expected": "2BC7"
		},
		"Main/Invincible": {
			"addr": "0x444CA0",
			"code": "C3",
			"expected": "55",
			"ignore": true
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#1": {
			"addr": "0x427D47",
			"code": "F06F4E",
			"expected": "10E84B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#2": {
			"addr": "0x42BB3E",
			"code": "14890DF06F4E",
			"expected": "18890D10E84B"
		},
		"Main/Invincible (with hit sound) + HiScore as hit counter#3": {
			"addr": "0x444D75",
			"code": "8105F06F4E0001",
			"expected": "C7875C06000004"
		},
		"Main/Power settings/Max Power": {
			"addr": "0x42BC5F",
			"code": "EC",
			"expected": "F0"
		},
		"Main/Power settings/Doesn't decrease on death": {
			"addr": "0x445A2D",
			"code": "E8",
			"expected": "F0"
		},
		"Main/Auto-bomb": {
			"addr": "0x443525",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x412D36",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x41AABF",
			"code": "0F1F440000",
			"expected": "E83C69FEFF",
			"ignore": true
		},
		"Main/Auto-collect spirit items": {
			"addr": "0x438893",
			"code": "00",
			"expected": "0D"
		},
		"Main/Trance/Start with full gauge": {
			"addr": "0x42D407",
			"code": "5802",
			"expected": "C800"
		},
		"Main/Trance/Keep maxed": {
			"addr": "0x405CDB",
			"code": "C70508E84B0058020000751A",
			"expected": "7524812D08E84B00C8000000"
		},
		"Main/Trance/Freeze timer": {
			"addr": "0x43D507",
			"code": "6690",
			"expected": "FF0E"
		},
		"Main/Trance/Doesn't decrease on death": {
			"addr": "0x4435D9",
			"code": "660F1F4400",
			"expected": "891D08E84B"
		},
		"Main/Auto-collect items#1(always)": {
			"addr": "0x42EC03",
			"code": "00"
		},
		"Main/Auto-collect items#1(only at focused)": {
			"addr": "0x42EC02",
			"code": "746D",
			"ignore": true
		},
		"Main/Auto-collect items#1(only at unfocused)": {
			"addr": "0x42EC02",
			"code": "756D",
			"ignore": true
		},
		"Main/Auto-collect items#2": {
			"addr": ["0x42EC14","0x42EC25","0x42EC36","0x42EC45"],
			"code": "00"
		}
	}
}
