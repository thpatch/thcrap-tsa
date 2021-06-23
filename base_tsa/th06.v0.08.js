{
	"binhacks": {
		"file_move_ending": {
			"code": "90 5F 5E 5B 8B E5 5D C2 08 00",
			"addr": "Rx25475"
		},
		"file_remove_size_assignment": {
			"code": "83c404 90909090909090 5f",
			"addr": "Rx1307e"
		},
		"set_png_buff_size_1": {
			"code": "B8 FF FF FF 7F",
			"addr": "Rx1e370"
		},
		"set_png_buff_size_2": {
			"code": "BA FF FF FF 7F 90",
			"addr": "Rx209cf"
		}
	},
	"breakpoints": {
		"th06_file_name": {
			"addr": "Rx13068",
			"file_name": "ebx"
		},
		"th06_file_size": {
			"addr": "Rx251E2"
		},
		"th06_file_load": {
			"addr": "Rx251fd",
			"eip_jump_dist": "0x274",
			"file_size": "[0x682C5C]"
		},
		"th06_file_loaded": {
			"addr": "Rx25471",
			"cavesize": "5"
		}
	}
}