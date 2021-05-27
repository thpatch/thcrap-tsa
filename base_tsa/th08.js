{
	"binhacks": {
		"sprintf_replay_1": {
			"code": "e8[strings_sprintf] 83c4 0c 6a 01 8d55 f0 89c1 90",
			"title": "Replay name sprintf 1"
		},
		"sprintf_replay_2": {
			"code": "e8[strings_sprintf] 83c4 0c 8b95 58ffffff 83c2 58 89c1 90909090",
			"title": "Replay name sprintf 2"
		},
		"sprintf_replay_3": {
			"code": "e8[strings_sprintf] 83c4 0c 6a 01 8d55 f0 89c1 8945 a8 e8 fd03fdff 8945 ec 85c0 9090 74 c1",
			"title": "Replay name sprintf 3"
		},
		"file_size_for_caller_rearrange": {
			"code": "8b55 f4 8b4d e4 8911",
			"title": "Rearrange the assignment of the file size to the caller's pointer, so that we can set a breakpoint there"
		},
		"spell_align": {
			"code": "ffb574ffffff ffb578ffffff e8[GetTextExtentForFontID] 83c00450 db04e4 58 9090909090",
			"title": "Spell card alignment"
		},
		"music_title_prepare": {
			"code": "8b55f08b4dd0837c910c00",
			"title": "Prepare Music Room title fetching"
		},
		"music_title_nowplaying_prepare": {
			"code": "8b507469c292020000",
			"title": "Prepare Music Room title fetching (\"Now playing\")"
		},
		"music_cmt_rewrite": {
			"code": "538b9d58ffffff8b43748b55f83b43787407837c830c00742869f09202000003b3840000006bca428db431820000006a10598d7db0f3:a58d7db09090909090eb078b3c95ac7a4c0069c2a4020000838c03005700000289f85beb4f90909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Rewrite Music Room comment render calls"
		},
		"unpatch_font": {
			"code": "8d4400fe",
			"title": "Reset English patch font size"
		},
		"inplace_xor_long_dst": {
			"code": "89d1 90 90 90 90",
			"title": "Decrypt XOR'ed strings in-place (destination pointer, long form)"
		},
		"inplace_xor_long_rep": {
			"code": "8b45 fc 90 90 90",
			"title": "Decrypt XOR'ed strings in-place (referenced pointer, long form)"
		},
		"inplace_xor_short_dst": {
			"code": "89d1 52",
			"title": "Decrypt XOR'ed strings in-place (destination pointer, short form)"
		},
		"inplace_xor_short_rep": {
			"code": "58 90 90",
			"title": "Decrypt XOR'ed strings in-place (referenced pointer, short form)"
		},
		"ending_copy_rem" : {
			"code": "894db0 803900 7429 41 ff45ac ebf5 9090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"spell_name_replay": {
			"code": "8b8d 30feffff 8189 b0e90000 00180000 66c781 50ea0000 0f0f 8b81 8cc20000 69c0 34010000 8d8401 ce7a0000 8b91 80c20000 0fbf4a 6a 0fbf52 7c 90909090909090909090909090909090909090909090909090909090"
		},
		"spell_ascii_numbers": {
			"code": "83C0 30 // 8B4D FC // BA C8DD8B01 // 89040A // 909090909090909090",
			"title": "Replace shift-jis numbers with ASCII numbers in spell practice"
		},
		"spell_ascii_numbers_2": {
			"code": "90",
			"title": "Replace shift-jis numbers with ASCII numbers in spell practice (part 2)"
		}
	},
	"title": "東方永夜抄　～ Imperishable Night",
	"url_update": "http://www16.big.or.jp/~zun/html/th08dl.html",
	"url_trial": "http://www16.big.or.jp/~zun/html/th08dl.html",
	"latest": "v1.00d",
	"formats": {
		"msg": "msg08",
		"anm": "anm06"
	},
	"breakpoints": {
		"file_name": {
			"file_name": "eax",
			"cavesize": "6"
		},
		"file_size#for_caller": {
			"file_size": "edx",
			"cavesize": 5
		},
		"file_size#for_encrypted_buffer": {
			"file_size": "eax",
			"cavesize": 6
		},
		"file_size#for_decrypted_buffer": {
			"file_size": "ecx",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "ecx",
			"eip_jump_dist": "0xf6",
			"cavesize": 5
		},
		"file_loaded": {
			"file_buffer": "eax",
			"cavesize": 6
		},
		"spell_id": {
			"spell_id": "ecx",
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "9"
		},
		"spell_name#practice_menu": {
			"spell_id": "eax",
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "11"
		},
		"spell_name#result": {
			"spell_id": "eax",
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "11"
		},
		"spell_name#practice_menu_page": {
			"spell_id": "eax",
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "11"
		},
		"spell_name#practice_menu_details": {
			"spell_id": "eax",
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "11"
		},
		"spell_name#replay": {
			"spell_name": "eax",
			"spell_id_real": "edx",
			"spell_rank": "ecx",
			"cave_exec": false,
			"cavesize": "5"
		},
		"spell_comment_line#1": {
			"str": "eax",
			"cavesize": "6",
			"comment_num": "1",
			"line_num": "0"
		},
		"spell_comment_line#2": {
			"str": "eax",
			"cavesize": "6",
			"comment_num": "1",
			"line_num": "1"
		},
		"spell_owner":{
			"spell_id": "eax",
			"spell_owner": "eax",
			"cave_exec": false,
			"cavesize": "11"
		},
		"music_title": {
			"track": "edx",
			"str": "eax",
			"cavesize": "6"
		},
		"music_title#nowplaying": {
			"track": "edx",
			"str": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "6"
		},
		"music_cmt": {
			"track": "eax",
			"line_num": "edx",
			"str": "edi",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		}
	},
	"tlnotes": {
		"region_size": [384, 264],
		"region_topleft": [864, 664]
	}
}
