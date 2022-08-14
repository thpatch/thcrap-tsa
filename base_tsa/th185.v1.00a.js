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
		}
	},
	"binhacks": {
		"sprintf_th185_esp+34": {
			"addr": [ "Rx88c7b", "Rx88dab" ]
		},
		"sprintf_th185_2": {
			"addr": "Rx88f2b"
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
