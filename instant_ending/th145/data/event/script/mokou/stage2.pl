#========================================================================
#	妹紅ストーリー
#	ステージ2　VS魔理沙
#	場所：香霖堂
#	ステージタイトル
#	   「オカルトボールの種類」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,mokou,-360,0,false
,DefineObject,marisa,-360,0,true

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
,DefineObject,mokou_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,marisa,魔理沙_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,&
,th145_Show,marisa,-1280	,

,ImageDef,marisa,魔理沙_敵1,0,0

,SetFocus,marisa		,
お、珍しい奴がいるな\nどうした迷子か？\,a11x2,0,0
,ClearBalloon,marisa

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
オカルトボールを\n持っているか？\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚1,0,0
へー、お前がねぇ\nボール欲しがるんだ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
みんなが集めたがってた\n理由が判ったからな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_惑1,0,0
ボールは闘わないと\n出てこない事は知ってるな？\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
ああ勿論だ\nさっさと死ねい\,a11x2,0,0
,ClearBalloon,mokou



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,mokou,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mokou,妹紅_負1,0,0
,ImageDef,marisa,魔理沙_惑1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,marisa,-1280	,#妹紅フェイス表示開始

,SetFocus,marisa
こいつは都市伝説を使っている\n様に見えないんだが\,a15x3,0,0

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
,ImageDef,marisa,魔理沙_負1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,marisa,-1280	,#妹紅フェイス表示開始

,SetFocus,marisa		,
そんな本気で闘わなくても\n良いのに……\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
生れてこの方手加減が必要ない\n生活してきたから\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,marisa		,
まあいい\nこのボールはお前の物だ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
ふーむ\nこれは外れだな\,a11x2,0,0

,SetFocus,marisa		,
何だよう\nそれ\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
全部があの世に関係する\nボールって訳でも無いんだな\,a15x3,0,0
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
