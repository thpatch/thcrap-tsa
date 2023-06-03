{
	"steam_appid": "2400360",
	"breakpoints": {
		"file_size": {
			"addr": "Rx1a6c",
			"file_name": "ebx",
		},
		"file_load": {
			"addr": "Rx1aa4",
			"file_buffer": "edi",
		},
		"file_loaded": {
			"addr": "Rx733db"
		},
		"music_title": {
			"addr": "Rx70576",
			"track": "[ebp-0x24]",
			"str": "eax",
		},
		"music_cmt": {
			"str": "edx",
			"line_num": "[eax+0xA40]",
			"track": "[eax+0xA44]",
			"addr": [ "Rx70755", "Rx70879" ]
		},
		"spell_id": {
			"separator": "+",
			"spell_id": [
				{   // Character ID
					"type": "u32",
					"param": "[Rxd2814 - (((ecx - Rxd49c0) / 0x3c) * 0x98)]",
				},
				{   // Subroutine name
					"type": "s",
					"param": "[[[[[[edi+0x55C8]+0xC]+0x1018]+0x1218]+0x20c]+[[[edi+0x55C8]+0xC]+0x4]*8]",
				},
				{   // Difficulty
					"type": "u32",
					"param": "[RxCB6BC]",
					"count_down": true
				},
			],
			"addr": "Rx27589",
			"cavesize": 6,
		},
		"spell_name": {
			"addr": "Rx1ffc1",
		},
		"ruby_offset": {
			"addr": [ "Rx37992", "Rx37C9B" ]
		},
		"gentext#ability_unlock_name": {
			"addr": [ "Rxf32b", "Rxf352" ]
		},
		"gentext#ability_select": {
			"addr": "Rxf8d4"
		},
		"gentext#ability_unlock_desc": {
			"addr": "Rxf610"
		},
	},
	"tsa_font_block": [
		"Rx131448",
		"Rx13144C",
		"Rx131450",
		"Rx131454",
		"Rx131458",
		"Rx13145C",
		"Rx131460",
		"Rx131464",
		"Rx131444",
		"Rx131440",
		"Rx131468",
		"Rx13146C",
		"Rx131470",
		"Rx131440"
	],
	"binhacks": {
		"quit_crash_fix": {
			"addr": "Rx40cb0",
			"code": "558bec568b7508578bf985f60f84d600000085ff0f84ce0000008b8734f0020083bc8724f0020000741b40898734f0020083f8047c0fc78734f0020003000000b8030000008b9714f002008d0c851400000085d274658b420489843910f002000f1f8400000000008b0239b088000000741f8b8734f002008b948724f002008d0c8785d274408b4204898124f00200ebd78b8f34f00200c7848f24f00200000000008b8f34f0020085c97e0749898f34f002008b025f5e5dc20400c7843910f00200000000008b8734f00200c7848724f00200000000008b8734f0020085c07e0748898734f002005f33c05e5dc20400"
		},
		"center_align": {
			"addr": "Rx8ca95",
			"code": "5356e8[GetTextExtentForFontID]8b4c2410f30f10494cf30f590db4eb4b00f30f2ac0f30f5cc88b4424108b54240c8b48088bc1c1f8088b9482800720030fb6c18d0c408b82240100008b14c88b451c03c08944240c<nop:59>"
		},
		"spell_align": {
			"addr": "Rx8c915",
			"code": "5356e8[GetTextExtentForFontID]8b4c2410f30f10414c83c008d1e0f30f2ac8f30f5cc18b4424108b54240c8b48088bc1c1f8088b9482800720030fb6c18d0c408b82240100008b14c88b451c03c08944240c<nop:54>"
		},
		"sprintf_th19_l": {
			"addr": "Rx8c7a7",
			"code": "ff752450f30f11442420e8[strings_vsprintf]89442434",
		},
		"sprintf_th19_rc": {
			"addr": [ "Rx8ca47", "Rx8c8c7" ],
			"code": "ff752050f30f11442420e8[strings_vsprintf]89442434",
		},
		"sprintf_rep": {
			"addr": [
				"Rx8c845",
				"Rx8c854",
				
				"Rx8c911",
				"Rx8c9bf",
				"Rx8c9d1",
				
				"Rx8ca91",
				"Rx8cB47",
				"Rx8cb59"
			]
		},
		"textbox_size_1": {
			"addr": "Rx37a80",
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c08b9fb4010000<nop:7>",
		},
		"textbox_size_2": {
			"addr": "Rx37db0",
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c0<nop:7>",
		},
	}
}