{
	"binhacks": {
		"sprintf_call_ebp-50": {
			"addr": "Rx34c8b"
		},
		"sprintf_rep": {
			"addr": "Rx34d8e"
		},
		"file_remove_size_assignment": {
			"addr": "Rx1e399"
		},
		"buffer_overflow_rem": {
			"addr": [
				"0x434b85",
				"0x434e63"
			]
		},
		"buffer_overflow_rep_eax": {
			"addr": [
				"0x434ba0",
				"0x434f74"
			]
		},
		"buffer_overflow_rep_ecx": {
			"addr": [
				"0x434d17",
				"0x434ef7"
			]
		},
		"right_align": {
			"addr": "0x434d72"
		},
		"spell_align": {
			"addr": [
				"0x417b92",
				"0x417cc8"
			]
		},
		"stage_title_align": {
			"addr": "0x434f3c"
		},
		"spell_align_sillyness": {
			"addr": [
				"0x41affc",
				"0x41b0b0"
			]
		},
		"spell_prepare": {
			"addr": "0x407509"
		},
		"spell_fetch_id": {
			"addr": "0x409622"
		},
		"unpatch_result_spell": {
			"addr": "0x42e2a9"
		},
		"set_png_buff_size": {
			"addr": [
				"0x4319dc",
				"0x431aac"
			]
		},
		"music_room_cmt_print_empty_lines": {
			"addr": [
				"0x00425c3a",
				"0x004250c9"
			]
		},
		"music_room_cmt_shift_2nd_part": {
			"addr": "0x425b9b"
		},
		"text_1024": {
			"addr": "Rx1f014"
		},
		"text_prepare_surface_width": {
			"addr": ["Rx1f0dd", "Rx1f16a"]
		},
		"text_sprite_height": {
			"addr": ["Rx34cc6",            "Rx34db5", "Rx34ea6",            "Rx34f9b"]
		},
		"text_sprite_width": {
			"addr": ["Rx34cd8", "Rx34d55", "Rx34dc7", "Rx34eb8", "Rx34f32", "Rx34fad"]
		},
		"sprite3d_rotated_voodookill": {
			"addr": "Rx331ba"
		},
		"sprite3d_unrotated_voodookill": {
			"addr": "Rx33709"
		},
		"ending_copy_rem": {
			"addr": "Rx103f2"
		},
		"ending_copy_rep": {
			"addr": "Rx104d5"
		},
		"unpatch_ending_halfskip": {
			"addr": "Rx10521",
			"title": "Unpatch the static English patch's rendering skip of the second-half ending text sprite",
			"code": "-.-7402EB21C745FC01000000C745CC00000000B90900000033C08D7DD0-.-"
		},
		"remove_score_cap": {
			"addr": ["0x41b8b0", "0x41b8bc"]
		}
	},
	"breakpoints": {
		"th06_file_name": {
			"addr": "0x41e370",
			"file_name": "ecx"
		},
		"th06_file_size": {
			"addr": "0x43cb91"
		},
		"th06_file_load": {
			"addr": "0x43cbac",
			"file_size": "[0x69d914]"
		},
		"th06_file_loaded": {
			"addr": "0x43ce19"
		},
		"spell_name": {
			"addr": "0x40962b"
		},
		"spell_name#result": {
			"addr": "0x42e2b4"
		},
		"music_title#track": {
			"addr": "0x425a19"
		},
		"music_title": {
			"addr": "0x425a66"
		},
		"th06_music_title_in_game#stage_num": {
			"addr": "0x404510"
		},
		"th06_music_title_in_game": {
			"addr": "0x4185b0"
		},
		"th06_music_title_in_game#boss": {
			"addr": "0x418d4f"
		},
		"music_cmt#track0": {
			"addr": "0x425b87"
		},
		"music_cmt#track": {
			"addr": "0x425090"
		},
		"music_cmt#line_num": {
			"addr": [
				"0x425c17",
				"0x4250a6"
			]
		},
		"music_cmt": {
			"addr": [
				"0x425c67",
				"0x4250f6"
			]
		},
		"th06_time_fix": {
			"addr": "0x4208fb"
		}
	}
}
