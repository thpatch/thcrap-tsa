{
	"title": "東方虹龍洞　〜 Unconnected Marketeers",
	"latest": [
		"v0.02a",
		"v1.00a"
	],
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "ebx",
			"cavesize": 5
		},
		"file_load": {
			"file_buffer": "edi",
			"stack_clear_size": 8,
			"cavesize": 5
		},
		"file_loaded": {
			"cavesize": 5
		},
		"music_title": {
			"str": "edx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": 5
		},
		"music_cmt": {
			"str": "eax",
			"line_num": "[edi+0x614]",
			"track": "[edi+0x618]",
			"format_id": "Music Room Note Title",
			"cavesize": 5
		},
		"spell_id": {
			"spell_id": "eax",
			"cavesize": "6"
		},
		"spell_id#real": {
			"spell_id_real": "ebx",
			"cavesize": "9"
		},
		"spell_name": {
			"spell_name": "edi",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "esi",
			"spell_rank": "ecx",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "7"
		},
		"spell_name#practice": {
			"spell_name": "eax",
			"spell_id_real": "ecx",
			"spell_rank": "esi",
			"cavesize": "7"
		},
		"gentext#card_name": {
			"file": "abilities.js",
			"ids": "ebx",
			"str": "ecx",
			"line": 0,
			"cavesize": 5
		},
		"gentext#card_desc": {
			"file": "abilities.js",
			"ids": [ "[ebp + 0xC]", 0 ],
			"line": "6 - [esp + 0x18]",
			"str": "[esp + 0x4]",
			"cavesize": 6
		},
		"gentext#trophy_result_nickname": {
			"file": "trophy.js",
			"ids": "ecx",
			"str": "eax",
			"cave_exec": false,
			"cavesize": 5
		},
		"gentext#ability_unlock": {
			"file": "abilities.js",
			"ids": "esi",
			"line": 0,
			"str": "edi",
			"cavesize": 6
		},
		"gentext#trophy_ingame": {
			"file": "trophy.js",
			"ids": "esi",
			"line": 0,
			"str": "[esp + 4]",
			"cavesize": 5
		},
		"gentext#trophy_result_desc": {
			"file": "trophy.js",
			"ids": [ "ecx", "edx" ],
			"line": "[ebp+8]",
			"str": "eax",
			"cave_exec": false,
			"cavesize": 5
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": 6
		}
	},
	"binhacks": {
		"sprintf_th18_l": {
			"code": "ff752450f30f11442420e8[strings_vsprintf]89442434"
		},
		"sprintf_th18_r": {
			"code": "ff752050f30f11442420e8[strings_vsprintf]89442434"
		},
		"sprintf_th18_c": {
			"code": "ff752050897c2428f30f11442424e8[strings_vsprintf]8944243c"
		},
		"sprintf_th18_ascii": {
			"code": "ff751050e8[strings_vsprintf]8985f4feffff"
		},
		"th18_textbox_size": {
			"code": "6a0051e8[GetTextExtentForFontID]83e81c730231c090909090909090909090f30f1093b4010000f30f108bb00100008bcb"
		},
		"spell_align": {
			"code": "ff751856e8[GetTextExtentForFontID]83c008d1e0f30f2ac88b44240c8b5424108b4c98088bc1c1f8088b94822c0789010fb6c18b74240c8d0c408b82240100008b0cc88b451c8d1400f30f10442414f30f2cc0f30f10449e38eb2890909090909090909090909090909090909090909090909090909090909090909090909090909090"
		},
		"trophy_ingame_lineflip_1": {
			"code": "ffb340020000",
			"ignore": true
		},
		"trophy_ingame_lineflip_2": {
			"code": "ffb33c020000",
			"ignore": true
		},
		"ability_ingame_lineflip_1": {
			"code": "ffb340020000",
			"ignore": true
		},
		"ability_ingame_lineflip_2": {
			"code": "ffb33c020000",
			"ignore": true
		}
	}
}
