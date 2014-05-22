{
	"binhacks": {
		"menu_desc_align": {
			"code": "8b550c8b92e4010000d94230d84a34d835708a4900d84204ff75b0e8[GetTextExtent]83c004d1e850db04e4588b4d0c8b91e4010000d84a34eb3e9090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Menu description alignment"
		},
		"boss_title_align": {
			"code": "8b45b050e8[GetTextExtent]83c004503edb04e458909090909090",
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
			"cavesize": 5
		},
		"file_size": {
			"file_size": "ecx",
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
		"spell_id#result": {
			"spell_id_real": "eax",
			"cavesize": "8"
		},
		"spell_name#result": {
			"spell_name": "eax",
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
		}
	}
}
