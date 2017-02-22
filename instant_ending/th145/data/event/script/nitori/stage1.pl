#========================================================================
#	にとりストーリー
#	ステージ1　VS魔理沙
#	場所：神社
#	ステージタイトル
#	   「安く買って高く売ります！」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,nitori,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,nitori_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,nitori,にとり_普1,0,0
,ImageDef,marisa,魔理沙_敵1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,marisa,-1280,&
,th145_Show,nitori,-1280	,

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
ボールはいらんかねー\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
オカルトボールを\n売っているのか\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
はいそうです\nお安くしときますぜ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚1,0,0
買い取りは\nしてないのか？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,nitori		,
,ImageDef,nitori,にとり_決1,0,0
ええ買い取りもＯＫですよ\n勿論お安くしときますぜ\,a15x3,0,0
,ClearBalloon,nitori






,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,nitori,-1280,&
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
,ImageDef,nitori,にとり_負1,0,0
,ImageDef,marisa,魔理沙_汗1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,marisa,-1280	,#にとりフェイス表示開始

,SetFocus,marisa
おっと\n買うつもりは無かったが\,a11x2,0,0

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
,ImageDef,nitori,にとり_嬉1,0,0
,ImageDef,marisa,魔理沙_驚1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,marisa,-1280	,#にとりフェイス表示開始



,SetFocus,nitori		,
それでは買取価格は\nこちらになります\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,marisa		,
そうか、お金になるなんて\n思ってもみなかったが\n要らなかったんで丁度いいや\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
って安！\,c05x2,0,0
,ClearBalloon,marisa





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
