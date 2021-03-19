{
	"title": "MEGAMARI",
	"latest": "v1.00",
	"breakpoints": {
		"nsml_file_header": {
			"comment": "deprecated",
			"file_name": "esi+ecx",
			"file_size": "edx",
			"cavesize": 6
		},
		"nsml_read_file#prepare": {
			"comment": "deprecated",
			"file_name": "[ebp+8]",
			"cavesize": 6
		},
		"nsml_read_file": {
			"comment": "deprecated",
			"apply": true,
			"cavesize": 6
		},
		"megamari_openFile": {
			"file_name": "[ebp+8]",
			"file_struct": "[[ebp-4]+0x68]",
			"cavesize": 5
		},
		"nsml_CPackageFileReader_readFile": {
			"cavesize": 6
		}
	}
}
