{
	"steam_appid": "1079170",
	"binhacks": {
		"sprintf_msvcrt14_esp+34": {
			"addr": [
				"Rx74309",
				"Rx74429"
			]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx74599"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"addr": "Rx087BF"
		},
		"sprintf_rep": {
			"addr": [
				"Rx087CD",
				"Rx743A6",
				"Rx743B7",
				"Rx74474",
				"Rx74517",
				"Rx74528",
				"Rx745e4",
				"Rx7466D"
			]
		},
		"th17_textbox_size": {
			"addr": ["Rx2cac4", "Rx2cdb4"]
		},
		"spell_align": {
			"addr": "Rx74480"
		},
		"music_title_prepare": {
			"addr": "Rx5c56f",
			"code": "8b542414 52 31c0 50 50 50 a1 38565000"
		},
		"trophy_ingame_prepare": {
			"code": "41 32 C2 02 D4 80 C4 10 88 41 FF 84 C0 75 EA FF B3 3C 02 00 00 8B 35 38 56 50 00 8B CE E8 43 7A 01 00 85 C0 75 06 89 83 3C 02 00 00 B9 A0 61 52 00 51 90",
			"addr": "Rx5de9b"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx5deaa",
			"code": "ffb3 4002 0000",
			"ignore": true,
			"comment": "This binhack should be in th17.js but because version specific binhacks (like the one above) always overwrite non version specific binhacks, this one has to be here."
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx5def0"
		},
		"ruby_prepare_1": {
			"addr": "Rx2c9f3",
			"code": "BE 11 60 52 00 56 90 90 90 E8 82 46 05 00 83 C4 04 8B D8 6A 2C 56",
			"title": "Put the static ruby string address 526011 in esi"
		},
		"ruby_prepare_2": {
			"addr": "Rx2cce3",
			"code": "BE 11 60 52 00 56 90 90 90 E8 92 43 05 00 83 C4 04 8B D8 6A 2C 56",
			"title": "Put the static ruby string address 526011 in esi"
		},
		"remember_trophy_id": {
			"addr": "Rx5ddd6",
			"code": "31c9"
		},
		"center_align": {
			"code": "ff751856e8[GetTextExtentForFontID]83c003c1e0028bf08b4424188b4c24148b5424108b4c88088bc1c1f8088b9482ecfa84010fb6c18d0c408b82240100008b5424188b04c8894424108b451c03c08bce",
			"addr": "Rx745f0"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx0203c"
		},
		"file_load": {
			"addr": "Rx02074"
		},
		"file_loaded": {
			"addr": "Rx5e3d8"
		},
		"music_title": {
			"addr": "Rx5c573"
		},
		"music_cmt": {
			"addr": [
				"Rx5c7f9",
				"Rx5c8e9"
			],
			"track": "[edi+0x6a8]",
			"line_num": "esi"
		},
		"spell_id": {
			"addr": "Rx23734"
		},
		"spell_id#real": {
			"addr": "Rx1A93E"
		},
		"spell_name": {
			"addr": "Rx1AB50"
		},
		"spell_id#result": {
			"addr": "Rx5A16D"
		},
		"spell_name#result": {
			"addr": "Rx5A2A7"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5e0eb"
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx5d28f"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5decc",
			"ids": "[ebx+0x10]",
			"str": "ecx",
			"cavesize": 7
		},
		"ruby_offset": {
			"addr": [
				"Rx2ccf1",
				"Rx2ca01"
			],
			"cavesize": 5
		}
	},
	"tsa_font_block": {
		"addr": "Rx125F4C"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx12a413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx12b036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx129333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx6780",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
