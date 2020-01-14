{
	"binhacks": {
		"zun_strcat_stringlocs": {
			"addr": "Rx2adb1",
			"code": "6a 00 ff75 08 e8[strings_lookup] 8945 08 eb 05 55 8bec eb ec 31c0 83c4 08 90909090"
		},
		"file_decrypted_buffer_size": {
			"addr": "0x42c19c"
		},
		"sprintf_call_1": {
			"addr": "0x43bdde"
		},
		"sprintf_call_2": {
			"addr": "0x43be7d"
		},
		"sprintf_replay_1": {
			"addr": "Rx26c59",
			"code": "68 bcf64800 54 e8[strings_sprintf] 8945 a8 83c4 0c 6a 01 8d55 e8 89c1 90",
			"title": "Replay name sprinf 1"
		},
		"sprintf_replay_2": {
			"addr": "Rx297d6"
		},
		"sprintf_replay_3": {
			"addr": "Rx29cb8",
			"code": "68 bcf64800 54 e8[strings_sprintf] 83c4 0c 6a 01 8d55 ec 8945 ac 89c1 90",
			"title": "Replay name sprintf 3"
		},
		"sprintf_replay_user_1": {
			"addr": "Rx29b94",
			"code": "68 68fa4800 54 e8[strings_sprintf] 83c4 0c 8985 acfeffff 89c1 90909090",
			"title": "User replay name sprintf 1"
		},
		"sprintf_user_2": {
			"addr": "Rx29bdd",
			"code": "e8[strings_sprintf] 8b0d 647e4a00 83c4 0c 68 74814a00 89c2 90909090",
			"title": "User replay name sprintf 1"
		},
		"sprintf_rep": {
			"addr": ["0x43be01", "0x43beb2", "Rx29cf3", "Rx26c96", "Rx29bd1"]
		},
		"sprintf_call_ebp-200": {
			"addr": "Rx34341"
		},
		"music_title_prepare": {
			"addr": "0x42748a"
		},
		"music_cmt_rewrite": {
			"addr": "0x426e2a"
		},
		"inplace_xor": {
			"title": "Decrypt XOR'ed strings in-place (and re-encrypt them afterwards)",
			"addr": "Rx16c65",
			"code": "8888cc1700005789f8e8edefffff0fb686641d00008b9486301d00008b8486201d0000570fb68e661d000069c9a40200005250a150c54d008d9431341500005250e81551020083c414b177b2078a0788c330c8880700d182c2104784db75eefe86661d000031c089864c1d00008886651d000090"
		},
		"inplace_xor_dst": {
			"addr": "Rx16c71"
		},
		"inplace_xor_rep": {
			"addr": "Rx16c8e"
		},
		"ending_copy_rem" : {
			"addr": "Rx0ec7d"
		},
		"ending_copy_rep" : {
			"addr": "Rx0eda4",
			"code": "8b4db0"
		},
		"menu_desc_align_1": {
			"addr": "Rx3be86"
		},
		"menu_desc_align_2": {
			"addr": "Rx3bef3"
		},
		"joy_config_fix": {
			"addr": "Rx2b776"
		},
		"spell_copy_rem": {
			"addr": ["Rx03f40", "Rx04013"]
		},
		"spell_copy_rep": {
			"addr": ["Rx04244", "Rx042b1"]
		}
	},
	"breakpoints": {
		"file_size#for_caller": {
			"addr": "0x42c9cc"
		},
		"file_size#for_encrypted_buffer": {
			"addr": "0x42c9ff"
		},
		"file_size#for_decrypted_buffer": {
			"addr": "0x42c19c"
		},
		"file_load": {
			"addr": "0x42ca10"
		},
		"file_loaded": {
			"addr": "0x42c35c"
		},
		"music_title": {
			"addr": "0x4274b2"
		},
		"music_cmt": {
			"addr": "0x426e6f"
		},
		"spell_name": {
			"addr": ["Rx03f40", "Rx04013"]
		}
	}
}
