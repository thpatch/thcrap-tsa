#========================================================================
#	こいしストーリー
#	ステージ4　VS菫子
#	場所：異変の神社
#	ステージタイトル
#	   「最初の邂逅は奇跡のタイミング」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,koishi,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# 会話BGM再生開始

#肩書き登録
,DefineObject,koishi_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,koishi,こいし_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,usami,-1280	,

#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#ここは……\n神社か\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#やったあ！\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#あの狸の言うとおり\n正式に幻想郷に入れた\nっぽいわね\,a15x3,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#今日は確認取れれば十分十分\n一旦帰って準備してこよう\,a15x3,0,0
#,ClearBalloon,usami
#
#,ImageDef,koishi,こいし_普1,0,0
#,th145_Show,koishi,-1280,
#
#,SetFocus,koishi		,
#もしもーし\,a05x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#ん？\n何か聞こえた？\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,こいし_惑1,0,0
#もしもーし\n聞こえますかー\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#……もしかしてスマホから\n聞こえている？\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#ここは圏外よね\n……気のせい気のせい\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#まさか携帯が繋がる\n訳無いし……\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,こいし_怒1,0,0
#もしもーし\nねえ電話に出てよう\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#そういえばそんな\n怪談あったっけ？\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#圏外なのに電話が\n掛かってきて\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#「今貴方の後ろにいるの」\nとか何とか言っちゃう奴……\,c15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,こいし_驚1,0,0
#もしもーし\n私、今ねぇ\,a05x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,koishi		,
#,ImageDef,koishi,こいし_決1,0,0
#貴方の目の前にいるの！\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#うわあ！\nで、出たー！　おーばーけー！\,a15x3,0,0
#,ClearBalloon,usami
#
#
,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,koishi,-1280,&
,th145_Hide,usami,-1280,

,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,koishi,こいし_負1,0,0
,ImageDef,usami,菫子_決1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,usami,-1280	,#こいしフェイス表示開始

,SetFocus,usami
逃げなきゃ\R[外の世界|へいわなせかい]へ\n早く！\,a11x2,0,0

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
,ImageDef,koishi,こいし_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,usami,-1280	,#こいしフェイス表示開始

,SetFocus,usami
本文\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# サブルーチン
# -------------------------------------------------------
:TestMessage
サブルーチン実行\
,ClearBalloon
,Return
