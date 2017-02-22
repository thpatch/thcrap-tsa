#========================================================================
#	妹紅ストーリー
#	ステージ3　VSにとり
#	場所：玄武の沢
#	ステージタイトル
#	   「ビジネスは相手を選ぶ」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#フェイス画像
,DefineObject,mokou,-360,0,false
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

,Function,"GameStory_PlayBGM(703);",# 会話BGM再生開始

#肩書き登録
,DefineObject,mokou_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#初期表情設定
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,nitori,にとり_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280,

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
なんだ？\nボールが欲しいのか？\,a11x2,0,0
,ClearBalloon,nitori

#紹介カット表示　にとりは「にとり_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
ああ\n売っていると聞いてな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_嬉1,0,0
よーし良いでしょう\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
いくらなら出せます？\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
そうだな\n出来るだけ安くして貰おう\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_汗1,0,0
そんなご冗談を\nこれは大層貴重品ですぜ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
そう言えば河童は水が\n涸れると苦しいんだよな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
自ら手放したくなる様に\n炙ってやるよ\,a11x2,0,0
,ClearBalloon,mokou


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,mokou,-1280,&
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
,ImageDef,mokou,妹紅_負1,0,0
,ImageDef,nitori,にとり_怒1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,nitori,-1280	,#妹紅フェイス表示開始

,SetFocus,nitori
うあ、乱暴な客だ\n塩撒いとけ！\,a11x2,0,0

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
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,nitori,にとり_負1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,nitori,-1280	,#妹紅フェイス表示開始

,SetFocus,nitori		,
アッチッチ\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
お客さん困りますぜー\nそんな乱暴働いちゃあ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
このボールも外れか\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
霊夢が持っていたのが\n黄泉比良坂だったのは\nタマタマだったのか\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
\R[球|ボール]だけに？\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
タマだけに\,a05x2,0,0
,ClearBalloon,mokou

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
