#========================================================================
#	針妙丸ストーリー
#	ステージ１　VS一輪
#	場所：宝船
#	ステージタイトル
#	   「全力で煽っていきます」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,sinmyoumaru,-360,0,false
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
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,sinmyoumaru,-1280	,

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
よーしそこの巨人ー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_普1,0,0
きょ、巨人？\nああ雲山の事よね\,a11x2,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0
満を持してオカルトボールを\n奪いに来たぞー！\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_驚1,0,0
ボールを賭けての戦闘なら\n負けないよ！\,a15x3,0,0

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
さあ覚悟しろー！\n巨女めー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_汗1,0,0
きょ、巨女だって？\,a11x2,0,0
,ClearBalloon,ichirin





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,sinmyoumaru,-1280,&
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
,ImageDef,sinmyoumaru,針妙丸_負1,0,0
,ImageDef,ichirin,一輪_汗1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,ichirin,-1280	,#針妙丸フェイス表示開始

,SetFocus,ichirin
巨女って、八尺さまの事よね\nドキドキドキ\,a15x3,0,0

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
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,ichirin,-1280	,#針妙丸フェイス表示開始

,SetFocus,sinmyoumaru		,
ボールを手に入れたぞー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
おー\nお前結構沢山持ってたなー\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,
結構勝ち進んでたのにー\,a11x2,0,0
,ClearBalloon,ichirin

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
