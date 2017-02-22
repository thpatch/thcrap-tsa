#========================================================================
#	聖ストーリー
#	ステージ１　VS一輪
#	場所：宝船
#	ステージタイトル
#	   「出陣！最強最速の老婆」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,hijiri,-360,0,false
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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,hijiri_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,hijiri,聖_普1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&
,th145_Show,hijiri,-1280	,

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_普1,0,0
一輪や\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_余1,0,0
私も面白い力を\n手に入れたわよ\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,ichirin		,
,ImageDef,ichirin,一輪_驚1,0,0
というと、もしかして\n聖様も都市伝説を使う気に\nなったのですね\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,hijiri		,
,ImageDef,hijiri,聖_決1,0,0
ふっふっふ\n最強最速の都市伝説よ\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_嬉1,0,0
私も遊びに参加しても\n良いわよね？\,a11x2,0,0
,ClearBalloon,hijiri





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,hijiri,-1280,&
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
,ImageDef,hijiri,聖_負1,0,0
,ImageDef,ichirin,一輪_汗1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,ichirin,-1280	,#聖フェイス表示開始

,SetFocus,ichirin
まだ扱いに慣れてない\nみたいですね\,a11x2,0,0

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
,ImageDef,hijiri,聖_惑1,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,ichirin,-1280	,#聖フェイス表示開始


,SetFocus,hijiri		,
なる程\nこれが噂のオカルトボール……\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,ichirin,
どうでしょう？\n七つ集めると覚りが開ける\nそうですが\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,hijiri		,
ふーん\nこれは厄介な代物ねぇ\,a11x2,0,0
,ClearBalloon,hijiri




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
