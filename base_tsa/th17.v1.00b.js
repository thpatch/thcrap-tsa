{
	"binhacks": {
		"sprintf_msvcrt14_esp+34": {
			"addr": [
				"Rx75039",
				"Rx75159"
			]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx752c9"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"addr": "Rx082cf"
		},
		"sprintf_rep": {
			"addr": [
				"Rx082dd",
				"Rx750d6",
				"Rx750e7",
				"Rx751a4",
				"Rx75247",
				"Rx75258",
				"Rx75314",
				"Rx7539d"
			]
		},
		"spell_align": {
			"code": "ff7518 56 e8[GetTextExtentForFontID] 83c008 d1e0 89c6 8b442410 8b4c240c 8b542414 8b4c8808 8bc1 c1f808 8b948200018601 0fb6c1 8d0c40 8b8224010000 8b0cc8 8b451c 8d1400 89f0 8b742410 909090",
			"addr": "Rx751b0"
		},
		"spell_align_result": {
			"addr": "Rx75381"
		},
		"music_title_prepare": {
			"code": "8b542418 52 31c0 50 50 50 a1 209a50000",
			"addr": "Rx5a71f"
		},
		"th17_textbox_size": {
			"addr": [ "Rx2dcb8", "Rx2df42" ]
		},
		"center_align": {
			"code":"ff751856e8[GetTextExtentForFontID]89c69090909090909090908b4424188b4c24148b5424108b4c88088bc1c1f8088b9482000186010fb6c18d0c408b82240100008b5424188b04c8894424108b451c03c089f18944241c8b442414",
			"addr": "Rx75320"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx0215c"
		},
		"file_load": {
			"addr": "Rx02194"
		},
		"file_loaded": {
			"addr": "Rx5e238"
		},
		"spell_id": {
			"cavesize": "8",
			"addr": "Rx2519a"
		},
		"spell_id#real": {
			"cavesize": "9",
			"addr": "Rx1ad24"
		},
		"spell_name": {
			"spell_name": "esi",
			"addr": "Rx1af30"
		},
		"spell_id#result": {
			"addr": "Rx5894d"
		},
		"spell_name#result": {
			"addr": "Rx58a87"
		},
		"spell_name#practice": {
			"addr": "Rx5c1ce"
		},
		"music_title": {
			"addr": "Rx5a723"
		},
		"music_cmt": {
			"addr": [ 
				"Rx5a969", 
				"Rx5aa34"
			],
			"line_num": "[edi+0x804]",
			"track": "[edi+0x808]"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5dc92",
			"ids": "esi",
			"str": "eax",
			"cavesize": 5,
			"cave_exec": false
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx5d0e1"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5df4b",
			"ids": [ "[ebp-4]", 1 ]
		}
	},
	"tsa_font_block": {
		"addr": "Rx12a334"
	}
}
