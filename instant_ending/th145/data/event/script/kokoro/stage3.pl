#========================================================================
#	こころストーリー
#	ステージ3　VS布都
#	場所：神霊廟
#	ステージタイトル
#	   「裂けてたのは口か、面か」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,kokoro,-360,0,false
,DefineObject,futo,-360,0,true

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
,DefineObject,kokoro_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,kokoro,こころ_普1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,kokoro,-1280	,

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
すみませーん\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
お面の修理をお願いしたいと\n思いまして\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
太子様なら今は留守だ\,a11x2,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,布都_惑1,0,0
何やら重要な仕事がある\nそうで神社に……\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_驚1,0,0
って、お主\n何故未だにボールを持っている？\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_惑1,0,0
太子様が全て集めたと\n思ったのだが……\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_惑1,0,0
ボール？\,a05x2,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
もしかして太子様の作戦に\n何か変化があったのかも知れん\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_余1,0,0
まあ、お主のボールを奪ってから\n向かうとしよう\,a15x3,0,0
,ClearBalloon,futo



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kokoro,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kokoro,こころ_負1,0,0
,ImageDef,futo,布都_普1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,futo,-1280	,#こころフェイス表示開始

,SetFocus,futo
またボールが復活したのか……\,a15x3,0,0

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
,ImageDef,kokoro,こころ_驚1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,futo,-1280	,#こころフェイス表示開始

,SetFocus,kokoro		,
そうだ\nアタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,futo		,
人をボコボコにしてから\n聞く質問では無いな\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
口裂け女の本分を\n忘れてました\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_余1,0,0
さてと\nお面を直して貰わないと\,a11x2,0,0
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
