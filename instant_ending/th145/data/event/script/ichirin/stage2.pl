#========================================================================
#	一輪ストーリー
#	ステージ2　VS魔理沙
#	場所：宝船
#	ステージタイトル
#	   「元気の無い魔法使い」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,ichirin,-360,0,false
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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,ichirin_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,ichirin,一輪_普1,0,0
,ImageDef,marisa,魔理沙_普1,0,0

#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280	,#

,SetFocus,ichirin		,#発言中キャラを指定
今度は何処に行こうかな\,a11x2,0,0
,ClearBalloon,ichirin

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_驚1,0,0
あ、魔理沙さん\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_余1,0,0
あの戦いのお陰でボール集めの\n楽しさに目覚めましたよ\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_嬉1,0,0
もう四つも集まりました\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_敵1,0,0
,th145_Show,marisa,-1280	,#魔理沙フェイス表示開始
うーん\nそうかー\,a05x2,0,0
,ClearBalloon,marisa

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_惑1,0,0
今日も\n勝負しますよねぇ？\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_惑1,0,0
奪われても暫くしたら\n何故か復活するみたいだし\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
ボール遊びは\n程々にしておいた方が良いぞ\,a15x3,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
今日はそれを言いに\n来たんだが……\n言っても無駄のようだな\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_決1,0,0
よく判ってるじゃない\nじゃあ行くよ！\,b11x2,0,0
,ClearBalloon,ichirin






,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,ichirin,一輪_負1,0,0
,ImageDef,marisa,魔理沙_汗1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,marisa,-1280	,#一輪フェイス表示開始

,SetFocus,marisa
またボールを手に入れてしまった\,a15x3,0,0

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
,ImageDef,ichirin,一輪_惑1,0,0
,ImageDef,marisa,魔理沙_負1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,marisa,-1280	,#一輪フェイス表示開始

,SetFocus,ichirin		,#発言中キャラを指定
何だか張り合いが\n無いですね\,c11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
貴方らしくも無い\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
まあ今は\nそう言う気分なんだよ\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa
それにしてもあと二つか\nお前がねぇ\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_普1,0,0
残り二つは誰が\n持ってるんでしょう？\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
うーん空中にもう一つあるな\n私の鼻がそう言っている\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_汗1,0,0
空中……？\n何で教えてくれるの？\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,marisa
何でだろうなぁ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa
お前が全部集めたら\nどうなるのか見てみたい\n気がするからかな\,a15x3,0,0
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
