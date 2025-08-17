
{
	"title": "東方錦上京 ～ Fossilized Wonders",
	"latest": [
		"v0.01a",
		"v1.00a",
	],
	"breakpoints": {
		"music_title": {
			"format_id": "Music Room Numbered Title",
		},
		"music_cmt": {
			"format_id": "Music Room Note Title",
		},
		"gentext#stone_name": {
			"cave_exec": false,
			"file": "stonetext.js"
		},
		"gentext#stone_name_desc": {
			"cave_exec": false,
			"file": "stonetext.js"
		},
		"gentext#stone_desc": {
			"cave_exec": false,
			"file": "stonetext.js"
		},
		"gentext#stone_select_name": {
			"cave_exec": false,
			"file": "stonetext.js"
		},

		// Needs 4 breakpoints because of this code not drawing every line in
		// one loop + it pulls the lines from 2 different descriptions. 

		"gentext#stone_common_line_0": {
			"cave_exec": false,
			"file": "stonetext.js",
			"line": 0
		},
		"gentext#stone_common_line_1": {
			"cave_exec": false,
			"file": "stonetext.js",
			"line": 1
		},

		// There is separate code for drawing the "Common Magic Stone" description
		// for the left and right slots vs the top and bottom ones because the
		// background sprite used for the description on the left and right ones
		// is too short for the extra line that the bottom one has. Maximum jank
		"gentext#stone_common_line_2_3__left_right": {
			"cave_exec": false,
			"file": "stonetext.js",
		},
		"gentext#stone_common_line_2_3__bottom": {
			"cave_exec": false,
			"file": "stonetext.js",
		},
		"gentext#stone_name_result": {
			"cave_exec": false,
			"file": "stonetext.js"
		},
		"gentext#stone_name_unlock": {
			"cave_exec": false,
			"file": "stonetext.js",
			"line": 0,
		},
		"gentext#stone_name_spell_result": {
			"cave_exec": false,
			"line": 0,
			"file": "stonetext.js"
		},
		"gentext#trophy_name": {
			"cave_exec": false,
			"line": 0,
			"file": "trophy.js",
		},
		"gentext#trophy_desc": {
			"file": "trophy.js",
		},
		"gentext#ingame_trophy_name": {
			"cave_exec": false,
			"line": 0,
			"file": "trophy.js",
		},
	}
}