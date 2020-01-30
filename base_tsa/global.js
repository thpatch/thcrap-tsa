{
	"thcrap_version_min": "0x20170905",
	"thcrap_url": "http://thpatch.net/wiki/Project:Download",
	"binhacks": {
		"log_restore": {
			"code": "e9[log_printf]",
			"title": "Restore the game's built-in logging"
		},
		"menu_desc_align": {
			"code": "52 ff75ac ff75b0 e8[GetTextExtentForFontID] 8d440010 50 db04e4 58 59 89ca 90909090",
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
		"sprintf_call_esp+38": {
			"code": "e8[strings_vsprintf]89442434",
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
		"sprintf_msvcrt14_esp+34": {
			"title": "Safe Visual Studio 2015-style sprintf (esp+34)",
			"code": "e8[strings_vsprintf_msvcrt14]89442434"
		},
		"sprintf_msvcrt14_esp+3c": {
			"title": "Safe Visual Studio 2015-style sprintf (esp+3c)",
			"code": "e8[strings_vsprintf_msvcrt14]8944243c"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"title": "Safe Visual Studio 2015-style sprintf (ebp-10c)",
			"code": "e8[strings_vsprintf_msvcrt14]8985f4feffff"
		},
		"sprintf_replay_use_ecx_2": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 9090"
		},
		"sprintf_replay_use_ecx_5": {
			"code": "e8[strings_sprintf] 83c4 0c 89c1 9090909090"
		},
		"sprintf_rep": {
			"code": "8b",
			"title": "Safe sprintf (replace)"
		},
		"meiryo_strcmp_remove": {
			"code": "9090",
			"title": "Don't restrict use of the Meiryo font to Japanese locale"
		},
		"ending_copy_rem" : {
			"title": "Remove the useless string copy and buffer overflow in ending messages, #1 (remember line start and skip to the end of the string)"
		},
		"ending_copy_rep" : {
			"code": "8b",
			"title": "Remove the useless string copy and buffer overflow in ending messages, #2 (LEA → MOV)"
		},
		"spell_align": {
			"title": "Correctly align right-aligned text (TH16+)",
			"code": "ff7518 56 e8[GetTextExtentForFontID] 83c008 d1e0 89c6 8b442410 8b4c240c 8b542414 8b4c8808 8bc1 c1f808 8b9482f0f48401 0fb6c1 8d0c40 8b8224010000 8b0cc8 8b451c 8d1400 89f0 8b742410 909090"
		},
		"antitamper_remove_check": {
			"title": "Don't quit the game on an invalid anti-tampering checksum",
			"code": "33c0 c3"
		},
		"hud_force_redraw": {
			"title": "Redraw the HUD every frame, because we might be drawing TL notes there",
			"code": "eb"
		}
	},
	"breakpoints": {
		"ruby_offset": {
			"font_dialog": 0,
			"font_ruby": 2
		},
		"ascii_params": {
			"cavesize": 5
		}
	},
	"tlnotes": {
		"reference_resolution": [1280, 960],
		"font": "'MS Gothic' 32 0 400 DEFAULT_QUALITY",
		"valign": "bottom"
	}
}
