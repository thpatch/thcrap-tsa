{
	"breakpoints": {
		"file_size": {
			"addr": "Rx20ec"
		},
		"file_load": {
			"addr": "Rx2124"
		},
		"file_loaded": {
			"addr": "Rx6ee4b"
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
