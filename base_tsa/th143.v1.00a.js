{
	"binhacks": {
		"log_restore": {
			"addr": [
				"Rx7290",
				"Rx691e0",
				"Rx73970"
			]
		},
		"sprintf_call_esp+34": {
			"addr": [
				"Rx82c51",
				"Rx82d41",
				"Rx82e75"
			]
		},
		"sprintf_rep": {
			"addr": [
				"Rx82cc3",
				"Rx82df0",
				"Rx82f00"
			]
		},
		"ddc_textbox_size": {
			"addr": [
				"Rx2f7ad",
				"Rx2f9b1"
			],
			"code": "6a0050e8[GetTextExtentForFontID]f30f100d089e4c0083e81c730331c09090"
		},
		"music_title_prepare": {
			"addr": "Rx66ac1",
			"code": "8b4ce41c5131c05050505068ffffff0056ff35e88d530090"
		},
		"spell_id_fetch": {
			"addr": "Rx1dbef",
			"code": "8b0dac6b4e008b09c20400"
		},
		"spell_name_fetch": {
			"addr": "Rx190d5"
		},
		"spell_align": {
			"addr": "Rx82d52",
			"code": "8b451c01c08944e40c8b461cc1e80b83e0018944e414 53 ff74e42ce8[GetTextExtentForFontID] 83c008d1e08b562cf30f104a38909090909090909090"
		},
		"center_align": {
			"addr": "Rx82e82",
			"code": "ff7518ff74e42c e8[GetTextExtentForFontID]  83c003c1e00289c1 8b451c8b5e2c 90909090"
		},
		"titlemsg_box_size_1": {
			"addr": "Rx5f1ae"
		},
		"titlemsg_box_size_2": {
			"addr": "Rx5f213"
		},
		"titlemsg_box_size_3": {
			"addr": "Rx5f230"
		},
		"titlemsg_emptylines": {
			"addr": ["Rx643a3", "Rx645b2"]
		},
		"meiryo_strcmp_remove": {
			"addr": "Rx6bee7"
		},
		"titlemsg_prepare": {
			"addr": ["Rx630ae", "Rx62ef3", "Rx6323c"],
			"code": "8d51 08 8db1 08010000 b8 b3f14500 ffd0 56 52 f30f1015 3c9f4c00 f30f100d ac9f4c00 90"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx67fc9"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx68017"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx2e89"
		},
		"file_load": {
			"addr": "Rx2ec4"
		},
		"file_loaded": {
			"addr": "Rx68d62"
		},
		"music_title": {
			"addr": "Rx66ac5"
		},
		"music_cmt#line": {
			"addr": [
				"Rx66ce2",
				"Rx66db5"
			]
		},
		"music_cmt": {
			"addr": [
				"Rx66cf4",
				"Rx66dc7"
			]
		},
		"spell_id": {
			"addr": "Rx1dbf7"
		},
		"spell_id#resurrection": {
			"addr": "Rx253bd"
		},
		"spell_name": {
			"addr": "Rx190d8"
		},
		"ruby_offset": {
			"addr": [
				"Rx2f729",
				"Rx2f92d"
			]
		},
		"gentext#hint_id": {
			"addr": "Rx49d57"
		},
		"gentext#hint_line_1": {
			"addr": "Rx49da3"
		},
		"gentext#hint_line_2": {
			"addr": "Rx49de2"
		},
		"gentext#trophy_result_nickname": {
			"addr": ["Rx65b66", "Rx661ec"]
		},
		"gentext#trophy_result_desc_params": {
			"addr": "Rx68265"
		},
		"gentext#trophy_result_desc_str": {
			"addr": "Rx6829b"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx67ff2"
		},
		"gentext#titlemsg_id": {
			"addr": "Rx62ec6"
		},
		"gentext#titlemsg_str": {
			"addr": ["Rx630b7", "Rx62efc", "Rx63245"]
		}
	},
	"tsa_font_block": [
		"Rx140e00",
		"Rx140e04",
		"Rx140e08",
		"Rx140e0c",
		"Rx140e10",
		"Rx140e14",
		"Rx140e18",
		"Rx140e1c",
		"Rx140dfc",
		"Rx140df8"
	],
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx146423",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx147046",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx145333",
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
