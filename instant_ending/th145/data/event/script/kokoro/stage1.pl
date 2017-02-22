#========================================================================
#	こころストーリー
#	ステージ１　VS一輪
#	場所：人間の里（夜）
#	ステージタイトル
#	   「オカルトは成長する」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,kokoro,-360,0,false
,DefineObject,ichirin,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# 会話BGM再生開始

#肩書き登録
,DefineObject,kokoro_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,kokoro,こころ_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,
,ImageDef,ichirin,一輪_驚1,0,0

#1P上から登場
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,th145_Show,kokoro,-1280,


,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
ねー\nアタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,ichirin		,
わあビックリしたー！\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_普1,0,0
何だー\n口裂け女かあ\,a11x2,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_余1,0,0
はいポマードポマード\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_余1,0,0
ふっふっふ\n我は整髪料を克服した\n真の口裂け女\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_決1,0,0
そんな呪文効かぬわー！\,a11x2,0,0
,ClearBalloon,kokoro





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kokoro,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kokoro,こころ_負1,0,0
,ImageDef,ichirin,一輪_汗1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,ichirin,-1280	,#こころフェイス表示開始

,SetFocus,ichirin
何なんだ一体\,a11x2,0,0

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
,ImageDef,kokoro,こころ_嬉1,0,0
,ImageDef,ichirin,一輪_驚1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,ichirin,-1280	,#こころフェイス表示開始

,SetFocus,ichirin		,
そんな馬鹿な……\n伝説の呪文　ポマード　が\n効かないだなんて\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,kokoro		,
はっはっは\n口裂け女はいくらでも\nパワーアップするぞ\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
さあ噂するが良い\n我を強化するがよい\,a11x2,0,0
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
