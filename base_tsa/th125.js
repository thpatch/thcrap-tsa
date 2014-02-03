{
    "binhacks": {
        "log_restore": {
            "code": "e9[log_printf]",
            "title": "Restore the game's built-in logging"
        },
        "spell_align": {
            "code": "8b8e880400008bbefc030000d94738c1e90483e101518b94e4b000000052ffb4e4a8000000ffb4e4a8000000ff3508094d0052e8[GetTextExtentForFont]50db04e458eb2e90909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
            "title": "Spell card alignment"
        },
        "skip_ruby_loop": {
            "code": "9090",
            "title": "Render ruby text in one pass"
        },
        "sprintf_call": {
            "code": "50e8[strings_vsprintf]8944e414",
            "title": "Safe sprintf (call)"
        },
        "sprintf_rep": {
            "code": "8b54e4",
            "title": "Safe sprintf (replace pointer)"
        },
        "font_ruby_size": {
            "code": "6a0f",
            "title": "Ensure correct size of ruby font"
        }
    },
    "game": "th125",
    "title": "ダブルスポイラー　～ 東方文花帖",
    "latest": "v1.00a",
    "formats": {
        "msg": "msg11",
        "anm": "anm11"
    },
    "breakpoints": {
        "file_size": {
            "addr": [

            ],
            "file_size": "edi",
            "file_name": "ebp",
            "cavesize": "6"
        },
        "file_load": {
            "addr": [

            ],
            "file_buffer": "ebx",
            "stack_clear_size": "8",
            "cavesize": "5"
        },
        "file_loaded": {
            "addr": [

            ],
            "cavesize": "5"
        },
        "spell_id#menu": {
            "addr": [

            ],
            "spell_id": "ecx",
            "cavesize": "5"
        },
        "spell_id#ingame": {
            "addr": [

            ],
            "spell_id": "esi",
            "cavesize": "6"
        },
        "spell_id#replay": {
            "addr": [

            ],
            "spell_id": "edx",
            "cavesize": "6"
        },
        "spell_name": {
            "addr": [

            ],
            "spell_name": "esi",
            "cavesize": "9"
        },
        "spell_name#menu": {
            "addr": [

            ],
            "spell_name": "eax",
            "cavesize": "5"
        },
        "music_title": {
            "addr": [

            ],
            "str": "eax",
            "track": "ebx",
            "format_id": "Music Room Numbered Title",
            "cavesize": "8"
        },
        "music_cmt#first_track": {
            "addr": [

            ],
            "track": "eax",
            "cavesize": "6"
        },
        "music_cmt#first": {
            "addr": [

            ],
            "str": "eax",
            "line_num": "ecx",
            "format_id": "Music Room Note Title",
            "cavesize": "5"
        },
        "music_cmt#track": {
            "addr": [

            ],
            "track": "eax",
            "cavesize": "6"
        },
        "music_cmt": {
            "addr": [

            ],
            "str": "ecx",
            "line_num": "edx",
            "format_id": "Music Room Note Title",
            "cavesize": "5"
        },
        "ruby_offset": {
            "addr": [

            ],
            "str": "esi",
            "offset": "eax",
            "font_dialog": "",
            "font_ruby": "",
            "cavesize": "5"
        }
    }
}