{
	"steam_appid": "1079160",
	"binhacks": {
		"log_restore": {
			"addr": "Rx04d10"
		},
		"sprintf_msvcrt14_esp+34": {
			"addr": [
				"Rx75039",
				"Rx75159"
			]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx752c9"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"addr": "Rx082cf"
		},
		"sprintf_replay_use_ecx_2": {
			"addr": "Rx455ee"
		},
		"sprintf_replay_use_ecx_5": {
			"addr": "Rx56e9e"
		},
		"sprintf_replay_reuse_1": {
			"code": "68 901f4a00 54 e8[strings_sprintf] 894424 1c",
			"addr": [ "Rx45804", "Rx59976", "Rx59d64" ]
		},
		"sprintf_rep": {
			"addr": [
				"Rx082dd",
				"Rx750d6",
				"Rx750e7",
				"Rx751a4",
				"Rx75247",
				"Rx75258",
				"Rx75314",
				"Rx7539d",
				"Rx45836",
				"Rx45843",
				"Rx59988",
				"Rx599bd",
				"Rx59d96",
				"Rx59da3"
			]
		},
		"spell_align": {
			"code": "ff7518 56 e8[GetTextExtentForFontID] 83c008 d1e0 89c6 8b442410 8b4c240c 8b542414 8b4c8808 8bc1 c1f808 8b948200018601 0fb6c1 8d0c40 8b8224010000 8b0cc8 8b451c 8d1400 89f0 8b742410 909090",
			"addr": "Rx751b0"
		},
		"spell_align_result": {
			"addr": "Rx75381"
		},
		"music_title_prepare": {
			"code": "8b542418 52 31c0 50 50 50 a1 209a50000",
			"addr": "Rx5a71f"
		},
		"th17_textbox_size": {
			"addr": [ "Rx2dcb8", "Rx2df42" ]
		},
		"center_align": {
			"code":"ff751856e8[GetTextExtentForFontID]89c69090909090909090908b4424188b4c24148b5424108b4c88088bc1c1f8088b9482000186010fb6c18d0c408b82240100008b5424188b04c8894424108b451c03c089f18944241c8b442414",
			"addr": "Rx75320"
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx5dc6f",
			"code": "40",
			"ignore": true,
			"comment": "This binhack should be in th17.js but because version specific binhacks (like the one above) always overwrite non version specific binhacks, this one has to be here."
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx5dcbd"
		},
		"trophy_result_crash_fix": {
			"addr": [ "Rx5d106", "Rx5d16b", "Rx5d1c5", "Rx5d21c" ],
			"code": "68 5bd24500 c3"
		},
		"score_force_visual_update": {
			"addr": "Rx31378",
			"code": "0F 85 5C 02 00 00"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx0215c"
		},
		"file_load": {
			"addr": "Rx02194"
		},
		"file_loaded": {
			"addr": "Rx5e238"
		},
		"spell_id": {
			"cavesize": "8",
			"addr": "Rx2519a"
		},
		"spell_id#real": {
			"cavesize": "9",
			"addr": "Rx1ad24"
		},
		"spell_name": {
			"spell_name": "esi",
			"addr": "Rx1af30"
		},
		"spell_id#result": {
			"addr": "Rx5894d"
		},
		"spell_name#result": {
			"addr": "Rx58a87"
		},
		"spell_name#practice": {
			"addr": "Rx5c1cd"
		},
		"music_title": {
			"addr": "Rx5a723"
		},
		"music_cmt": {
			"addr": [ 
				"Rx5a969", 
				"Rx5aa34"
			],
			"line_num": "[edi+0x804]",
			"track": "[edi+0x808]"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5dc92",
			"ids": "esi",
			"str": "eax",
			"cavesize": 5,
			"cave_exec": false
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx5d0e1"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5df46",
			"ids": [ "[ebp-0x4]", "[ebp+0x1c]" ],
			"cave_exec": false
		},
		"ruby_offset": {
			"addr": [ "Rx2dbf6", "Rx2de80" ],
			"cavesize": 6
		}
	},
	"tsa_font_block": {
		"addr": "Rx12a334"
	},
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx12e413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx12f036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx12d333",
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
