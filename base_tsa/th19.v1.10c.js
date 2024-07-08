{
	"codecaves": {
		"th19_file_load": {
			"access": "re",
			"code": "8b4c24048b5424086a00e8[RxD6760]83c404c20800"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "RxD6804"
		},
		"file_load": {
			"addr": "RxD6842"
		},
		"file_loaded": {
			"addr": "Rx15E800"
		},
	},
	"tsa_font_block": [
		"Rx22B09C",
		"Rx22CDC0",
		"Rx22CDC4",
		"Rx22CDC8",
		"Rx22CDCC",
		"Rx22CDD0",
		"Rx22CDD4",
		"Rx22CDD8",
		"Rx22B098",
		"Rx223E3C",
		"Rx22CDDC",
		"Rx22CDE0",
		"Rx22CDE4",
		"Rx22CDE8",
		"Rx223E3C",		
	],
	"file_load_func": "<codecave:th19_file_load>",
	"free_func": "<Rx7DF88>",
	"init_stages": [
		{
			"binhacks": {
				"steamstub_crack": {
					"title": "Crack SteamStub by disabling its integrity check",
					"addr": "Rx255413",
					"code": "eb",
					"expected": "74"
				}
			},
			"breakpoints": {
				"init_next_stage#1": {
					"addr": "Rx256036",
					"module": "eax",
					"cavesize": 6
				},
				"init_next_stage#game": {
					"addr": "Rx254333",
					"cavesize": 5
				}
			}
		},
		{
			"The addresses here are relative to": "SteamDRMP.dll",
			"binhacks": {
				"steamdrm_crack": {
					"title": "Crack SteamDRM: Remove all communication with the Steam client",
					"addr": "Rx3d50",
					"code": "90909090909090909090 b030 88450b e9"
				}
			}
		}
	]
}
