{
	"steam_appid": "1420650",
	"binhacks": {
		"overflow_spell_menu_rep": {
			"code": "8b5518",
			"title": "Fix buffer overflow in menu spell name rendering (replace pointer)"
		},
		"overflow_spell_ingame_rep": {
			"code": "53909090909090",
			"title": "Fix buffer overflow in in-game spell name rendering (replace pointer)"
		},
		"spell_align_menu": {
			"code": "8b550c8b8244020000d94034d84838d83538534900d84008ff35b0444c00ff7518e8[GetTextExtentForFont]d1e850db04e458eb689090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Spell card alignment (menu)"
		},
		"spell_align": {
			"code": "8b550c8b8244020000d94034d84838d840088b5d18ff35b0444c0053e8[GetTextExtentForFont]83c00450db04e458e996000000909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Spell card alignment (in-game)"
		},
		"music_cmt_prepare": {
			"code": "89c1c1e1098d940a002000008b4ddcc1e10601ca8b4ddc5290909090909090",
			"title": "Prepare Music Room comment parameter fetching"
		},
		"unpatch_font_small": {
			"code": "6a006a1e",
			"title": "Reset English patch small font size"
		},
		"unpatch_spell_scale": {
			"code": "0f",
			"title": "Reset English patch spell scaling thingy"
		},
		"help_align_1": {
			"title": "Center-align help string #1"
		},
		"help_align_2": {
			"title": "Center-align help string #2"
		}
	},
	"title": "東方文花帖　～ Shoot the Bullet",
	"url_update": "http://kourindou.exblog.jp/2461295/",
	"latest": "v1.02a",
	"formats": {
		"anm": "anm06"
	},
	"breakpoints": {
		"mission": {
			"line": 8,
			"stage": 12,
			"scene": 16,
			"ret_fixup": 16,
			"cavesize": 6
		},
		"file_size": {
			"file_size": "eax",
			"file_name": "[ebp-8]",
			"cavesize": 7
		},
		"file_load": {
			"file_buffer": "edx",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "eax",
			"cavesize": "8"
		},
		"spell_name#menu": {
			"spell_name": "edx",
			"cavesize": "8"
		},
		"music_title#track": {
			"track": "ecx",
			"cavesize": "9"
		},
		"music_title": {
			"str": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "8"
		},
		"music_cmt": {
			"track": "eax",
			"line_num": "ecx",
			"str": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"gentext#help_id": {
			"file": "help.js",
			"ids": "edx",
			"cavesize": 5
		},
		"gentext#help_line_1": {
			"str": "eax",
			"cavesize": 6
		},
		"gentext#help_line_2": {
			"str": "edx",
			"cavesize": 6
		}
	},
	"tlnotes": {
		"region_size": [184, 476],
		"region_topleft": [1064, 160],
		"valign": "top"
	}
}
