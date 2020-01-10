{
	"binhacks": {
		"sprintf_replay_1": {
			"title": "Replay name sprintf 1",
			"code": "e8[strings_sprintf] 83c4 0c 33d2 42 89c1 90"
		},
		"sprintf_replay_2": {
			"title": "Replay name sprintf 2",
			"code": "e8[strings_sprintf] 83c4 0c 8b95 60ffffff 83c2 44 89c1 90909090"
		},
		"sprintf_replay_3": {
			"title": "Replay name sprintf 3",
			"code": "e8[strings_sprintf] 83c4 0c 33d2 42 8945 b0 89c1 e8 e168fdff 8945 f0 85c0 9090 74 c3"
		},
		"boss_title_align": {
			"code": "ff75ac ff75b0 e8[GetTextExtentForFontID] 83c004 50 db04e4 58 9090909090",
			"title": "Boss title alignment"
		},
		"spell_loop": {
			"code": "31f6eb0789f083c00189c683fe30731589f10fb6540dcc81f2aa00000089f0885405ccebdf8d4dcc908b559c0fbf420e909090909051",
			"title": "Rewrite spell card name decryption loop"
		},
		"music_cmt_prepare": {
			"code": "31c0488945f8",
			"title": "Prepare Music Room comment line number fetching"
		},
		"music_cmt_prepare_first": {
			"code": "31c0488945fc",
			"title": "Prepare Music Room comment line number fetching (first comment)"
		},
		"unpatch_result_spell": {
			"code": "8b45fc6bc07805b3626200",
			"title": "Remove English patch spell translation lookup in the Result screen"
		},
		"ending_copy_rem" : {
			"code": "8955b0 803a00 742f 42 ff45ac ebf5 9090909090909090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"bosstitle_line_order#1": {
			"title": "Render the two boss title lines in the opposite order, #1: Name",
			"code": "3c070200"
		},
		"bosstitle_line_order#2": {
			"title": "Render the two boss title lines in the opposite order, #2: Title",
			"code": "f0040200"
		}
	},
	"title": "東方妖々夢　～ Perfect Cherry Blossom",
	"url_update": "http://www16.big.or.jp/~zun/html/th07_update.html",
	"url_trial": "http://www16.big.or.jp/~zun/html/th07_update.html",
	"latest": "v1.00b",
	"formats": {
		"msg": "msg06",
		"anm": "anm06"
	},
	"breakpoints": {
		"file_name": {
			"file_name": "eax",
			"cavesize": 6
		},
		"file_size": {
			"file_size": "eax",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "6"
		},
		"spell_name": {
			"spell_id": "eax",
			"spell_name": "ecx",
			"cavesize": "5"
		},
		"spell_name#result": {
			"spell_id": "eax",
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "8"
		},
		"music_title#track": {
			"track": "eax",
			"cavesize": "5"
		},
		"music_title": {
			"str": "eax",
			"cavesize": "6"
		},
		"music_cmt#track": {
			"track": "ecx",
			"cavesize": "8"
		},
		"music_cmt#line_num": {
			"line_num": "eax",
			"cavesize": "8"
		},
		"music_cmt": {
			"str": "eax",
			"format_id": "Music Room Note Title",
			"cavesize": "6"
		},
		"textimage_set": {
			"cavesize": 7
		},
		"textimage_is_active": {
			"slots": ["0x702", "0x703"],
			"cavesize": 5
		},
		"textimage_init": {
			"images": {
				"0x702": {
					"filename": "ti_bosstitle.png",
					"texture_slot": 50,
					"sprite_w": 384,
					"sprite_h": 64,
					"script": "0300 0c00 00000000 02000000 0600 1400 00000000 +224.0f +352.0f +0.0f 0800 0c00 00000000 00000000 0f00 1000 00000000 f0000000 3c000000 0f00 1000 68010000 00000000 3c000000 0100 0800 a4010000 ffff"
				},
				"0x703": {
					"filename": "ti_bossname.png",
					"texture_slot": 51,
					"sprite_w": 384,
					"sprite_h": 64,
					"script": "0300 0c00 00000000 03000000 0600 1400 00000000 +224.0f +352.0f +0.0f 0800 0c00 00000000 00000000 0f00 1000 00000000 f0000000 3c000000 0f00 1000 68010000 00000000 3c000000 0100 0800 a4010000 ffff"
				}
			},
			"groups": [["0x702", "0x703"]],
			"cavesize": 7
		}
	},
	"tlnotes": {
		"region_size": [384, 512],
		"region_topleft": [864, 416]
	}
}
