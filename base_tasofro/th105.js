{
	"title": "東方緋想天 ~ Scarlet Weather Rhapsody",
	"url_update": "http://tasofro.net/touhou105/download.html",
	"latest": "v1.06a",
	"breakpoints": {
		"nsml_file_header": {
			"file_name": "esi",
			"fn_size":   "edi",
			"file_size": "edx",
			"cavesize": 5
		},
		"th105_file_new": {
			"file_name": "ecx",
			"file_object": "esi",
			"cavesize": 7
		},
		"nsml_read_file": {
			"file_object": "esi",
			"apply": true,
			"cavesize": 6
		},
		"th105_file_delete": {
			"file_object": "esi",
			"cavesize": 5
		},
		"th105_fix_csv_parser": {
			"character": "eax",
			"special_character": "ecx",
			"string": "ebp",
			"is_in_quote": "byte ptr [edi+0x2D]",
			"cavesize": 6
		}
	}
}
