{
	"steam_appid": "2400360",
	"breakpoints": {
		"file_size": {
			"addr": "Rx125669",
			"file_name": "esi",
			"cavesize": 6,
		},
		"file_load": {
			"addr": "Rx1256A7",
			"file_buffer": "ebx",
		},
		"file_loaded": {
			"addr": "Rx19A4C1"
		},
		"music_title": {
			"addr": "Rx1927c2",
			"track": "[ebp-0x2c]",
			"str": "[esp+0x4]",
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "[esi+0xA44]",
			"track": "[esi+0xA48]",
			"addr": [ "Rx192AE5", "Rx192A1F" ]
		},
		"spell_id": {
			"separator": "+",
			"spell_id": [
				{   // Character ID
					"type": "u32",
					"param": "[Rx2192CC - (((ecx - Rx220110) / 0x3c) * 0x98)]",
				},
				{   // Subroutine name
					"type": "s",
					"param": "[[[[[[edi+0x55C8]+0xC]+0x1018]+0x1218]+0x20c]+[[[edi+0x55C8]+0xC]+0x4]*8]",
				},
				{   // Difficulty
					"type": "u32",
					"param": "[Rx211D6C]",
					"count_down": true
				},
			],
			"addr": "Rx14EFDB",
			"cavesize": 6,
		},
		"spell_name": {
			"addr": "Rx1447C4",
		},
		"ruby_offset": {
			"addr": [ "Rx15A2F2", "Rx15A6AB" ]
		},
		"gentext#ability_select_desc": {
			"addr": "Rx132964",	
		},
		"gentext#ability_name": {
			"str": "[esp+0x4]",
			"cavesize": 6,
			"addr": [ "Rx132E9D", "Rx132F5D" ],
		},
		"gentext#ability_desc": {
			"line": "6 - [ebp-0x10] + 1",
			"addr": "Rx1330E5",
		}
	},
	"tsa_font_block": [
		"Rx27B734",
		"Rx27B738",
		"Rx27B73C",
		"Rx27C530",
		"Rx27C534",
		"Rx27C538",
		"Rx27C53C",
		"Rx27C540",
		"Rx27B45C",
		"Rx2724FC",
		"Rx27C544",
		"Rx27C548",
		"Rx27C54C",
	],
	"binhacks": {
		"center_align": {
			"addr": "Rx11D3BA",
			"code": "5356e8[GetTextExtentForFontID]8b8ddcfafffff30f10494cf30f590d<Rx1ef150>f30f2ac0f30f5cc88b85dcfaffff8b95e0faffff8b480889c8c1f8088b9482800720030fb6c18d0c408b82240100008b14c88b451c01c08985e0faffff<nop:60>",
		},
		"spell_align": {
			"addr": "Rx11D56B",
			"code": "5356e8[GetTextExtentForFontID]8b8de4fafffff30f10414c83c008d1e0f30f2ac8f30f5cc18b85e4faffff8b95e8faffff8b48088bc1c1f8088b9482800720030fb6c18d0c408b82240100008b14c88b451c03c08985e8faffff5e<nop:58>",
		},
		"sprintf_th19_l": {
			"addr": "Rx11D7D2",
			"code": "ff7524f30f118560ffffffff7504e8[strings_vsprintf]898578ffffff90909090908b4e2083c40c",
		},
		"sprintf_th19_r": {
			"addr": "Rx11D501",
			"code": "ff7520f30f1185e0faffffff7504e8[strings_vsprintf]8985fcfaffff90909090908b4f2083c40c"
		},
		"sprintf_th19_c": {
			"addr": "Rx11D352",
			"code": "ff7520f30f1185d8faffffff7504e8[strings_vsprintf]8985f4faffff90909090908b4f2083c40c"
		},
		"sprintf_rep": {
			"addr": [
				// left
				"Rx11D87D",
				"Rx11D88E",
				// right
				"Rx11D565",
				"Rx11D624",
				"Rx11D63A",
				// center
				"Rx11D3B4",
				"Rx11D47B",
				"Rx11D491",
			]
		},
		"textbox_size_1": {
			"addr": "Rx15A481",
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c08b54241090909090909090909090",
		},
		"textbox_size_2": {
			"addr": "Rx15A7D0",
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730233c08b5c241090909090909090909090",
		}
	}
}