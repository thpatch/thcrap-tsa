{
	"contact": "thcrap@nmlgc.net",
	"id": "nmlgc",
	"neighbors": [
		"https://srv.thpatch.net"
	],
	"patches": {
		"aero": "Enable Aero compositing",
		"base_tasofro": "Basic support for Tasogare Frontier games",
		"base_tsa": "Basic support for Team Shanghai Alice games",
		"bitch": "Keep Alice's \"bitch\" line in TH08",
		"cheat": "Various cheats, ported from third-party SpoilerAL .ssg files",
		"eastern_name_order_hepburn": "Character names in eastern order and hepburn spelling.",
		"instant_ending": "Show the ending immediately upon entering Stage 1",
		"real_bullet_size": "Resize bullets to match their actual hitbox\n                          (by sibgamer, http://tinyurl.com/real-bullet-size)",
		"script_latin": "Shared data for languages using Latin script",
		"western_name_order": "Western name order"
	},
	"patchdata": {
		"aero": {
			"category": "core",
			"games": [ "th125", "th128", "th13", "th14", "th143", "th15", "th16", "th165", "th17" ],
			"dependencies": [ "base_tsa" ]
		},
		"base_tasofro": {
			"category": "core",
			"games": [ "megamari", "nsml", "th105", "th123", "th135", "th145", "th155", "marilega", "th175" ]
		},
		"base_tsa": {
			"category": "core",
			"games": [ "th06", "th07", "th08", "th09", "th095", "th10", "alcostg", "th11", "th12", "th125", "th128", "th13", "th14", "th143", "th15", "th16", "th165", "th17" ]
		},
		"bitch": {
			"category": "language",
			"games": [ "th08" ],
			"dependencies": [ "thpatch/lang_en" ]
		},
		"cheat": {
			"category": "content",
			"games": [ "th06", "th07", "th08", "th09", "th095", "th10", "th11", "th12", "th125", "th128", "th13", "th14", "th143", "th15", "th16", "th165", "th17" ]
		},
		"eastern_name_order_hepburn": {
			"category": "core",
			"games": [ "th10", "th11", "th12", "th13", "th14", "th15", "th16", "th17" ],
			"dependencies": [ "base_tsa" ]
		},
		"instant_ending": {
			"category": "content",
			"games": [ "th06", "th07", "th08", "th09", "th10", "th105", "th11", "th12", "th123", "th128", "th13", "th14", "th145", "th15", "th155", "th16", "th17" ],
			"dependencies": [ "base_tsa" ]
		},
		"real_bullet_size": {
			"category": "content",
			"games": [ "th07", "th08", "th09", "th095", "th10", "th11", "th12", "th125", "th128", "th13", "th14", "th143", "th15", "th16" ],
			"dependencies": [ "base_tsa" ]
		},
		"script_latin": {
			"category": "core",
			"games": [ "th06", "th07", "th08", "th09", "th095", "th10", "th105", "th11", "th12", "th123", "th125", "th128", "th13", "th135", "th14", "th143", "th145", "th15", "th155", "marilega", "th16", "th165", "th17" ],
			"dependencies": [ "base_tsa" ]
		},
		"western_name_order": {
			"category": "core",
			"games": [ "th10", "th11", "th12", "th13", "th14", "th15", "th155", "th16", "th17" ],
			"dependencies": [ "base_tsa" ]
		}
	},
	"servers": [
		"https://mirrors.thpatch.net/nmlgc/"
	],
	"title": "Nmlgc's patch repository"
}
