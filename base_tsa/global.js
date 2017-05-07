{
	"thcrap_version_min": "0x20170507",
	"thcrap_url": "http://thpatch.net/wiki/Project:Download",
	"binhacks": {
		"log_restore": {
			"code": "e9[log_printf]",
			"title": "Restore the game's built-in logging"
		},
		"menu_desc_align": {
			"code": "ff75b0 e8[GetTextExtent] 83c008 d1e0 50 db04e4 58 90",
			"title": "Menu description alignment"
		},
		"result_spell_align": {
			"code": "31c0",
			"title": "Remove spell \"alignment\" in the result screen"
		},
		"spell_name_fetch": {
			"code": "8b4d0c5131c9515151",
			"title": "Prepare deferred spell name fetching"
		},
		"sprintf_call_esp+14": {
			"code": "50e8[strings_vsprintf]8944e414",
			"title": "Safe sprintf (esp+14)"
		},
		"sprintf_call_esp+18": {
			"code": "50e8[strings_vsprintf]8944e418",
			"title": "Safe sprintf (esp+18)"
		},
		"sprintf_call_esp+1c": {
			"code": "50e8[strings_vsprintf]8944e41c",
			"title": "Safe sprintf (esp+1c)"
		},
		"sprintf_call_esp+34": {
			"code": "50e8[strings_vsprintf]8944e434",
			"title": "Safe sprintf (esp+34)"
		},
		"sprintf_call_esp+3c": {
			"code": "50e8[strings_vsprintf]8944e43c",
			"title": "Safe sprintf (esp+3c)"
		},
		"sprintf_call_ebp-50": {
			"code": "50e8[strings_vsprintf]8945b0",
			"title": "Safe sprintf (ebp-50)"
		},
		"sprintf_call_ebp-88": {
			"code": "50e8[strings_vsprintf]898578ffffff",
			"title": "Safe sprintf (ebp-88)"
		},
		"sprintf_call_ebp-8c": {
			"code": "50e8[strings_vsprintf]898574ffffff",
			"title": "Safe sprintf (ebp-8c)"
		},
		"sprintf_call_ebp-208": {
			"code": "5190909090909090909090e8[strings_vsprintf]83c40c509090",
			"title": "Safe sprintf (ebp-208)"
		},
		"sprintf_call_ebp-200": {
			"code": "5090909090909090909090e8[strings_vsprintf]8b4d0c83c40c509090",
			"title": "Safe sprintf (ebp-200)"
		},
		"sprintf_rep": {
			"code": "8b",
			"title": "Safe sprintf (replace)"
		},
		"meiryo_strcmp_remove": {
			"code": "9090",
			"title": "Don't restrict use of the Meiryo font to Japanese locale"
		}
	},
	"breakpoints": {
		"ruby_offset": {
			"font_dialog": 0,
			"font_ruby": 2
		}
	}
}
