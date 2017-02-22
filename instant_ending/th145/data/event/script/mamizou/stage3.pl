#========================================================================
#	マミゾウストーリー
#	ステージ3　VSこころ
#	場所：人間の里（夜）
#	ステージタイトル
#	   「通りがかりの都市伝説」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#フェイス画像
,DefineObject,mamizou,-360,0,false
,DefineObject,kokoro,-360,0,true

,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# 初期化ルーチン呼び出し

#開始カメラ演出
,Function,GameStory_BeginCamera();
,Sleep,2,#ウェイト命令
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,mamizou_label,50,360,false
,DefineObject,kokoro_label,1120,360,false

#初期表情設定
,ImageDef,mamizou,マミゾウ_普1,0,0
,ImageDef,kokoro,こころ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,ImageDef,mamizou,マミゾウ_惑1,0,0
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
なる程なぁ\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
このボールの正体が\n掴めてきたぞい\,a11x2,0,0
,ClearBalloon,mamizou

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
おやお前さんは……？\,a11x2,0,0
,ClearBalloon,mamizou


,th145_Show,kokoro,-1280,

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
ねえアタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro


#紹介カット表示　こころは「こころ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_汗1,0,0
何じゃ\n藪から棒に\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_驚1,0,0
アタシ、キレイじゃないの？\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
あ、その台詞聞いた事あるぞ\n口裂け女じゃな？\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
えーっと何じゃったかな\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_汗1,0,0
ムースじゃ無くて\nワックスでも無くて……\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_決1,0,0
その先を言わせるか！\nキレイじゃないなら死ねい！\,a15x3,0,0
,ClearBalloon,kokoro




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,mamizou,-1280,&
,th145_Hide,kokoro,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mamizou,マミゾウ_負1,0,0
,ImageDef,kokoro,こころ_決1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,kokoro,-1280	,#マミゾウフェイス表示開始

,SetFocus,kokoro
ああ整髪料が恐ろしい\,a11x2,0,0

,Function,"::StopBGM(1500);"
#コンテニュー処理へのジャンプを予定　現在は仮で次のステージに進んでから一つ戻る処理を行い、同ステージの最初から再開します
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# 勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mamizou,マミゾウ_嬉1,0,0
,ImageDef,kokoro,こころ_負1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,kokoro,-1280	,#マミゾウフェイス表示開始

,SetFocus,mamizou		,
思い出したポマードじゃ\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kokoro		,
ぎゃあ\nもうやられてたー\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
あれ？\nお主もオカルトボールを\n持ってるのか\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
ちょっと借りてくぞい\,a11x2,0,0
,ClearBalloon,mamizou




,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# サブルーチン
# -------------------------------------------------------
:TestMessage
サブルーチン実行\
,ClearBalloon
,Return
