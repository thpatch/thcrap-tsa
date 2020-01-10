{
	"title": "東方天空璋　～ Hidden Star in Four Seasons",
	"latest": [
		"v0.01a", "v1.00a"
	],
	"url_trial": "https://store.steampowered.com/app/745880/__Hidden_Star_in_Four_Seasons/",
	"formats": {
		"anm": "anm11",
		"msg": "msg11",
		"end": "end10"
	},
	"binhacks": {
		"music_title_prepare": {
			"code": "8b54241c 52 31c0 50 50 50"
		},
		"th15_textbox_size": {
			"code": "51 e8[GetTextExtent] 83e81c 7302 31c0 f30f1097b4010000 f30f108fb0010000 8b8f90010000 c1e902 909090909090909090",
			"title": "Correct text length calculation for the TH15 variety of Fairy Wars-style text boxes"
		}
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "edi",
			"cavesize": "5"
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"music_title": {
			"str": "edx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		},
		"music_cmt#line": {
			"line_num": "eax",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "eax",
			"track": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "eax",
			"cavesize": 6
		},
		"spell_id#real": {
			"spell_id_real": "ebx",
			"cavesize": "9"
		},
		"spell_name": {
			"spell_name": "esi",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "esi",
			"spell_rank": "eax",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "7"
		},
		"spell_name#practice": {
			"spell_id_real": "edi",
			"spell_rank": "ebx",
			"spell_name": "eax",
			"cavesize": 9
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "5"
		}
	},
	"tsa_font_block": {
		"offset": 4,
		"min": 0,
		"max": 8
	},
	"tlnotes": {
		"region_size": [400, 428],
		"region_topleft": [856, 504]
	}
}
