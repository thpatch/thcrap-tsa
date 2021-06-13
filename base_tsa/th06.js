{
	"binhacks": {
		"sprintf_replay_1": {
			"code": "e8[strings_sprintf] 83c4 0c 909090 6a 01",
			"title": "Replay name sprintf 1"
		},
		"sprintf_replay_2": {
			"code": "e8[strings_sprintf] 83c4 0c ffb5 58ffffff 830424 34 909090909090",
			"title": "Replay name sprintf 2"
		},
		"sprintf_replay_3": {
			"code": "e8[strings_sprintf] 83c4 0c 6a 01 8945 a8",
			"title": "Replay name sprintf 3"
		},
		"file_remove_size_assignment": {
			"code": "83c404 90909090909090",
			"title": "Remove the assignment of the file size global, which we did in th06_file_load before"
		},
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
			"code": "52 ff75b0 e8[GetTextExtentForFontID] 83c002 50 db04e4 58 90909090909090",
			"title": "Correct right-alignment"
		},
		"spell_draw_leftaligned": {
			"title": "Draw boss spell cards left-aligned rather than right-aligned, since we right-align the position of the reduced sprite instead"
		},
		"spell_width": {
			"code": "8b450c 6a0f 50 e8[GetTextExtentForFontID] 83c004 50 3edb04e4 58 8b4df4 8b89c0000000 d94118 d8d1 dfe0 f6c401 7402 d9c9 ddd8 d9510c d95130 d9c0 d94118 def9 d95924 909090909090",
			"title": "Calculate the correct width of the player and boss spell card background boxes"
		},
		"center_align": {
			"code": "ff75ac ff7518 e8[GetTextExtentForFontID] 83c002 d1f8 50 db04e4 58 eb17 9090",
			"title": "Correct center-alignment"
		},
		"bomb_pos": {
			"code": "68 +0.5f d90424 59 8b5804 8db374200000 8dbb94220000 8b4e30 53 ff36 d94130 d94118 d9c1 d8cb dee9 d82e d91e a5 a5 a5 8d76f4 d94008 dee9 dec9 d806 89d8 909090909090909090",
			"title": "Correctly align the position of the bomb name sprites"
		},
		"spell_pos": {
			"code": "68 +0.5f d90424 59 8b5804 8db384210000 8dbba4230000 8b4e30 53 ff36 d94130 d94118 d9c1 d8cb dee9 d806 d91e a5 a5 a5 8d76f4 d9400c dee9 dec9 d806 89d8 909090909090909090",
			"title": "Correctly align the position of the spell card name sprites"
		},
		"spell_pos_reset": {
			"title": "Reset the bomb/spell card name sprite position after the sprite rendering call to the unmanipulated one to avoid animation glitches"
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
		"result_spell_cap_pos_1": {
			"code": "ff30 68 +472.0f d80424 59 90",
			"title": "(Result screen) Move the capture rate to the right to match the maximum on-screen spell card length (#1: Save original coordinate and move)"
		},
		"result_spell_cap_pos_2": {
			"code": "8f00 9090909090909090909090909090",
			"title": "(Result screen) Move the capture rate to the right to match the maximum on-screen spell card length (#2: Restore)"
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
		"text_scale_x": {
			"title": "Fix text scaling, #1: Correct width",
			"code": "8d0400 90"
		},
		"text_scale_y": {
			"title": "Fix text scaling, #2: Hardcode the DIB copy region height to 32, matching the hardcoded sprite copy region of 16 above",
			"code": "c745a020000000"
		},
		"sprite3d_rotated_voodookill": {
			"code": "837a7c00 7502 ebd6 8bf2 83c63c b910000000 8dbd40ffffff f3a5 8b5508 83ef40 d907 d84a1c 8b8ac0000000 6800008043 d94118 d90424 def9 dec9 d91f d94218 d9e0 d84f14 d94114 d90424 def9 dec9 59 d95f14 d902 d9ee ded9 dfe0 f6c444 7b23",
			"title": "Correctly scale rotated sprites in 3D space from textures wider than 256 pixels"
		},
		"sprite3d_unrotated_voodookill": {
			"code": "8b5508 8b8ac0000000 8dbd40ffffff 7414 d9412c d84a18 d9e8 d9e8 dec1 def9 d86f34 d95f34 8b8298000000 894738 d907 d84a1c 6800008043 d94118 d90424 def9 dec9 d91f d94218 d9e0 d84f14 d94114 d90424 def9 dec9 58 d95f14 90",
			"title": "Correctly scale unrotated sprites in 3D space from textures wider than 256 pixels"
		},
		"ending_copy_rem": {
			"code": "8B8548FFFFFF8B886C110000 894dd0 803900 7406 41 ff45cc ebf5 89886c110000 909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Remove the 32-byte split in ending messages, #1 (remember line start and skip to the end of the string)"
		},
		"ending_copy_rep": {
			"code": "8b55d0 5268D0D0C0008B8548FFFFFF",
			"title": "Remove the 32-byte split in ending messages, #2 (LEA → MOV)"
		},
		"remove_score_cap": {
			"title": "Don't cap the score at 999,999,990",
			"code": "ffffff7f"
		},
		"bosstitle_line_order#1": {
			"title": "Render the two boss title lines in the opposite order, #1: Name",
			"code": "a02a0000"
		},
		"bosstitle_line_order#2": {
			"title": "Render the two boss title lines in the opposite order, #2: Title",
			"code": "90290000"
		},
		"ascii_patch_1": {
			"title": "Hook ZUN's variadic ASCII printing function to perform a bunch of intricate hacks in C++ code (#1: Call, and write the inner function)",
			"code": "50 ff7510 ff750c e80b000000 83c00f 50 e8[ascii_vpatchf] eb1d | 8b0424 c3 | ff74240c ff74240c 8b4c240c 90"
		},
		"ascii_patch_2": {
			"title": "Hook ZUN's variadic ASCII printing function to perform a bunch of intricate hacks in C++ code (#2: Return from the inner function)",
			"code": "c3 909090909090"
		},
		"result_rank_format": {
			"title": "Run the Result rank string through the variadic ASCII printing function"
		},
		"result_shottype_leftalign_1": {
			"title": "Work around broken shot type centering in the result screen by just rendering them left-aligned (for now) (#1)"
		},
		"result_shottype_leftalign_2": {
			"title": "Work around broken shot type centering in the result screen by just rendering them left-aligned (for now) (#2)"
		},
		"result_shottype_leftalign_3": {
			"title": "Work around broken shot type centering in the result screen by just rendering them left-aligned (for now) (#3)"
		},
		"result_shottype_leftalign_4": {
			"title": "Work around broken shot type centering in the result screen by just rendering them left-aligned (for now) (#4)"
		},
		"hud_force_redraw": {
			"code": "909090909090"
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
		"gentext#stage_title": {
			"file": "stages.js",
			"line": 0,
			"str": "eax",
			"cavesize": 8
		},
		"spell_name": {
			"spell_id": "ecx",
			"spell_name": "eax",
			"cavesize": "5"
		},
		"spell_name#result": {
			"spell_id_real": "eax",
			"spell_id": "eax",
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
		},
		"textimage_set#stage": {
			"cavesize": 9
		},
		"textimage_set#bossbgm": {
			"cavesize": 9
		},
		"textimage_is_active#sttitle": {
			"slots": "0x700",
			"cavesize": 5
		},
		"textimage_is_active#stlogo": {
			"slots": "ti_stlogo.png",
			"cavesize": 5
		},
		"textimage_is_active#bgm": {
			"slots": "0x701",
			"cavesize": 5
		},
		"textimage_is_active#boss": {
			"slots": ["0x704", "0x705"],
			"cavesize": 5
		},
		"textimage_init": {
			"images": {
				"0x700": [{
					"filename": "ti_sttitle.png",
					"texture_slot": 47,
					"sprite_w": 384,
					"sprite_h": 16
				}, {
					"filename": "ti_stlogo.png",
					"texture_slot": 47,
					"sprite_w": 384,
					"sprite_h": 48
				}],
				"0x701": {
					"filename": "ti_bgm.png",
					"texture_slot": 48,
					"sprite_w": 384,
					"sprite_h": 32,
					"script": "00000104 01000000 00001700 0000110c +384.0f +416.0f +0.0f 78001310 -0.5f +415.5f 00000000 2d000000 a4011310 +0.0f +464.0f 00000000 1e000000 c2010000"
				},
				"0x704": {
					"filename": "ti_bosstitle.png",
					"texture_slot": 49,
					"sprite_w": 384,
					"sprite_h": 64,
					"script": "00000104 04000000 0000110c +224.0f +352.0f +0.0f 00000304 00000000 00000c08 f0000000 3c000000 68010c08 00000000 3c000000 a4010000"
				},
				"0x705": {
					"filename": "ti_bossname.png",
					"texture_slot": 50,
					"sprite_w": 384,
					"sprite_h": 64,
					"script": "00000104 05000000 0000110c +224.0f +352.0f +0.0f 00000304 00000000 00000c08 f0000000 3c000000 68010c08 00000000 3c000000 a4010000"
				}
			},
			"groups": [["0x704", "0x705"]],
			"cavesize": 5
		},
		"ascii_params": {
			".Scale": "0x6228",
			"CharWidth": 14.0
		}
	},
	"tlnotes": {
		"region_size": [384, 412],
		"region_topleft": [864, 516]
	}
}
