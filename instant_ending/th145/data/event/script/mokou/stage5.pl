#========================================================================
#	妹紅ストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「サイキックバトル」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,mokou,-360,0,false
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
,DefineObject,mokou_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

#,th145_Show,mokou,-1280,
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_驚1,0,0
#ほへー\,a05x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_惑1,0,0
#私の知っていた世界と違う……\nこれが外の世界だと？\,a15x3,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_汗1,0,0
#仕方が無いか\nあれから千年近くも\n経ってるもんなぁ\,a15x3,0,0
#,ClearBalloon,mokou
#
## 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,usami,菫子_普1,0,0
#,th145_Show,usami,-1280	,
#
#,SetFocus,usami		,
#また釣れた釣れた\n大量だー\,a11x2,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_驚1,0,0
#しまった\n外の人間に見られた\,a11x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_怒1,0,0
#消すか？\,a05x2,0,0
#,ClearBalloon,mokou
#
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#おお怖\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#大分好戦的な奴が\n釣れちゃった\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#本当にあった洒落にならない話\nなんちて\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_怒1,0,0
#外の世界で暴れるなと\n言われたけれど\,a11x2,0,0
#,ClearBalloon,mokou
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_普1,0,0
#こういうぬるま湯に\n浸かってそうな奴を見てたら\nイライラしてくるな\,a15x3,0,0
#,ClearBalloon,mokou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#ぬるま湯だなんて失礼ね\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#問題抱えまくる現代社会の\n息詰まる学校生活\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_怒1,0,0
#それらを経験してない\n奴に何が判る\,a11x2,0,0
#,ClearBalloon,usami
#
#,Function,"StopBGM(2000);",# BGM停止
#
#,SetFocus,mokou		,
#,ImageDef,mokou,妹紅_決1,0,0
#こいつは十分強そうだし\nちょっと遊んでやっても\n良いんじゃないか？\,a15x3,0,0
#,ClearBalloon,mokou
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#やっぱり幻想郷の奴は\nみんな好戦的ね\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#そしてみんなして\n相手を侮る\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#人類の叡智か\n歪みが生んだ悪魔か\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#どちらが優れているのか\n試さないと気が済まないわ！\,a15x3,0,0
#,ClearBalloon,usami
#
#
#
#


#両者フェイス撤去
,th145_Hide,mokou,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mokou,妹紅_負1,0,0
,ImageDef,usami,菫子_驚1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,usami,-1280	,#妹紅フェイス表示開始

,SetFocus,usami
不老不死ですって？\nもしかして三ツ目の人とか\n出てこない？\,a15x3,0,0

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
,ImageDef,mokou,妹紅_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,usami,-1280	,#妹紅フェイス表示開始

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
