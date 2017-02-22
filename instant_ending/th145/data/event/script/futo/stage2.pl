#========================================================================
#	布都ストーリー
#	ステージ2　VS霊夢
#	場所：夢殿大祀廟
#	ステージタイトル
#	   「不思議と調子が狂う戦い」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#フェイス画像
,DefineObject,futo,-360,0,false
,DefineObject,reimu,-360,0,true

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
,DefineObject,futo_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#初期表情設定
,ImageDef,futo,布都_普1,0,0
,ImageDef,reimu,霊夢_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280	,

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
強そうな奴は太子様が\n相手にしている筈だから……\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
次は誰からボールを\n奪おうかな\,a11x2,0,0
,ClearBalloon,futo

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,reimu,霊夢_敵2,0,0
,th145_Show,reimu,-1280,

#紹介カット表示　霊夢は「霊夢_敵2」からのみ実行可能
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,布都_驚1,0,0
おや？\n霊夢殿じゃないか\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_嬉1,0,0
丁度良い\nオカルトボールを賭けて\n勝負していかんか？\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
ああ……いいわ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_敵1,0,0
丁度オカルトボールの事を\n調べてたから\,a15x3,0,0
,ClearBalloon,reimu


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,futo,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,futo,布都_負1,0,0
,ImageDef,reimu,霊夢_惑1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,reimu,-1280	,#布都フェイス表示開始

,SetFocus,reimu
また手に入れちゃったなぁ\n今度は手放したかったのに\,a11x2,0,0

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
,ImageDef,futo,布都_嬉1,0,0
,ImageDef,reimu,霊夢_負1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,reimu,-1280	,#布都フェイス表示開始


,SetFocus,futo		,
よーし\n新たにボールを手に入れたぞ！\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_余1,0,0
もしかして手加減したり\nしてなかったか？\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,reimu		,
そ、そんなことないわよ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
それより、残りのボールの\n所有者を全て知りたくない？\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,futo		,
,ImageDef,futo,布都_惑1,0,0
ほう　何でそんな事を教えて\nくれるんだ？\,a15x3,0,0
,ClearBalloon,futo


,SetFocus,reimu		,
ボールは自分で蒐集よりも\n観察したほうが良さそうでね……\,a15x3,0,0
,ClearBalloon,reimu





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
