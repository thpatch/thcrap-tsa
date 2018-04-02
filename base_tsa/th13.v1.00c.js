{
	"binhacks": {
		"sprintf_call_1": {
			"addr": "0x46ea5f"
		},
		"sprintf_call_ebp-88": {
			"addr": "0x46e914"
		},
		"sprintf_call_ebp-8c": {
			"addr": "0x46e99f"
		},
		"sprintf_rep": {
			"addr": [
				"0x46e94c",
				"0x46ea0c",
				"0x46eac9"
			]
		},
		"log_restore": {
			"addr": "0x475030"
		},
		"fw_textbox_size": {
			"addr": [
				"0x428eb9",
				"0x4290db"
			]
		},
		"spell_align": {
			"addr": "0x46e9cb",
			"code": "ff7510c1e90c83e10151ff750cff7508ff3510c34d00ffb574ffffffe8[GetTextExtentForFont]83c00850db04e4587906d805b0ea4a00dee9"
		},
		"result_spell_align": {
			"addr": "0x46eac3"
		},
		"unpatch_fonts": {
			"addr": "0x45ad24"
		},
		"unpatch_dialog": {
			"addr": "0x45c3a1"
		},
		"unpatch_layout_1": {
			"title": "Remove English patch text formatting tag parsing (1)",
			"addr": "Rx5afbe",
			"code": "75778b4d185156ff1518204a008b450c5303c0578945e46a0483c00250"
		},
		"unpatch_layout_2": {
			"title": "Remove English patch text formatting tag parsing (2)",
			"addr": "Rx5b2b0",
			"code": "751f8b55145256ff1518204a008b450c53576a028d0c00"
		},
		"unpatch_strings_result_known_spell": {
			"addr": "Rx53ced"
		},
		"unpatch_strings_result_unknown_spell": {
			"addr": "Rx53d54"
		},
		"fix_practice_replay_crash#1": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #1",
			"addr": "Rx47ce9",
			"code": "df",
			"expected": "cf"
		},
		"fix_practice_replay_crash#2": {
			"title": "Fix the crash after the end-of-stage dialogue in Practice replays, #2",
			"addr": "Rx52b30",
			"code": "0fb6470a e82768ffff 31c0 48 a3d4e74b00"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x47254a"
		},
		"file_load": {
			"addr": "0x472586"
		},
		"file_loaded": {
			"addr": "0x457fcf"
		},
		"spell_id": {
			"addr": "0x41e4db"
		},
		"spell_id#real": {
			"addr": "0x41e546"
		},
		"spell_name": {
			"addr": "0x4135b5"
		},
		"spell_id#result": {
			"addr": "0x453c22"
		},
		"spell_name#result": {
			"addr": "0x453cea"
		},
		"spell_id#practice": {
			"addr": "0x4571f7"
		},
		"spell_name#practice": {
			"addr": "0x4572aa"
		},
		"music_title": {
			"addr": "0x4558f3"
		},
		"music_cmt#line_first": {
			"addr": "0x455abe"
		},
		"music_cmt#first": {
			"addr": "0x455acf"
		},
		"music_cmt#line": {
			"addr": "0x455b96"
		},
		"music_cmt": {
			"addr": "0x455ba7"
		},
		"ruby_offset": {
			"addr": [
				"Rx28e24",
				"Rx2904c"
			]
		}
	},
	"tsa_font_block": [
		"Rxdc310",
		"Rxdc30c",
		"Rxdc308",
		"Rxdc304",
		"Rxdc300",
		"Rxdc2fc",
		"Rxdc2f8",
		"Rxda2f4"
	]
}
