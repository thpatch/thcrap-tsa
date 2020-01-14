{
	"binhacks": {
		"file_decrypted_buffer_size": {
			"code": "51",
			"title": "Use a scratch register to control the size of the final file buffer only (requires a file_size breakpoint writing to ECX on the same address)"
		},
		"sprintf_call_1": {
			"code": "50e8[strings_vsprintf]894580",
			"title": "Safe sprintf (first call)"
		},
		"sprintf_call_2": {
			"code": "50e8[strings_vsprintf]8945b8",
			"title": "Safe sprintf (second call)"
		},
		"sprintf_replay_2": {
			"code": "e8[strings_sprintf] 8b0d 647e4a00 83c4 0c 8dbb 8c000000 57 89c2 90909090",
			"title": "Replay name sprinf 2"
		},
		"music_title_prepare": {
			"code": "8d8c0fdca301005153518b8e901b0100e861c9fdff598b45ec803c1800742b8d9361ffffff8b45f450688020300068ffe0d000909090909090",
			"title": "Prepare Music Room title parameter fetching"
		},
		"music_cmt_rewrite": {
			"code": "d1e872064883f8077605e9ee01000069f8a4020000c68437029f0100018dbc37049d01008b9e741b010080bbac814a000074196bd04269cb9202000001ca8d8c32b6c900009090909090eb078b0c85bc1d4a0089f85131dbe98701000090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Rewrite Music Room comment render calls"
		},
		"ending_copy_rem" : {
			"code": "8945b0 803800 740c 40 47 ebf7 9090909090909090"
		},
		"menu_desc_align_1": {
			"code": "83c40c ff750c 50 e8[GetTextExtentForFontID] d1e0 8bb724020000 ff76 3c d94618 8b4d14 909090909090",
			"title": "Menu description alignment, #1: Calculate the correct length"
		},
		"menu_desc_align_2": {
			"code": "9090909090909090909090",
			"title": "Menu description alignment, #2: Don't multiply the length by 15"
		},
		"joy_config_fix": {
			"code": "9056",
			"title": "Poll the right joypad in pad config (non-DirectInput)"
		},
		"spell_copy_rem": {
			"code": "894618 90909090909090",
			"title": "Spell card patching, #1: Remove the useless copy to allow patching by replacing the pointer"
		},
		"spell_copy_rep": {
			"code": "8b4618 50",
			"title": "Spell card patching, #2: LEA → MOV, consistent register"
		}
	},
	"title": "東方花映塚　～ Phantasmagoria of Flower View",
	"url_update": "http://kourindou.exblog.jp/1327589/",
	"url_trial": "http://www16.big.or.jp/~zun/html/th09dl.html",
	"latest": ["v0.02a", "v1.50a"],
	"formats": {
		"msg": "msg09",
		"anm": "anm06"
	},
	"breakpoints": {
		"file_size#for_caller": {
			"file_size": "eax",
			"file_name": "ecx",
			"cavesize": 6
		},
		"file_size#for_encrypted_buffer": {
			"file_size": "eax"
		},
		"file_size#for_decrypted_buffer": {
			"file_size": "ecx",
			"cavesize": 6
		},
		"file_load": {
			"file_buffer": "eax",
			"eip_jump_dist": "0xa5",
			"cavesize": "7"
		},
		"file_loaded": {
			"file_buffer": "esi",
			"cavesize": "5"
		},
		"music_title": {
			"track": "edx",
			"str": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "6"
		},
		"music_cmt": {
			"track": "ebx",
			"line_num": "eax",
			"str": "ecx",
			"cavesize": "5"
		},
		"spell_name": {
			"spell_id_real": "[[esi+8]+0x20]*10+[ebp+8]",
			"spell_id": "[[esi+8]+0x20]*10",
			"spell_name": "eax",
			"cavesize": 5
		}
	},
	"tlnotes": {
		"region_size": [1024, 192],
		"region_topleft": [128, 160],
		"font": "'MS Gothic' 48 0 400 DEFAULT_QUALITY",
		"valign": "top"
	}
}
