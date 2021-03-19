{
	"title": "魔理沙と6つのキノコ",
	"url_update": "http://www.tasofro.net/6kinoko/index.html",
	"latest": "v1.10",
	"breakpoints": {
		"nsml_file_header": {
			"comment": "deprecated",
			"file_name": "ecx",
			"file_size": "[esp+8]",
			"cavesize": 5
		},
		"nsml_read_file#prepare": {
			"comment": "deprecated",
			"file_name": "ecx",
			"cavesize": 5
		},
		"nsml_read_file": {
			"comment": "deprecated",
			"apply": true,
			"cavesize": 6
		},
		"nsml_CPackageFileReader_openFile": {
			"file_name": "[ebp+8]",
			"file_reader": "ecx",
			"cavesize": 5
		},
		"nsml_CPackageFileReader_readFile": {
			"cavesize": 6
		},
		"nsml_CFileReader_closeFile": {
			"cavesize": 6
		}
	}
}
