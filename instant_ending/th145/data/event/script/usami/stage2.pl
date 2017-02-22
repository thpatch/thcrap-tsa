#========================================================================
#	菫子ストーリー
#	ステージ2　VS一輪
#	場所：人間の里（夜）
#	ステージタイトル
#	   「最新の都市伝説」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(705);",# 会話BGM再生開始

#肩書き登録
,DefineObject,usami_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,usami,-1280	,



,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
ここは？\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
映画村みたいなセットね\,a11x2,0,0
,ClearBalloon,usami

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,ichirin,-1280,

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_普1,0,0
ポッポッポポッポ\,a11x2,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
む、女の人……\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_驚1,0,0
誰？\n見た事のない人間ね\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_嬉1,0,0
いいや脅かしちゃえ\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
ドキドキ\n何の妖怪かしら……\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_決1,0,0
ポッポッポポッポ\,a11x2,0,0

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
もしかしてその笑い方\n八尺さまﾇ\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
ネット時代の\R[都市伝説|つくりばなし]が\n実在するだなんてー！\,a11x2,0,0
,ClearBalloon,usami


,Function,"StopBGM(500);",# BGM停止
#両者フェイス撤去
,th145_Hide,usami,-1280,&
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
,ImageDef,usami,菫子_負1,0,0
,ImageDef,ichirin,一輪_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,ichirin,-1280	,#菫子フェイス表示開始

,SetFocus,ichirin
ネット時代って\nどういう意味？\,a11x2,0,0

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
,ImageDef,usami,菫子_汗1,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,ichirin,-1280	,#菫子フェイス表示開始

,SetFocus,usami		,
本物の八尺さまなら逃げなきゃ\n取り殺されてしまう\,a15x3,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,
今の誰？\n見た事無い人間ねぇ\,a11x2,0,0
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
