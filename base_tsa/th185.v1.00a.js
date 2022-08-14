{
	"breakpoints": {
		"file_size": {
			"addr": "Rx213c"
		},
		"file_load": {
			"addr": "Rx2174"
		},
		"file_loaded": {
			"addr": "Rx7144e"
		},
		"music_title": {
			"addr": "Rx6f2bd"
		},
		"music_cmt": {
			"addr": [ "Rx6f515", "Rx6f5de" ]
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx70166"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx7113a"
		},
		"gentext#abilities_result_name": {
			"addr": "Rx1bbF3"
		},
		"gentext#abilities_result_desc": {
			"addr": "Rx1be10"
		},
		"gentext#abilities_result_desc_l1": {
			"addr": [ "Rx1bf41", "Rx1c178" ]
		},
		"gentext#trophy_ingame": {
			"addr": "Rx70e0a"
		},
		"gentext#abilities_ingame": {
			"addr": "Rx21ad5"
		}
	},
	"binhacks": {
		"sprintf_th185_esp+34": {
			"addr": [ "Rx88c7b", "Rx88dab" ]
		},
		"sprintf_th185_2": {
			"addr": "Rx88f2b"
		},
		"sprintf_rep": {
			"addr": [
				// draw_ltext
				"Rx88d2a",
				"Rx88d39",
				
				// draw_rtext
				"Rx88e01",
				"Rx88ead",
				"Rx88ebe",
				
				// draw_ctext
				"Rx88f81",
				"Rx89039",
				"Rx8904a"
			]
		},
		"center_align": {
			"addr": "Rx88f85",
			"code": "ff751856e8[GetTextExtentForFontID]f30f2ad08b4424108b5424148b7c24108b4c98088bc1c1f808f30f104c9f38f30f590d38c74b008b94822c0712030fb6c18b7c241c8d0c408b82240100008b0cc88b451c8d1400f30f10442418f30f2cc0<nop:47>"
		},
		"trophy_result_desc_no_touch_ecx_edx": {
			"addr": "Rx710f0",
			"code": "558bec5669f104070000398e707c4d0075428b4508535152b3078d045003c2b277c1e0088d80747d4d0003c6bea0a257002bf08a088d400132ca02d380c310884c06ff84c975ec5a595bb8a0a257005e5dc2040033c05e5dc20400"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx70d62"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx70e29"
		},
		"ability_ingame_lineflip_1": {
			"addr": "Rx21abd"
		},
		"ability_ingame_lineflip_2": {
			"addr": "Rx21afd"
		}
	},
	"tsa_font_block": [
		"Rx179c28",
		"Rx179c2c",
		"Rx179c30",
		"Rx179c34",
		"Rx179c38",
		"Rx179c3c",
		"Rx179c40",
		"Rx179c44",
		"Rx179c24",
		"Rx179c20",
		"Rx179c48",
		"Rx179c4c",
		"Rx179c50",
		"Rx179c20"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx17e413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx17f036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx17d333",
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
