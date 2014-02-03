{
	"binhacks": {
		"sprintf_call": {
			"code": "50e8[strings_vsprintf]898578ffffff",
			"title": "Safe sprintf (call)"
		},
		"sprintf_rep": {
			"code": "8b8578ffffff50",
			"title": "Safe sprintf (replace pointer)"
		},
		"spell_align": {
			"code": "ffb578ffffffe8[GetTextExtent]83c00450db04e4589090909090909090909090",
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
			"code": "538b9d58ffffff8b43748b55f83b43787407837c830c00742369f09202000003b3840000006bca428db431820000006a10598d7db0f3:a58d7db09090909090eb078b3c95ac7a4c0069c2a4020000838c03005700000289f85beb4f90909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
			"title": "Rewrite Music Room comment render calls"
		},
		"unpatch_font": {
			"code": "8d4400fe",
			"title": "Reset English patch font size"
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
		"file_size": {
			"file_size": "eax",
			"file_name": "ecx",
			"set_patch_size": false,
			"cavesize": "6"
		},
		"file_size_patch": {
			"file_size": "ecx",
			"cavesize": "6"
		},
		"file_load": {
			"file_buffer": "eax",
			"eip_jump_dist": "0xf9",
			"cavesize": "7"
		},
		"file_loaded": {
			"file_buffer": "eax",
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "ecx",
			"cavesize": "6"
		},
		"spell_id#practice_menu": {
			"spell_id": "eax",
			"cavesize": "6"
		},
		"spell_id#practice_comment": {
			"spell_id": "eax",
			"cavesize": "6"
		},
		"spell_name": {
			"spell_name": "eax",
			"cave_exec": false,
			"cavesize": "9"
		},
		"spell_name#practice_menu": {
			"spell_name": "eax",
			"cavesize": "8"
		},
		"spell_id#result": {
			"spell_id_real": "eax",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "8"
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
	}
}
