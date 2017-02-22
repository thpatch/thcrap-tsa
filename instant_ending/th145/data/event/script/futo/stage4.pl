#========================================================================
#	布都ストーリー
#	ステージ4　VS聖
#	場所：命蓮寺
#	ステージタイトル
#	   「最後のボールの持ち主は」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/hijiri.csv"

#フェイス画像
,DefineObject,futo,-360,0,false
,DefineObject,hijiri,-360,0,true

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
,DefineObject,futo_label,50,360,false
,DefineObject,hijiri_label,1120,360,false

#初期表情設定
,ImageDef,futo,布都_決1,0,0
,ImageDef,hijiri,聖_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,hijiri,-1280,&
,th145_Show,futo,-1280	,

#,SetFocus,futo		,
#,ImageDef,futo,布都_決1,0,0
#頼もーう！\n我とボールを賭けて闘えー！\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_普1,0,0
#おやまあ\nお布施の方ですね\,a11x2,0,0
#,ClearBalloon,hijiri
#
##紹介カット表示　聖は「聖_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,hijiri
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_嬉1,0,0
#ボールの方からやってくるなんて\n手間が省けたわ\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_余1,0,0
#どうです？　このボール\nこの様な瑕疵の無い珠は徳のある\nこのお寺に寄贈するに限る……\,c15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_汗1,0,0
#って、そんな訳あるかーい！\,b15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_怒1,0,0
#お主の持つオカルトボールを\n奪いに来たのだ\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_惑1,0,0
#おやまぁご苦労様\nでもよりによって私なんて\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_余1,0,0
#他に奪いやすい人だって\n居るでしょう？\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_惑1,0,0
#自分だってお主と闘うのは\n気が進まぬのだが仕方が無い\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_普1,0,0
#もう他に持っている人は\n太子様だけなのじゃ\,a11x2,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_嬉1,0,0
#あら私の方が\n簡単だとでも\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,Function,"StopBGM(4000);",# BGM停止
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_普1,0,0
#で、貴方は何で集めたいと\n思っているの？\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_驚1,0,0
#え？\nだって七つ集めると願いが\n叶うって言うし\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_余1,0,0
#願いが叶ったら念願の…\,a11x2,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,布都_汗1,0,0
#いやなんでも無い\n勝った気でいてはいかんな\,a15x3,0,0
#,ClearBalloon,futo

,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始

#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_普1,0,0
#まあいいわ\,a05x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_決1,0,0
#七つ集めたら\n本当に願いが叶うのか\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_決1,0,0
#貴方のボールを奪って\n試してみましょう\,c11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,聖_怒1,0,0
#私は願いが叶うとは\n絶対に思わないけどね！\,b11x2,0,0
#,ClearBalloon,hijiri




#両者フェイス撤去
,th145_Hide,futo,-1280,&
,th145_Hide,hijiri,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,futo,布都_負1,0,0
,ImageDef,hijiri,聖_余1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,hijiri,-1280	,#布都フェイス表示開始

,SetFocus,hijiri
何を願おうかな\nやっぱり豪華な精進料理かねぇ\,a15x3,0,0

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
,ImageDef,futo,布都_驚1,0,0
,ImageDef,hijiri,聖_負1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,hijiri,-1280	,#布都フェイス表示開始

,SetFocus,hijiri
本文\,a11x2,0,0
,ClearBalloon,hijiri

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
