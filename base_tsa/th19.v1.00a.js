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
		"gentext#ability_desc_unlock": {
			"addr": "RxD5077",
			"cavesize": 5,
			"file": "abilities.js",
			"ids": [ "[ebp+0xC]", 0 ],
			"line": 1,
			"str": "eax"
		},
		"gentext#ability_name": {
			"addr": [ "RxD4A4D", "RxD4B0D" ],
			"cavesize": 6	
		},
		"gentext#titlemsg": {
			"addr": [ "Rx122AD3", "Rx122B10" ],
			"cavesize": 6,
			"cave_exec": false,
			"eip_jump_dist": 15,
			
			"file": "titlemsg.js",
			"ids": "eax",
			"line": "edi != (esi+0x28)",
			"str": "edi"
		},
		"music_title": {
			"addr": "Rx13EBD3",
			"track": "edi",
			"str": "[esp+0x4]"
		},
		"music_cmt": {
			"addr": [ "Rx13EE1E", "Rx13EEE7" ],
			"track": "[esi+0xADC]",
			"line_num": "[esi+0xAD8]",
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
		},
		"th19_net_status_deref": {
			"access": "re",
			"code": "8b44241c8b008944241c e9[RxBF8B0]"
		},
		"th19_free_jmp": {
			"access": "re",
			"code": "e9[Rx6590e]"
		},
		"th19_file_load": {
			"access": "re",
			"code": "8b4c24048b5424086a00e8[RxC82A0]83c404c20800"
		}
	},
	"free_func": "codecave:th19_free_jmp",
	"file_load_func": "codecave:th19_file_load",
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
		},
		"net_status_deref_call": {
			"addr": "Rx149D35",
			"code": "e8[codecave:th19_net_status_deref]"
		},
		"net_status_replace_func": {
			"addr": "Rx146C50",
			
			// Code:
			
			// void th19_net_set_status(uint8_t* obj, size_t slot, const char* str) {
			//     const char* str_real = strings_lookup(str, nullptr);
			// 
			//     const char** out = (const char**)(obj + 0x8fc + (slot << 8));
			// 
			//     if (!*out || strcmp(*out, str_real) != 0) {
			//         *out = str_real;
			//         obj[0xDFC] = 1;
			//     }
			// }			
			
			"code": "5356576a00ff74241c90e8[strings_lookup]8b5c241c83c4088b7c24108bf0c1e3088b8c3bfc08000085c9742f660f1f4400008a113a10751a84d274128a51013a5001750e83c10283c00284d275e433c0eb051bc083c80185c0740e89b43bfc080000c687fc0d0000015f5e5bc3<int3:58>"
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
