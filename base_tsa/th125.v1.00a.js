{
	"binhacks": {
		"log_restore": {
			"addr": "0x4653c0"
		},
		"spell_align": {
			"addr": "0x45f979"
		},
		"center_align": {
			"addr": "Rx5fa8a"
		},
		"sprintf_call_esp+14": {
			"addr": "Rx5f8dc"
		},
		"sprintf_call_esp+18": {
			"addr": "Rx5fa79"
		},
		"sprintf_rep": {
			"addr": [
				"Rx5f903",
				"Rx5fabc"
			]
		},
		"font_ruby_size": {
			"addr": "0x44cfcb"
		},
		"unpatch_spell_align": {
			"addr": "Rx5f9ff",
			"title": "Unpatch the questionable spell name width addition in the English patch",
			"code": "508b02578bbc24c0000000508bc5e8eefdffff8b8c2494000000838e84040000015f5d5b33cce85aba000081c48c000000c3cccccccc"
		},
		"help_align_1": {
			"addr": "Rx2d76b",
			"code": "6a 00 68 00003000 68 c0e0ff00 33db 8db5 b8030000 e8 bc220300"
		},
		"help_align_2": {
			"addr": "Rx2d7a5",
			"code": "895424 10 9090909090909090 8db5 74080000 e8 84220300"
		},
		"help_align_3": {
			"addr": "Rx2d7db",
			"code": "83c4 14"
		},
		"help_align_scalefix": {
			"addr": "Rx5fad2"
		}
	},
	"breakpoints": {
		"file_size": {
			"addr": "0x4630de"
		},
		"file_load": {
			"addr": "0x46311a"
		},
		"file_loaded": {
			"addr": "0x44a2b3"
		},
		"spell_id#menu": {
			"addr": "0x443683"
		},
		"spell_id#ingame": {
			"addr": "0x40e31c"
		},
		"spell_id#replay": {
			"addr": "0x446a0f"
		},
		"spell_name": {
			"addr": "0x40cfc4"
		},
		"spell_name#menu": {
			"addr": "0x4436ab"
		},
		"music_title": {
			"addr": "0x44890e"
		},
		"music_cmt#first": {
			"addr": "0x448ac9"
		},
		"music_cmt#track": {
			"addr": [
				"0x448abc",
				"0x448b81"
			]
		},
		"music_cmt": {
			"addr": "0x448b8e"
		},
		"ruby_offset": {
			"addr": [
				"Rx1c577",
				"Rx1c636"
			]
		},
		"gentext#help_id": {
			"addr": "Rx2d758"
		},
		"gentext#help_line_1": {
			"addr": "Rx2d768"
		},
		"gentext#help_line_2": {
			"addr": "Rx2d7a5"
		}
	},
	"tsa_font_block": {
		"addr": "Rxd0908"
	}
}
