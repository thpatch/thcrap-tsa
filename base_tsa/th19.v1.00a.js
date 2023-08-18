{
	"breakpoints": {
		"file_size": {
			"addr": "RxC8319"
		},
		"file_load": {
			"addr": "RxC8357",
		},
		"file_loaded": {
			"addr": "Rx146BD1"
		},
		"dict_translate": {
			"addr": "Rx149D28",
			"cavesize": 6,
			"str": "[esp+0x4]",
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx13E7C7",
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx13E6CA",
		},
		"gentext#trophy_ingame": {
			"addr": "Rx1448C0"
		},
		"gentext#ability_select_desc": {
			"addr": "RxD4674",
			"cavesize": 8,
			"ids": [ "ecx", 0 ],
		},
		"gentext#ability_desc": {
			"addr": "RxD4CA0",
			"line": "7 - [ebp-0x4]"
		},
		"gentext#ability_name": {
			"addr": [ "RxD4A4D", "RxD4B0D" ],
			"cavesize": 6	
		},
		"music_title": {
			"addr": "Rx13EBD3",
			"track": "edi",
			"str": "[esp+0x4]"
		},
		"music_cmt": {
			"addr": [ "Rx13EE1E", "Rx13EEE7" ],
			"track": "[esi+0xADC]",
			"line": "[esi+0xAD8]",
			"str": "eax"
		},
		"ruby_offset": {
			"addr": [ "RxFE444", "RxFE7A5" ]
		},
		"spell_id": {
			"separator": "+",
			"spell_id": [
				{   // Character ID
					"type": "u32",
					"param": "[Rx2079DC - ((([[ebp-0x540]+0x563C] - Rx1AE470) / 0x3c) * 0xC0)]",
				},
				{   // Subroutine name
					"type": "s",
					"param": "[[[[[[[ebp-0x540]+0x55C8]+0xC]+0x1018]+0x1218]+0x20c]+[[[[ebp-0x540]+0x55C8]+0xC]+0x4]*8]",
				},
				{   // Difficulty
					"type": "u8",
					"param": "[<codecave:th19_log2_mod11> + byte ptr[[ebp-0x610]+0x1020] % 11]",
					"count_down": true
				},
			],
			"addr": "RxF1CAC",
			"cavesize": 6,
		},
		"spell_name": {
			"addr": "RxE611D",
		},
	},
	"codecaves": {
		"th19_log2_mod11": {
			// tab = np.zeros(11, dtype=int)
			// tab[(1<<np.arange(8))%11] = np.arange(8)
			// print(*(f'{x:02X}' for x in tab))
			"access": "r",
			"code": "00 00 01 00 02 04 00 07 03 06 05"
		}
	},
	"binhacks": {
		"sprintf_th19_l": {
			"addr": "RxBFC12",
			"code": "ff7524f30f118560ffffffff7504e8[strings_vsprintf]898578ffffff90909090908b4e2083c40c",
		},
		"sprintf_th19_r": {
			"addr": "RxBFA82",
			"code": "FF 75 20 FF 75 04 F3 0F 11 85 E8 FA FF FF E8 [strings_vsprintf] 89 85 FC FA FF FF 90 90 90 90 90 8B 4E 20 83 C4 0C"
		},
		"sprintf_th19_c": {
			"addr": "RxBF8E2",
			"code": "ff7520f30f1185e0faffffff7504e8[strings_vsprintf]8985f4faffff90909090908b4e2083c40c"
		},
		"spell_align": {
			"addr": "RxBFAEA",
			"code": "5351e8[GetTextExtentForFontID]83c008d1e0f30f1095e8faffff660f6ec80f5bc9f30f10474c8b85e4faffff8b40088bd0c1fa08<nop:35>"
		},
		"center_align": {
			"addr": "RxBF94A",
			"code": "5351e8[GetTextExtentForFontID]660f6ec80f5bc9f30f10574cf30f5915<Rx184644>f30f109de0faffff8b85dcfaffff8b40088bd0c1fa08<nop:48>"
		},
		"sprintf_rep": {
			"addr": [
				"RxBFCC3",
				"RxBFCD4",
				
				"RxBF944",
				"RxBFA00",
				"RxBFA11",
				
				"RxBFAE4",
				"RxBFB90",
				"RxBFBA1",
			]
		},
		"trophy_ingame_lineflip_1": {
			"code": "44",
			"addr": [ "Rx1448C7", "Rx1448E0" ]
		},
		"trophy_ingame_lineflip_2": {
			"code": "40",
			"addr": [ "Rx144909", "Rx144918" ]
		},
		"textbox_width_1": {
			"addr": "RxFE550",
			"code": "6a0051e8[GetTextExtentForFontID]8bb7a401000083e81c730231c0<nop:7>"
		},
		"textbox_width_2": {
			"addr": "RxFE8D4",
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c0<nop:10>"
		}
	},
	"tsa_font_block": [
		"Rx2078EC",
		"Rx2090E0",
		"Rx2090E4",
		"Rx2090E8",
		"Rx2090EC",
		"Rx2090F0",
		"Rx2090F4",
		"Rx2090F8",
		"Rx2078CC",
		"Rx20084C",
		"Rx2090FC",
		"Rx209100",
		"Rx209104",
		"Rx209108",
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx231413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx232036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx230333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx3e70",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
