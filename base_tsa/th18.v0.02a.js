{
	"breakpoints": {
		"file_size": {
			"addr": "Rx212c"
		},
		"file_load": {
			"addr": "Rx2164"
		},
		"file_loaded": {
			"addr": "Rx65a1b"
		},
		"music_title": {
			"addr": "Rx63970"
		},
		"music_cmt": {
			"addr": ["Rx63bf7", "Rx63ce7"]
		},
		"spell_id": {
			"addr": "Rx2C7F4"
		},
		"spell_id#real": {
			"addr": "Rx232E4"
		},
		"spell_name": {
			"addr": "Rx234E3"
		},
		"spell_id#result": {
			"addr": "Rx61587"
		},
		"spell_name#result": {
			"addr": "Rx616CD"
		},
		"gentext#card_name": {
			"addr": "Rx107fe"
		},
		"gentext#card_desc": {
			"addr": "Rx108d0"
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx64771"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx12b9c"
		},
		"gentext#trophy_ingame_legacy": {
			"addr": "Rx654ce"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx656ea"
		}
	},
	"binhacks": {
		"music_title_prepare": {
			"addr": "Rx6396c",
			"code": "8b54241431c05250505050a1ac55510090"
		},
		"sprintf_th18_l": {
			"addr": "Rx7dea7"
		},
		"sprintf_th18_r": {
			"addr": "Rx7dfd7"
		},
		"sprintf_th18_c": {
			"addr": "Rx7e157"
		},
		"sprintf_th18_ascii": {
			"addr": "Rx1366d"
		},
		"sprintf_rep": {
			"addr": [
				"Rx7DF5A",
				"Rx7DF69",
				"Rx7E031",
				"Rx7E0DD",
				"Rx7E0EE",
				"Rx7E1B1",
				"Rx7E269",
				"Rx7E27A",
				"Rx136AF",
				"Rx136E6",
				"Rx1371D",
				"Rx13744"
			]
		},
		"center_align": {
			"addr": "Rx7e1b1",
			"code": "89ffff7518ff742434e8[GetTextExtentForFontID]f30f2ad08b4424108b5424148b7c24108b4c98088bc1c1f808f30f104c9f38f30f590d40e64a008b94822c0789010fb6c18b7c241c8d0c408b82240100008b0cc88b451c8d1400f30f10442418f30f2cc0eb2c9090909090909090909090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"th18_textbox_size": {
			"addr": [ "Rx35ea2", "Rx3611f" ]
		},
		"spell_align": {
			"addr": "Rx7e035"
		},
		"trophy_result_desc_prepare": {
			"addr": "Rx656b0",
			"code": "754251528b450853b3078d045003c2b277c1e0088d8094344c0003c6be687e54002bf08a088d400132ca02d380c310884c06ff84c975ec5b5a59b8687e54005e5dc2040033c05e5dc20400",
		},
		"trophy_ingame_legacy_use_edi": {
			"code": "69fe04070000b9687e5400b2778b00898340020000b4072bf98a840f94334c00",
			"addr": "Rx6547b"
		},
		"trophy_ingame_legacy_use_edi_2": {
			"code": "8b3dac5551008bcf",
			"addr": "Rx654b2"
		},
		"trophy_ingame_legacy_push_edi": {
			"code": "57",
			"addr": "Rx654df"
		},
		"trophy_ingame_lineflip_1": {
			"addr": [ "Rx12b81", "Rx654ac" ]
		},
		"trophy_ingame_lineflip_2": {
			"addr": [ "Rx12bc4", "Rx654f0" ]
		},
	},
	"tsa_font_block": [
		"Rx47b00",
		"Rx47b04",
		"Rx47b08",
		"Rx47b0c",
		"Rx47b10",
		"Rx47b14",
		"Rx47b18",
		"Rx47b1c",
		"Rx47afc",
		"Rx47af8",
		"Rx47b20",
		"Rx47b24",
		"Rx47af8"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx14b413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx14c036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx14a333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx66d0",
					"code": "90909090909090909090 b030 884513 e9"
				}
			}
		}
	]
}
