#========================================================================
#	聖ストーリー
#	ステージ5　VS神子
#	場所：神霊廟
#	ステージタイトル
#	   「全オカルトボールの行方は」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#フェイス画像
,DefineObject,hijiri,-360,0,false
,DefineObject,miko,-360,0,true

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
,DefineObject,hijiri_label,50,360,false
,DefineObject,miko_label,1120,360,false

#初期表情設定
,ImageDef,hijiri,聖_普1,0,0
,ImageDef,miko,神子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,miko,-1280,&
,th145_Show,hijiri,-1280	,

#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#やはり最後に\nやり合うのはお前か\,a11x2,0,0
#,ClearBalloon,miko
#
##紹介カット表示　神子は「神子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_普1,0,0
#貴方もボールを集めていることは\n聞いてました\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_惑1,0,0
#何が目的です？\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余1,0,0
#自分の事を差し置いて質問か\nまあ良かろう\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#私が下らぬ噂に夢中になって\nボールを集めているとでも\n思ったのか？\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_嬉1,0,0
#まさか、思ってないわ\nだから心配なんですけど\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_余1,0,0
#だってこのボール\n無為の好奇と深秘で\n出来ているんですもの\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#好奇と深秘……か\nお前らしい見え方だな\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余2,0,0
#これは外の世界の代物だ\n外に意図的に\R[幻想郷|こちら]に作用しよう\nとする者がいる筈である\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#その者が幻想郷に好奇心を\n抱いているとしたら\nそれは恐ろしいことだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_驚1,0,0
#外の世界……ですか\nなる程それで正体が判らない\n事ばかりだったのね\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_惑1,0,0
#私はそれを確かめるべく\n自分で集めて調べているのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#私は答えたぞ？\nそれで何だ\nお前がボールを集める理由は？\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(4000);",# BGM停止
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_怒1,0,0
#私は……この\R[都市伝説|オカルト]が悪意に\n利用されないよう全て纏めて\n封印しようと思うのです\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余1,0,0
#封印だと？\nそうか臭い物に蓋をするのが\nお前達の特技だったな\,a15x3,0,0
#,ClearBalloon,miko

,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始

#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#笑わせるな\,a05x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_惑1,0,0
#この都市伝説\n噂を介し自然発生的に\n広まっている\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#人の口に戸は立てられぬ\nそうだろ？\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#何にしてもオカルトボールは\n戦闘を介してでしかやりとりは\n出来ぬようだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_決1,0,0
#お前と私のイデオロギーが\nどちらが正しいのかを決めるのも\n闘うしか無いのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_決1,0,0
#仕方が無いね\n貴方は聡明すぎるのです\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_怒1,0,0
#そんな奴に悪夢の力を\n渡すわけにはいけない！\,a11x2,0,0
#,ClearBalloon,hijiri




##両者フェイス撤去
#,th145_Hide,hijiri,-1280,&
#,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,hijiri,聖_負1,0,0
,ImageDef,miko,神子_余1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,miko,-1280	,#聖フェイス表示開始

,SetFocus,miko
これで全部揃ってしまったな\,a15x3,0,0

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
,ImageDef,hijiri,聖_驚1,0,0
,ImageDef,miko,神子_負1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,miko,-1280	,#聖フェイス表示開始

,SetFocus,miko
本文\,a11x2,0,0
,ClearBalloon,miko

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
