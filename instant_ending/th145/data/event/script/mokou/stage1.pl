#========================================================================
#	妹紅ストーリー
#	ステージ1　VS霊夢
#	場所：竹林
#	ステージタイトル
#	   「妹紅、ついに流行に乗る」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#フェイス画像
,DefineObject,mokou,-360,0,false
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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,mokou_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#初期表情設定
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,reimu,霊夢_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
おや、どうした？\n久しぶりだな\,a11x2,0,0
,ClearBalloon,mokou

,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_敵2,0,0
元気してた？\,a05x2,0,0
,ClearBalloon,reimu

#紹介カット表示　霊夢は「霊夢_敵2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
あいにく身体は弱くてな\n動くとすぐダメージを\n負ってしまうんだ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_普1,0,0
あっそ\nでもようやく見つけたわ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_決1,0,0
まさかあんたがボールを\n持ってたなんてね\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
またボールの話か\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
まあいい\n欲しければ奪ってみな\,a11x2,0,0
,ClearBalloon,mokou





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,mokou,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mokou,妹紅_負1,0,0
,ImageDef,reimu,霊夢_汗1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,reimu,-1280	,#妹紅フェイス表示開始

,SetFocus,reimu
不老不死の癖に身体弱いとか\nいっちゃって\nちゃんちゃらおかしいね\,a15x3,0,0

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
,ImageDef,reimu,霊夢_負1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,reimu,-1280	,#妹紅フェイス表示開始

,SetFocus,mokou		,
またつまらぬボールを\n手に入れてしまった\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
ん？\nこのボールは……\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_汗1,0,0
味わったことの無い\nオーラを持っているな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
そのボールは確か\n黄泉比良坂のボールね\,a11x2,0,0
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
