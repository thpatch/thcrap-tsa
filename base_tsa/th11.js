{
	"steam_appid": "1100150",
	"binhacks": {
		"sprintf_replay_push_result_1": {
			"code": "e8[strings_sprintf] 83c4 0c 50 90909090"
		},
		"sprintf_replay_push_result_2": {
			"code": "e8[strings_sprintf] 83c4 0c 50 90909090909090"
		},
		"spell_align": {
			"code": "8b960804000051d1ea83e20152ffb4e4a8000000ffb4e4a8000000ff35ec2e4c0053e8[GetTextExtentForFont]83c00450db04e45885c0",
			"title": "Spell card alignment"
		},
		"unpatch_font_assist": {
			"code": "6a00",
			"title": "Reset English patch assist font width"
		},
		"directinput_fix_1": {
			"title": "Correctly initialize DirectInput, #1: Juggle input registers from DInput init to window creation",
			"code": "50 8b18"
		},
		"directinput_fix_2": {
			"title": "Correctly initialize DirectInput, #2: Juggle input registers back and tail-call DInput init",
			"code": "58 31db e9 880d0000"
		},
		"directinput_fix_3": {
			"title": "Correctly initialize DirectInput, #3: Call the juggling prolog of the window creation function instead of DInput init"
		},
		"directinput_fix_4": {
			"title": "Correctly initialize DirectInput, #4: Don't create a second window, just check for an invalid handle"
		},
		"fix_alice_practice_end_crash": {
			"title": "Fix the crash when shooting with Alice's options during the pause menu after completing a stage in Practice mode"
		}
	},
	"title": "東方地霊殿　～ Subterranean Animism",
	"url_trial": "http://www16.big.or.jp/~zun/html/th11dl.html",
	"latest": "v1.00a",
	"formats": {
		"msg": "msg11",
		"anm": "anm11",
		"end": "end10"
	},
	"breakpoints": {
		"file_size": {
			"file_size": "edi",
			"file_name": "ebp",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "ebx",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "esi",
			"cavesize": "5"
		},
		"spell_id#real": {
			"spell_id_real": "esi",
			"cavesize": "7"
		},
		"spell_name": {
			"spell_name": "ebx",
			"cavesize": "9"
		},
		"spell_id#result": {
			"spell_id_real": "edi",
			"spell_rank": "esi",
			"cavesize": "7"
		},
		"spell_name#result": {
			"spell_name": "edx",
			"cavesize": "8"
		},
		"music_title": {
			"str": "edx",
			"track": "ecx",
			"format_id": "Music Room Numbered Title",
			"cavesize": "9"
		},
		"music_cmt#track": {
			"track": "eax",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "ecx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "5"
		}
	},
	"tlnotes": {
		"region_size": [400, 560],
		"region_topleft": [856, 368]
	}
}
