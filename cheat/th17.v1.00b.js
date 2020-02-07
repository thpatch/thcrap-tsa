{
	"binhacks": {
		"Main/Infinite lives": {
			"addr": "0x44921A",
			"code": "90",
			"expected": "49"
		},
		"Main/Infinite bombs": {
			"addr": "0x411C96",
			"code": "909090",
			"expected": "83C0FF"
		},
		"Main/Invincible": {
			"addr": "0x449420",
			"code": "C3",
			"expected": "55"
		},
		"Main/Power Settings/Max Power": {
			"addr": "0x4304BC",
			"code": "34"
		},
		"Main/Power doesn't decrease on death": {
			"addr": "0x447B9D",
			"code": "C0"
		},
		"Main/Roaring/Freeze Timer#1-1": {
			"addr": "0x40EE79",
			"code": "E9 4EB00800"
		},
		"Main/Roaring/Freeze Timer#1-2": {
			"addr": "0x499ECC",
			"code": "A3 08594B00",
			"comment": "Save current status."
		},		
		"Main/Roaring/Freeze Timer#1-3": {
			"addr": "0x499ED1",
			"code": "A1 4CEA4A00"
		},
		"Main/Roaring/Freeze Timer#1-4": {
			"addr": "0x499ED6",
			"code": "E9 A34FF7FF"
		},
		"Main/Roaring/Freeze Timer#2-1": {
			"addr": "0x40EF1D",
			"code": "E9 B9AF0800"
		},
		"Main/Roaring/Freeze Timer#2-2": {
			"addr": "0x499EDB",
			"code": "803D 08594B00 06",
			"comment": "Check saved status.(0x2: normal, 0x6: Press X, 0xE: Hit by bullet)"
		},
		"Main/Roaring/Freeze Timer#2-3": {
			"addr": "0x499EE2",
			"code": "74 09"
		},
		"Main/Roaring/Freeze Timer#2-4": {
			"addr": "0x499EE4",
			"code": "803D 08594B00 0E"
		},
		"Main/Roaring/Freeze Timer#2-5": {
			"addr": "0x499EEB",
			"code": "75 04"
		},
		"Main/Roaring/Freeze Timer#2-6": {
			"addr": "0x499EED",
			"code": "66 0FEFC0"
		},
		"Main/Roaring/Freeze Timer#2-7": {
			"addr": "0x499EF1",
			"code": "8B35 D0774B00"
		},
		"Main/Roaring/Freeze Timer#2-8": {
			"addr": "0x499EF7",
			"code": "E9 2B50F7FF"
		},
		"Main/Roaring/Doesn't decrease on shooting#1": {
			"addr": "0x411267",
			"code": "E9 4E8C0800"
		},
		"Main/Roaring/Doesn't decrease on shooting#2": {
			"addr": "0x499EBA",
			"code": "81F9 A45A4B00",
			"comment": "At roaring mode, ECX is 0x4B5AA4."
		},
		"Main/Roaring/Doesn't decrease on shooting#3": {
			"addr": "0x499EC0",
			"code": "74 05"
		},
		"Main/Roaring/Doesn't decrease on shooting#4": {
			"addr": "0x499EC2",
			"code": "F3 0F1149 08"
		},
		"Main/Roaring/Doesn't decrease on shooting#5": {
			"addr": "0x499EC7",
			"code": "E9 A073F7FF"
		},
		"Main/Auto-bomb": {
			"addr": "0x447C19",
			"code": "C6",
			"expected": "F6"
		},
		"Main/Boss timer freeze#1": {
			"addr": "0x41A8CF",
			"code": "EB",
			"expected": "7C",
			"ignore": true
		},
		"Main/Boss timer freeze#2": {
			"addr": "0x420A1F",
			"code": "524E",
			"expected": "ED4D",
			"ignore": true
		},
		"Main/Auto-collect items": {
			"addr": "0x4335B1",
			"code": "E9 540200",
			"expected": "0F855302"
		},
		"Main/Max Graze": {
			"addr": "0x43029F",
			"code": "FFE0F505",
			"ignore": true
		},
		"Main/Max Point item#1": {
			"addr": "0x430400",
			"code": "E9 F79A0600"
		},
		"Main/Max Point item#2": {
			"addr": "0x499EFC",
			"code": "A1 2C5A4B00"
		},
		"Main/Max Point item#3": {
			"addr": "0x499F01",
			"code": "A3 245A4B00"
		},
		"Main/Max Point item#4": {
			"addr": "0x499F06",
			"code": "E9 FE64F9FF"
		}
	}
}
