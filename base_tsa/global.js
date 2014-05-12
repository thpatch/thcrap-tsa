{
	"thcrap_version_min": "0x20140512",
	"thcrap_url": "http://thpatch.net/wiki/Project:Download",
	"binhacks": {
		"log_restore": {
			"code": "e9[log_printf]",
			"title": "Restore the game's built-in logging"
		},
		"result_spell_align": {
			"code": "31c0",
			"title": "Remove spell \"alignment\" in the result screen"
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
		"sprintf_rep": {
			"code": "8b",
			"title": "Safe sprintf (replace)"
		}
	}
}
