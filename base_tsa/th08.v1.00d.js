{
	"codecaves": {
		"stage_result_align": "56 8d75 f4 6a 00 68 004f4b00 e8[strings_lookup] 89c1 41 8339 00 75 fa 29c1 c1e1 03 b8 c8000000 2bc1 8906 db06 d91e 83c4 08 5e c3",
		"TH8ScorefileFixer_VRSMContents": "303130306400 // 0000 // 00D40C00 // B96168A2",
		"TH8ScorefileFixer_FixVRSM": "85C0 // 74 0C // 40 // C3 // CCCCCCCCCCCCCCCCCCCC // 0F2805 <codecave:TH8ScorefileFixer_VRSMContents> // 0F1101 // 0F1745 0C // 89C8 // C3"
	},
	"binhacks": {
		"antitamper_remove_check": {
			"addr": "Rx0bb80"
		},
		"file_size_for_caller_rearrange": {
			"addr": "Rx3e6f0"
		},
		"sprintf_call_ebp-50": {
			"addr": "Rx6668e"
		},
		"sprintf_call_ebp-88": {
			"addr": [
				"0x4663d7",
				"0x4664ed"
			]
		},
		"sprintf_replay_1": {
			"addr": "Rx56d99"
		},
		"sprintf_replay_2": {
			"addr": "Rx5745a"
		},
		"sprintf_replay_3": {
			"addr": "Rx6e24c"
		},
		"sprintf_rep": {
			"addr": [
				"0x466407",
				"0x4665c7",
				"Rx6673b",
				"Rx6e29e"
			]
		},
		"sprintf_call_ebp-208": {
			"addr": "Rx2A47"
		},
		"spell_align": {
			"addr": "0x466585"
		},
		"menu_desc_align": {
			"addr": "Rx666f2"
		},
		"music_title_prepare": {
			"addr": "0x449ac4"
		},
		"music_title_nowplaying_prepare": {
			"addr": "0x4490ce"
		},
		"music_cmt_rewrite": {
			"addr": "0x448eec"
		},
		"unpatch_font": {
			"addr": "Rx3fa07"
		},
		"inplace_xor_long_dst": {
			"addr": ["Rx347c2", "Rx348ce", "Rx34982"]
		},
		"inplace_xor_long_rep": {
			"addr": ["Rx347cd", "Rx348d9", "Rx3498d"]
		},
		"inplace_xor_short_dst": {
			"addr": "Rx34618"
		},
		"inplace_xor_short_rep": {
			"addr": "Rx34620"
		},
		"ending_copy_rem" : {
			"addr": "Rx2946d"
		},
		"ending_copy_rep" : {
			"addr": "Rx2934b"
		},
		"hud_force_redraw": {
			"addr": "Rx365bd"
		},
		"spell_name_replay": {
			"addr": "Rx6e833"
		},
		"stage_result_align_call": {
			"addr": "Rx382ac",
			"code": "e8[codecave:stage_result_align] 8d45 f4 90 7d12 68 1c4f4b00 50 68 20ce4c00 e8 69a7fcff eb 25 833d ccd26401 07 7c 0c d945 f8 d825 d4424b00 d95d f8 68 104f4b00"
		},
		"spell_ascii_numbers": {
			"addr": "Rx6d7bb"
		},
		"spell_ascii_numbers_2": {
			"addr": "Rx6d7ec"
		},
		"TH8ScorefileFixer": {
			"addr": "0x44869D",
			"code": "83C4 08 // 8B4D 08 // E8 [codecave:TH8ScorefileFixer_FixVRSM] // 8945 FC // 2B45 F0 // 2945 F4",
			"expected": "59 // 59 // 40 // 8945 FC // 8B45 FC // 2B45 F0 // 8B4D F4 // 2BC8 // 894D F4"
		}
	},
	"breakpoints": {
		"file_name": {
			"addr": "0x43e6dc"
		},
		"file_size#for_caller": {
			"addr": "0x43e6f3"
		},
		"file_size#for_encrypted_buffer": {
			"addr": "0x43e737"
		},
		"file_size#for_decrypted_buffer": {
			"addr": "0x43e225"
		},
		"file_load": {
			"addr": "0x43e753"
		},
		"file_loaded": {
			"addr": "0x43e490"
		},
		"spell_id": {
			"addr": "0x41535e"
		},
		"spell_name": {
			"addr": "0x415490"
		},
		"spell_name#practice_menu": {
			"addr": "0x46bed7"
		},
		"spell_name#result": {
			"addr": "0x45607d"
		},
		"spell_name#practice_menu_page": {
			"addr": "0x46c693"
		},
		"spell_name#practice_menu_details": {
			"addr": "0x46d894"
		},
		"spell_name#replay": {
			"addr": "Rx6e86d"
		},
		"spell_comment_line#1": {
			"addr": "0x46dea9"
		},
		"spell_comment_line#2": {
			"addr": "0x46e074"
		},
		"spell_owner": {
			"addr": "0x46d934"
		},
		"music_title": {
			"addr": "0x449ae7"
		},
		"music_title#nowplaying": {
			"addr": "0x4490fb"
		},
		"music_cmt": {
			"addr": "0x448f26"
		}
	}
}
