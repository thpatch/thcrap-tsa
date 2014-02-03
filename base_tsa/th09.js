{
    "binhacks": {
        "sprintf_call_1": {
            "code": "50e8[strings_vsprintf]894580",
            "title": "Safe sprintf (first call)"
        },
        "sprintf_call_2": {
            "code": "50e8[strings_vsprintf]8945b8",
            "title": "Safe sprintf (second call)"
        },
        "sprintf_rep": {
            "code": "8b",
            "title": "Safe sprintf (replace pointer)"
        },
        "music_title_prepare": {
            "code": "8d8c0fdca301005153518b8e901b0100e861c9fdff598b45ec803c1800742b8d9361ffffff8b45f450688020300068ffe0d000909090909090",
            "title": "Prepare Music Room title parameter fetching"
        },
        "music_cmt_rewrite": {
            "code": "d1e872064883f8077605e9ee01000069f8a4020000c68437029f0100018dbc37049d01008b9e741b010080bbac814a000074196bd04269cb9202000001ca8d8c32b6c900009090909090eb078b0c85bc1d4a0089f85131dbe98701000090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090",
            "title": "Rewrite Music Room comment render calls"
        }
    },
    "game": "th09",
    "title": "東方花映塚　～ Phantasmagoria of Flower View",
    "url_update": "http://kourindou.exblog.jp/1327589/",
    "url_trial": "http://www16.big.or.jp/~zun/html/th09dl.html",
    "latest": "v1.50a",
    "formats": {
        "msg": "msg09",
        "anm": "anm06"
    },
    "breakpoints": {
        "file_size": {
            "addr": [

            ],
            "file_size": "eax",
            "file_name": "ecx",
            "cavesize": "5"
        },
        "file_load": {
            "addr": [

            ],
            "file_buffer": "eax",
            "eip_jump_dist": "0xa5",
            "cavesize": "7"
        },
        "file_loaded": {
            "addr": [

            ],
            "file_buffer": "esi",
            "cavesize": "5"
        },
        "music_title": {
            "addr": [

            ],
            "track": "edx",
            "str": "eax",
            "format_id": "Music Room Numbered Title",
            "cavesize": "6"
        },
        "music_cmt": {
            "addr": [

            ],
            "track": "ebx",
            "line_num": "eax",
            "str": "ecx",
            "cavesize": "5"
        }
    }
}