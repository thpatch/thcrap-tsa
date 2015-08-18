{
	"binhacks": {
		"sprintf_call_ebp-88": {
			"addr": "0x48697d"
		},
		"sprintf_call_ebp-8c": {
			"addr": [
				"0x486bc3",
				"0x486d63"
			]
		},
		"sprintf_rep": {
			"addr": [
				"0x486a28",
				"0x486a3b",
				"0x486ce1",
				"0x486e6f"
			]
		},
		"log_restore": {
			"addr": "0x407840"
		},
		"ddc_textbox_size": {
			"addr": [
				"0x438290",
				"0x438494"
			],
			"code": "50e8[GetTextExtent]f30f100da1454c0083e81c730331c090"
		},
		"spell_name_fetch": {
			"addr": "0x42078b"
		},
		"spell_align_call": {
			"addr": "Rx86c40",
			"code": "e8bb6c03009090"
		},
		"spell_align_call_2": {
			"addr": "Rx86c56",
			"code": "909090909090",
			"title": "No-op things a bit after spell_align"
		},
		"spell_align": {
			"addr": "Rxbd900"
		},
		"result_spell_align": {
			"addr": "0x486e75"
		},
		"music_title_prepare": {
			"addr": "0x46b7ae",
			"code": "8b4ce4185131c05050505068ffffff0056ff35183c500090"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x402e39"
		},
		"file_load": {
			"addr": "0x402e74"
		},
		"file_loaded": {
			"addr": "0x46c492"
		},
		"spell_id": {
			"addr": "0x42c922"
		},
		"spell_id#real": {
			"addr": "0x42c959"
		},
		"spell_name": {
			"addr": "0x42078e"
		},
		"spell_id#result": {
			"addr": "0x4695c2"
		},
		"spell_name#result": {
			"addr": "0x469757"
		},
		"music_title": {
			"addr": "0x46b7b2"
		},
		"music_cmt#line": {
			"addr": [
				"0x46ba06",
				"0x46bad9"
			]
		},
		"music_cmt": {
			"addr": [
				"0x46ba18",
				"0x46baeb"
			]
		},
		"ruby_offset": {
			"addr": [
				"Rx3820d",
				"Rx38427"
			],
			"cavesize": "5"
		},
		"update_poll": {
			"addr": "0x475db0"
		}
	},
	"tsa_font_block": {
		"addr": "Rxbda00"
	}
}
