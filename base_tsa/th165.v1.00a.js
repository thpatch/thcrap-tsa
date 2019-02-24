{
	"binhacks": {
		"sprintf_msvcrt14_esp+34": {
			"addr": ["Rx73d59", "Rx73e79"]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx73fe9"
		},
		"sprintf_msvcrt14_ebp-108": {
			"addr": "Rx081a3"
		},
		"sprintf_rep": {
			"addr": [
				"Rx73df6", "Rx73e07",
				"Rx73ec4", "Rx73f67", "Rx73f78",
				"Rx74034", "Rx740bd",
				"Rx081b1"
			]
		},
		"music_title_prepare": {
			"addr": "Rx5ae1f",
			"code": "8b542418 52 31c0 50 50 50 a1 8cd84e00"
		},
		"th165_textbox_size": {
			"addr": ["Rx26ab0", "Rx26d26"]
		},
		"spell_align": {
			"addr": "Rx73ed0"
		},
		"center_align": {
			"addr": "Rx74040"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx5bf0d"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx5bf5d"
		},
		"titlemsg_emptylines": {
			"addr": ["Rx58203", "Rx5843f"]
		},
		"ascii_patch": {
			"addr": "Rx819f",
			"code": "ff7514 ff7510 68b1814000 e8 [ascii_vpatchf] eb18 ff74240c 89e0 ff74240c 8b4c240c 50 e8bbfdffff c3 909090"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx0204c"
		},
		"file_load": {
			"addr": "Rx02084"
		},
		"file_loaded": {
			"addr": "Rx5ccd8"
		},
		"music_title": {
			"addr": "Rx5ae23"
		},
		"music_cmt": {
			"addr": ["Rx5b065", "Rx5b12b"]
		},
		"spell_name": {
			"addr": "Rx15868"
		},
		"ruby_offset": {
			"addr": ["Rx26c73", "Rx269f9"]
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5c1eb"
		},
		"gentext#trophy_result_nickname": {
			"addr": ["Rx5a804"]
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5bf37"
		},
		"gentext#titlemsg_day": {
			"addr": "Rx581ef"
		},
		"gentext#titlemsg_comment": {
			"addr": "Rx58503"
		},
		"widest_string_f#day_comment": {
			"addr": "Rx582fe"
		},
		"ascii_params": {
			"addr": "Rx37fac",
			"ClassPtr": "[Rxb54f8]"
		}
	},
	"tsa_font_block": [
		"Rx10f8e4",
		"Rx10f904",
		"Rx10f8fc",
		"Rx10f90c",
		"Rx10f8e8",
		"Rx10f908",
		"Rx10f900",
		"Rx10f910",
		"Rx10f8e0",
		"Rx10f80c"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx113423",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx114046",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx112333",
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
					"code": "90909090909090909090 b030 884513 e9"
				}
			}
		}
	]
}
