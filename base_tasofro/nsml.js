{
	"title": "魔理沙と6つのキノコ",
	"url_update": "http://www.tasofro.net/6kinoko/index.html",
	"latest": "v1.10",
	"breakpoints": {
		"nsml_file_header": {
			"file_name": "ecx",
			"file_size": "[esp+8]",
			"cavesize": 5
		},
		"nsml_read_file#prepare": {
			"file_name": "ecx",
			"cavesize": 5
		},
		"nsml_read_file": {
			"apply": true,
			"cavesize": 6
		}
	}
}
