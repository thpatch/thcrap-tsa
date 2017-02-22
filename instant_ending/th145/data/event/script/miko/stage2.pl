#========================================================================
#	神子ストーリー
#	ステージ2　VS一輪
#	場所：宝船
#	ステージタイトル
#	   「マント怪人の本分」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,miko,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,miko_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,miko,神子_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&
,th145_Show,miko,-1280	,

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
お前がボールを持っていることは\n知っている\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_余1,0,0
悪い事は言わない\n大人しく渡すが良い\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_驚1,0,0
出たな怪人赤青マント！\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_決1,0,0
そんなんじゃ盛り上がらないわ\nボールが欲しければ\nもっと都市伝説っぽく振舞え！\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,miko		,
,ImageDef,miko,神子_余2,0,0
ほう確かにな\nその方がボールの作者も喜ぶか\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_怒1,0,0
赤いマントと青いマント\nどちらか欲しい方を叫べ！\,b15x3,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_決1,0,0
よーし両方だ\n両方よこせー！\,b11x2,0,0
,ClearBalloon,ichirin





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,miko,-1280,&
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
,ImageDef,miko,神子_負1,0,0
,ImageDef,ichirin,一輪_普1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,ichirin,-1280	,#神子フェイス表示開始

,SetFocus,ichirin
本当は青いマントの方が\n良いなぁ\,a11x2,0,0

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
,ImageDef,miko,神子_余2,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,ichirin,-1280	,#神子フェイス表示開始

,SetFocus,miko		,
赤いマントと青いマント\n両方だと血まみれになってから\n血を抜かれるのだが……\,c15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_嬉1,0,0
まあ今回はボールだけで勘弁して\nおいてやる\n時間がある時にやってやろう\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,ichirin		,
ひえー\,c05x2,0,0
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
