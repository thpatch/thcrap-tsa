{
	"binhacks": {
		"buffer_overflow_rem": {
			"code": "eb1990",
			"title": "Fix buffer overflows (remove copy)"
		},
		"buffer_overflow_rep_eax": {
			"code": "8b4518",
			"title": "Fix buffer overflows (replace EAX)"
		},
		"buffer_overflow_rep_ecx": {
			"code": "8b4d18",
			"title": "Fix buffer overflows (replace ECX)"
		},
		"right_align": {
			"code": "8b45b050e8[GetTextExtent]83c004503edb04e458",
			"title": "Correct right-alignment"
		},
		"spell_align": {
			"code": "eb25909090909090909090909090909090909090909090909090909090909090909090909090908b450c50e8[GetTextExtent]503edb04e458eb0b",
			"title": "Spell card and bomb text alignment"
		},
		"stage_title_align": {
			"code": "8b451850e8[GetTextExtent]d1f883c004503edb04e458eb18",
			"title": "Stage title alignment"
		},
		"spell_align_sillyness": {
			"code": "909090909090909090909090",
			"title": "Fix spell align sillyness"
		},
		"spell_prepare": {
			"code": "8b75e489f183c10c894de80fbf460490",
			"title": "Prepare ECL instruction register for spell ID fetching"
		},
		"spell_fetch_id": {
			"code": "0fbf4e0e89f083c010500fbf560c",
			"title": "Fetch spell ID"
		},
		"unpatch_result_spell": {
			"code": "89c1c1e10681c1e8bc6900516a0068ffffff00",
			"title": "Remove English patch spell translation lookup in the Result screen"
		},
		"set_png_buff_size": {
			"code": "baffffff7f90",
			"title": "Remove a buffer overflow check in PNG reading (because we usually provide a bigger buffer)"
		},
		"music_room_cmt_print_empty_lines": {
			"code": "9090",
			"title": "In music comment, render text strings even if they are empty in the source file"
		},
		"music_room_cmt_shift_2nd_part": {
			"code": "8B45FC8B1588456D0081C2348A01006BC03801C2C702000077C383EA70C702000077C3909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "In music comment, shift the 2nd half of the text 247px to the left"
		},
		"text_1024": {
			"code": "68 00040000",
			"title": "Enlarge the width of the text surface to 1024 pixels"
		},
		"text_prepare_surface_width": {
			"code": "8b45a8 9090",
			"title": "Use the surface width rather than the sprite width when preparing the text rendering bitmap"
		},
		"text_prepare_surface_width_trial_1": {
			"code": "50 ff7588 56 56",
			"title": "Use the surface width rather than the sprite width when preparing the text rendering bitmap (Trial, #1)"
		},
		"text_prepare_surface_width_trial_2": {
			"code": "8d4d84 ff7588 90",
			"title": "Use the surface width rather than the sprite width when preparing the text rendering bitmap (Trial, #2)"
		},
		"text_sprite_height": {
			"expected": "14",
			"code": "2c",
			"title": "Use sprite height for text sprites, not texture height"
		},
		"text_sprite_width": {
			"expected": "18",
			"code": "30",
			"title": "Calculate text alignment based on sprite width, not texture width"
		},
		"sprite3d_rotated_voodookill": {
			"code": "83ef40 d907 d84a1c 8b8ac0000000 6800008043 d94118 d90424 def9 dec9 59 d91f d94218 d9e0 d84f14 d95f14 d902 d9ee ded9 dfe0 f6c444 7b23",
			"title": "Correctly scale rotated sprites in 3D space from textures wider than 256 pixels"
		},
		"sprite3d_unrotated_voodookill": {
			"code": "8b5508 8b8ac0000000 8dbd40ffffff 7414 d9412c d84a18 d9e8 d9e8 dec1 def9 d86f34 d95f34 8b8298000000 894738 d907 d84a1c 6800008043 d94118 d90424 def9 dec9 58 d91f 9090",
			"title": "Correctly scale unrotated sprites in 3D space from textures wider than 256 pixels"
		}
	},
	"title": "東方紅魔郷　～ the Embodiment of Scarlet Devil",
	"url_update": "http://www16.big.or.jp/~zun/html/th06.html",
	"url_trial": "http://www16.big.or.jp/~zun/html/th06.html",
	"latest": [
		"v0.13",
		"v1.02h"
	],
	"formats": {
		"msg": "msg06"
	},
	"breakpoints": {
		"th06_file_name": {
			"cavesize": "5"
		},
		"th06_file_size": {
			"file_size": "eax",
			"cavesize": "5"
		},
		"th06_file_load": {
			"file_buffer": "eax",
			"eip_jump_dist": "0x277",
			"cavesize": "5"
		},
		"th06_file_loaded": {
			"cavesize": "7"
		},
		"spell_name": {
			"spell_id": "ecx",
			"spell_name": "eax",
			"cavesize": "5"
		},
		"spell_name#result": {
			"spell_id_real": "eax",
			"spell_name": "ecx",
			"cavesize": "8"
		},
		"th06_time_fix": {
			"time": "eax",
			"cavesize": "10"
		},
		"music_title#track": {
			"track": "ecx",
			"cavesize": "9"
		},
		"music_title": {
			"str": "eax",
			"cavesize": "6"
		},
		"th06_music_title_in_game#stage_num": {
			"stage": "eax",
			"cavesize": "13"
		},
		"th06_music_title_in_game": {
			"str": "eax",
			"cavesize": "6"
		},
		"th06_music_title_in_game#boss": {
			"str": "eax",
			"cavesize": "6",
			"offset": 1
		},
		"music_cmt#track0": {
			"track": "eax",
			"cavesize": "5"
		},
		"music_cmt#track": {
			"track": "eax",
			"cavesize": "6"
		},
		"music_cmt#line_num": {
			"line_num": "eax",
			"cavesize": "7"
		},
		"music_cmt": {
			"str": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "6"
		}
	}
}
