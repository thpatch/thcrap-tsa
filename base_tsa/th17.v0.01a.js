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
		},
		"trophy_ingame_lineflip_1": {
			"addr": "Rx5deac"
		},
		"trophy_ingame_lineflip_2": {
			"addr": "Rx5def0"
		},
		"trophy_ingame_right_align_1": {
			"addr": "Rx5dee1",
			"code": "0b65"
		},
		"trophy_ingame_right_align_2": {
			"addr": "Rx5df18",
			"code": "d464"
		},
		"ruby_prepare_1": {
			"addr": "Rx2c9f3",
			"code": "BE 11 60 52 00 56 90 90 90 E8 82 46 05 00 83 C4 04 8B D8 6A 2C 56",
			"title": "Put the static ruby string address 526011 in esi"
		},
		"ruby_prepare_2": {
			"addr": "Rx2cce3",
			"code": "BE 11 60 52 00 56 90 90 90 E8 92 43 05 00 83 C4 04 8B D8 6A 2C 56",
			"title": "Put the static ruby string address 526011 in esi"
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
		"spell_id": {
			"addr": "Rx23734"
		},
		"spell_id#real": {
			"addr": "Rx1A93E"
		},
		"spell_name": {
			"addr": "Rx1AB50"
		},
		"spell_id#result": {
			"addr": "Rx5A16D"
		},
		"spell_name#result": {
			"addr": "Rx5A2A7"
		},
		"gentext#trophy_result_desc": {
			"addr": "Rx5e0eb"
		},
		"gentext#trophy_result_nickname": {
			"addr": "Rx5d28f"
		},
		"gentext#trophy_ingame": {
			"addr": "Rx5de7b"
		},
		"ruby_offset": {
			"addr": [
				"Rx2ccf1",
				"Rx2ca01"
			]
		}
	},
	"tsa_font_block": {
		"addr": "Rx125F4C"
	}
}
