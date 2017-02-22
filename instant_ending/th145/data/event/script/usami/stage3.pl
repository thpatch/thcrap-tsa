#========================================================================
#	菫子ストーリー
#	ステージ3　VSこころ
#	場所：人間の里（夜）
#	ステージタイトル
#	   「伝説の都市伝説」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(705);",# 会話BGM再生開始

#肩書き登録
,DefineObject,usami_label,50,360,false
,DefineObject,kokoro_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,kokoro,こころ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kokoro,-1280,

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
ねぇそこの人間さん\nちょっといいかしら\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
アタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro

#紹介カット表示　こころは「こころ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
助かったー\,a05x2,-320,0
,ClearBalloon,usami

,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,usami,-1280	,

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
八尺さまに追われているんです\n助けて下さい\,a15x3,0,0
,ClearBalloon,usami


,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
……って貴方も大概な\n妖怪っぷりですね\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_驚1,0,0
そうだった\nどうせ取り殺すんだから\n質問するのは止めにするんだった\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_決1,0,0
キレイじゃ無いから\n死ねい！\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
ええー？\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
容姿には自信が無かったけど\nそりゃあんまりだー\,a15x3,0,0
,ClearBalloon,usami

,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,usami,-1280,&
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
,ImageDef,usami,菫子_負1,0,0
,ImageDef,kokoro,こころ_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,kokoro,-1280	,#菫子フェイス表示開始

,SetFocus,kokoro
ところで貴方、誰？\,a11x2,0,0

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
,ImageDef,usami,菫子_驚1,0,0
,ImageDef,kokoro,こころ_負1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,kokoro,-1280	,#菫子フェイス表示開始


,SetFocus,usami		,
はあはあ\n本物の口裂け女だあ！\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
伝説に聞いた都市伝説よね\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
人間が居そうだったけど\nこの街は危険だわー\,a11x2,0,0
,ClearBalloon,usami


,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,kokoro		,
やった\nついに口裂け女で怖がってくれた\,a15x3,0,0
,ClearBalloon,kokoro


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
