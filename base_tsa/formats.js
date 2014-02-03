{
	"msg06": {
		"entry_offset_mul": "1",
		"opcodes": {
			"3": {
				"cmd": "hard_line"
			},
			"8": {
				"cmd": "hard_line",
				"type": "h1"
			}
		}
	},
	"msg08": {
		"entry_offset_mul": "1",
		"encryption": {
			"vars": [
				"0x77"
			],
			"func": "simple_xor"
		},
		"opcodes": {
			"3": {
				"cmd": "hard_line"
			},
			"4": {
				"cmd": "auto_end"
			},
			"15": {
				"cmd": "auto_end"
			},
			"16": {
				"cmd": "auto_line"
			},
			"19": {
				"cmd": "auto_line"
			},
			"20": {
				"cmd": "auto_line"
			}
		}
	},
	"msg09": {
		"entry_offset_mul": "2",
		"encryption": {
			"vars": [
				"0x77",
				"7",
				"16"
			],
			"func": "util_xor"
		},
		"opcodes": {
			"4": {
				"cmd": "auto_end"
			},
			"15": {
				"cmd": "auto_end"
			},
			"16": {
				"cmd": "auto_line"
			}
		}
	},
	"msg10": {
		"entry_offset_mul": "2",
		"encryption": {
			"vars": [
				"0x77",
				"7",
				"16"
			],
			"func": "util_xor"
		},
		"opcodes": {
			"7": {
				"cmd": "auto_end"
			},
			"8": {
				"cmd": "auto_end"
			},
			"10": {
				"cmd": "auto_end"
			},
			"16": {
				"cmd": "auto_line"
			}
		}
	},
	"msg11": {
		"entry_offset_mul": "2",
		"encryption": {
			"vars": [
				"0x77",
				"7",
				"16"
			],
			"func": "util_xor"
		},
		"opcodes": {
			"7": {
				"cmd": "auto_end"
			},
			"8": {
				"cmd": "auto_end"
			},
			"9": {
				"cmd": "auto_end"
			},
			"11": {
				"cmd": "auto_end"
			},
			"17": {
				"cmd": "auto_line"
			},
			"25": {
				"cmd": "delete"
			}
		}
	},
	"end10": {
		"entry_offset_mul": "2",
		"encryption": {
			"vars": [
				"0x77",
				"7",
				"16"
			],
			"func": "util_xor"
		},
		"opcodes": {
			"3": {
				"cmd": "auto_line"
			},
			"5": {
				"cmd": "auto_end"
			},
			"6": {
				"cmd": "auto_end"
			},
			"9": {
				"cmd": "auto_end"
			}
		}
	},
	"anm06": {
		"headersize": 64,
		"sprites": {
			"offset": 0,
			"size": 4
		},
		"nameoffset": {
			"offset": 28,
			"size": 4
		},
		"x": {
			"offset": 32,
			"size": 4
		},
		"y": {
			"offset": 36,
			"size": 4
		},
		"thtxoffset": {
			"offset": 48,
			"size": 4
		},
		"hasdata": {
			"offset": 52,
			"size": 2
		},
		"nextoffset": {
			"offset": 56,
			"size": 4
		}
	},
	"anm11": {
		"headersize": 64,
		"sprites": {
			"offset": 4,
			"size": 2
		},
		"nameoffset": {
			"offset": 16,
			"size": 4
		},
		"x": {
			"offset": 20,
			"size": 2
		},
		"y": {
			"offset": 22,
			"size": 2
		},
		"thtxoffset": {
			"offset": 28,
			"size": 4
		},
		"hasdata": {
			"offset": 32,
			"size": 2
		},
		"nextoffset": {
			"offset": 36,
			"size": 4
		}
	}
}
