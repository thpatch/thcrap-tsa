{
	"binhacks": {
		"sprintf_msvcrt14_esp+34": {
			"addr": [
				"Rx74309",
				"Rx74429"
			]
		},
		"sprintf_msvcrt14_esp+3c": {
			"addr": "Rx74599"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"addr": "Rx087BF"
		},
		"sprintf_rep": {
			"addr": [
				"Rx087CD",
				"Rx743A6",
				"Rx743B7",
				"Rx74474",
				"Rx74517",
				"Rx74528",
				"Rx7466D"
			]
		},
		"th17_textbox_size": {
			"addr": ["Rx2cac4", "Rx2cdb4"]
		},
		"spell_align": {
			"addr": "Rx74480"
		},
		"result_spell_align": {
			"addr": "Rx74651"
		},
		"trophy_remove_copy_and_push_result": {
			"addr": "Rx5de7b",
			"code":"90 90 90 90 90 52 90 90 90 90 90 90 90 8B00898340020000 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90",
			"comment": "The game copies the string into a static buffer. This binhack begins with the gentext#trophy_ingame breakpoint (the 5 first nop will be replaced with the breakpoint call), then push the result, and removes the original string copy."
		},
		"trophy_remove_push": {
			"addr": "Rx5dec9",
			"code": "90 90 90 90 90",
			"comment": "This value was pushed in the trophy_remove_copy_and_push_result binhack"
		},
		"music_title_prepare": {
			"addr": "Rx5c56f",
			"code": "8b542414 52 31c0 50 50 50 a1 38565000"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "Rx0203c"
		},
		"file_load": {
			"addr": "Rx02074"
		},
		"file_loaded": {
			"addr": "Rx5e3d8"
		},
		"music_title": {
			"addr": "Rx5c573"
		},
		"music_cmt": {
			"addr": [
				"Rx5c7f9",
				"Rx5c8e9"
			]
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5e0eb"
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx5d28f"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5de7b"
		}
	},
	"tsa_font_block": {
		"addr": "Rx125F4C"
	}
}
