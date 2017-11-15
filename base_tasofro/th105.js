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
		"nsml_read_file#prepare": {
			"file_name": "ecx",
			"cavesize": 7
		},
		"nsml_read_file": {
			"apply": true,
			"cavesize": 6
		}
	}
}
