{
	"steam_appid": "1566410",
	"breakpoints": {
		"file_size": {
			"addr": "Rx20ec"
		},
		"file_load": {
			"addr": "Rx2124"
		},
		"file_loaded": {
			"addr": "Rx6ee4b"
		},
		"music_title": {
			"addr": "Rx6B3f0"
		},
		"music_cmt": {
			"line_num": "[edi+0x70C]",
			"track": "[edi+0x710]",
			"addr": [ "Rx6b630", "Rx6b6fb" ]
		},
		"spell_name#practice": {
			"addr": "Rx6cb7c"
		},
		"spell_id#result": {
			"addr": "Rx695f7"
		},
		"spell_name#result": {
			"addr": "Rx69735"
		},
		"spell_id": {
			"addr": "Rx34f14"
		},
		"spell_id#real": {
			"addr": "Rx2a354"
		},
		"spell_name": {
			"spell_name": "esi",
			"addr": "Rx2a553"
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx6db10"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx6eb3a"
		},
		"gentext#card_name": {
			"addr": "Rx1669c"
		},
		"gentext#card_desc": {
			"addr": "Rx167b0"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx6e882",
			"str": "eax",
			"cave_exec": false
		},
		"gentext#ability_unlock": {
			"addr": "Rx19276",
			"ids": "ebx",
			"str": "eax"
		},
		"ruby_offset": {
			"addr": [ "Rx3e9fe", "Rx3f0ba" ]
		}
	},
	"binhacks": {
		"log_restore": {
			"addr": [ "Rx04e80", "Rx3a280", "Rx42440", "Rx562a0", "Rx6f1d0", "Rx71110", "Rx76310", "Rx77af0", "Rx8b010", "Rx8b020" ]
		},
		"music_title_prepare": {
			"addr": "Rx6b3ec",
			"code": "8b54241831c05250505050a15cf6510090"
		},
		"sprintf_th18_l": {
			"addr": "Rx87177"
		},
		"sprintf_th18_r": {
			"addr": "Rx872a7"
		},
		"sprintf_th18_c": {
			"addr": "Rx87427"
		},
		"sprintf_th18_ascii": {
			"addr": "Rx19ccd"
		},
		"sprintf_replay_reuse_1": {
			"addr": [ "Rx6a646", "Rx6aa1a" ],
			"code": "68 746f4b00 54 e8[strings_sprintf] 894424 1c"
		},
		"sprintf_replay_reuse_2": {
			"addr": [ "Rx59a68", "Rx59862" ],
			"code": "68 746f4b00 54 e8[strings_sprintf] 894424 2c"
		},
		"sprintf_replay_use_ecx": {
			"addr": "Rx67A01",
			"code": "68 746f4b00 54 e8[strings_sprintf] 89c1 83c4 0c eb 0a 90909090909090909090"
		},
		"sprintf_rep": {
			"addr": [
				"Rx8722A",
				"Rx87239",
				"Rx87301", 
				"Rx873ad",
				"Rx873be",
				"Rx87481",
				"Rx87539",
				"Rx8754a",
				"Rx19d0f",
				"Rx19d46",
				"Rx19d7d",
				"Rx19da4",
				
				"Rx6a658",
				"Rx6aa60",
				"Rx6aa6a",
				"Rx59aae",
				"Rx59ab8",
				"Rx59874"
			]
		},
		"spell_align": {
			"addr": "Rx87305",
			"code": "ff751856e8[GetTextExtentForFontID]83c008d1e0f30f2ac88b44240c8b5424108b4c98088bc1c1f8088b94822c0712030fb6c18b74240c8d0c408b82240100008b0cc88b451c8d1400f30f10442414f30f2cc0f30f10449e38eb2890909090909090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"th18_textbox_size": {
			"addr": [ "Rx3ec32", "Rx3f2f2" ],
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c090909090909090909090f30f1097c4010000f30f108fc00100008bcf"
		},
		"center_align": {
			"addr": "Rx87481",
			"code": "89ffff7518ff742434e8[GetTextExtentForFontID]f30f2ad08b4424108b5424148b7c24108b4c98088bc1c1f808f30f104c9f38f30f590d38914b008b94822c0712030fb6c18b7c241c8d0c408b82240100008b0cc88b451c8d1400f30f10442418f30f2cc0eb2c9090909090909090909090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"trophy_result_desc_prepare": {
			"code": "754251528b450853b3078d045003c2b277c1e0088d8044f54c0003c6beb01357002bf08a088d400132ca02d380c310884c06ff84c975ec5b5a59b8b01357005e5dc2040033c05e5dc20400",
			"addr": "Rx6eb00"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx6E85D"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx6E8AD"
		},
		"ability_ingame_lineflip_1": {
			"addr": "Rx1925c",
			"code": "8D 8F 44 02 00 00"
		},
		"ability_ingame_lineflip_2": {
			"addr": "Rx1929B",
			"code": "8D 8F 40 02 00 00"
		}
	},
	"tsa_font_block": [
		"Rx170930",
		"Rx170934",
		"Rx170938",
		"Rx17093c",
		"Rx170940",
		"Rx170944",
		"Rx170948",
		"Rx17094c",
		"Rx17092c",
		"Rx170928",
		"Rx170950",
		"Rx170954",
		"Rx170928"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx175413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx176036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx174333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx3ea0",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
