#========================================================================
#	華扇ストーリー
#	ステージ3　VSこころ
#	場所：人間の里（夜）
#	ステージタイトル
#	   「ポマード分が足りない！」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#フェイス画像
,DefineObject,kasen,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,kasen_label,50,360,false
,DefineObject,kokoro_label,1120,360,false

#初期表情設定
,ImageDef,kasen,華扇_怒1,0,0
,ImageDef,kokoro,こころ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kasen,-1280	,#こころフェイス表示開始

,SetFocus,kasen		,#発言中キャラを指定
どうやらみんな無自覚のうちに\nボールを手にしている様ね\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
ボールを所持している者の条件を\n考え直す必要があるか\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_普1,0,0
ここらで情報収集するか\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_余1,0,0
まあ私がボールを\n二つ所持している時点で\n七つ集まる心配は無いのだけど\,a15x3,0,0
,ClearBalloon,kasen


#1P上から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kokoro		,#発言中キャラを指定
,ImageDef,kokoro,こころ_普1,0,0
,th145_Show,kokoro,-1280	,#こころフェイス表示開始
ねぇねぇ\nアタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro

#紹介カット表示　こころは「こころ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
あんたは\n何時ぞやの能楽師の……\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro		,#発言中キャラを指定
,ImageDef,kokoro,こころ_怒1,0,0
アタシ、キレイ？\nって訊いてんのよ\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_汗1,0,0
うーん\n悪くは無いんじゃ無い？\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro		,#発言中キャラを指定
,ImageDef,kokoro,こころ_決1,0,0
ふっふっふ\nこれでもキレイなのかー！\,a11x2,0,0
,ClearBalloon,kokoro









,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kasen,-1280,&
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
,ImageDef,kasen,華扇_負1,0,0
,ImageDef,kokoro,こころ_驚1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,kokoro,-1280	,#華扇フェイス表示開始

,SetFocus,kokoro
あー顎が疲れた\,a11x2,0,0

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
,ImageDef,kasen,華扇_驚1,0,0
,ImageDef,kokoro,こころ_負1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,kokoro,-1280	,#華扇フェイス表示開始

,SetFocus,kasen
こんな所にも\nボールがあるなんて\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kokoro
アタシ、キレイじゃない……\,a11x2,0,0
,ClearBalloon,kokoro


,SetFocus,kasen
,ImageDef,kasen,華扇_汗1,0,0
そんな事は口が裂けても\n言わない方が良いわね\,a11x2,0,0
,ClearBalloon,kasen





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
