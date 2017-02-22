#========================================================================
#	にとりストーリー
#	ステージ2　VS一輪
#	場所：命蓮寺
#	ステージタイトル
#	   「時には無料で仕入れます」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,nitori,-360,0,false
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
,DefineObject,nitori_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,nitori,にとり_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,nitori,-1280	,

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_普1,0,0
良いところに現われたな\nボールを賭けて勝負だ！\,a11x2,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,にとり_驚1,0,0
野蛮な奴め\nボールは大切な商品だ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_怒1,0,0
どうせお前じゃお代を\n払うつもりないんだろ？\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_決1,0,0
そりゃそうよ！\n正当な理由で決闘できるから\n楽しいんじゃないの\,a15x3,0,0
,ClearBalloon,ichirin


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,nitori,-1280,&
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
,ImageDef,nitori,にとり_負1,0,0
,ImageDef,ichirin,一輪_余1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,ichirin,-1280	,#にとりフェイス表示開始

,SetFocus,ichirin
ついでに尻子玉も\n貰っちゃえ\,a11x2,0,0

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
,ImageDef,nitori,にとり_驚1,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,ichirin,-1280	,#にとりフェイス表示開始


,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
ならばボールは頂いていく\nお代は要らないよな\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
ねぇあんたの\R[都市伝説|オカルト]って\n作り物じゃない？\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,にとり_惑1,0,0
そうだよ\nでもそれが何か？\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
いや、それじゃあオカルトボールを\n持っていないんじゃ無いかと思って\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
いやそれが持っているんだな\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
作り物の都市伝説でもオカルトの\n影響を受けるのね\nちょっと考え直さないとなぁ\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
そうは言うけど\nあんたらもみんな\R[都市伝説|つくりばなし]じゃん\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,ichirin		,
そういえばそうねぇ\,c11x2,0,0
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
