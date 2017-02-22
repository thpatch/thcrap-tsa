#========================================================================
#	こころストーリー
#	ステージ2　VSにとり
#	場所：人間の里（夜）
#	ステージタイトル
#	   「オカルトは進化する」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#フェイス画像
,DefineObject,kokoro,-360,0,false
,DefineObject,nitori,-360,0,true

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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,kokoro_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#初期表情設定
,ImageDef,kokoro,こころ_普1,0,0
,ImageDef,nitori,にとり_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,nitori,-1280,


,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
遅くなっちまったなー\,a11x2,0,0
,ClearBalloon,nitori

#紹介カット表示　にとりは「にとり_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,にとり_怒1,0,0
自営業には残業代も無いんだぜー\nちくしょー\,a15x3,0,0
,ClearBalloon,nitori


,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,kokoro,こころ_普1,0,0
,th145_Show,kokoro,-1280	,

,SetFocus,kokoro		,
ねぇねぇ\nそこの河童さん\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_惑1,0,0
アタシ、キレイ？\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,にとり_怒1,0,0
ポマードだ！\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_怒1,0,0
はっはっはー！\nいつまでも口裂け女に整髪料が\n効くと思うな！\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,にとり_驚1,0,0
ﾇ\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_決1,0,0
喰らえい！\,a05x2,0,0
,ClearBalloon,kokoro




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kokoro,-1280,&
,th145_Hide,nitori,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kokoro,こころ_負1,0,0
,ImageDef,nitori,にとり_普1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,nitori,-1280	,#こころフェイス表示開始

,SetFocus,nitori
さてと\n帰って寝よーっと\,a11x2,0,0

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
,ImageDef,kokoro,こころ_決1,0,0
,ImageDef,nitori,にとり_負1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,nitori,-1280	,#こころフェイス表示開始

,SetFocus,nitori		,
ポマードが効かないだと？\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
口裂け女だって成長する\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
と言うかお前\n口裂け女じゃ無いだろ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_普1,0,0
あれ？\,a05x2,0,0
,ClearBalloon,kokoro

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
お面のお化けじゃん\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,kokoro		,
,ImageDef,kokoro,こころ_汗1,0,0
そうでした\nあれ？　お面に傷が……\,a11x2,0,0
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
