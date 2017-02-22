#========================================================================
#	こころストーリー
#	ステージ4　VS神子
#	場所：異変の神社
#	ステージタイトル
#	   「もしかしてお邪魔かしら？」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kokoro.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#フェイス画像
,DefineObject,kokoro,-360,0,false
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
,DefineObject,kokoro_label,50,360,false
,DefineObject,miko_label,1120,360,false

#初期表情設定
,ImageDef,kokoro,こころ_普1,0,0
,ImageDef,miko,神子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2Pキャラステージ下から登場
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#,ImageDef,miko,神子_驚1,0,0
#,th145_Show,miko,-1280,
#
#,SetFocus,miko		,
#誰だ？\,a05x2,0,0
#,ClearBalloon,miko
#
#,th145_Show,kokoro,-1280	,
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#面霊気か……\n何だ、今は邪魔するな\,a11x2,0,0
#,ClearBalloon,miko
#
##紹介カット表示　神子は「神子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,kokoro		,
#,ImageDef,kokoro,こころ_惑1,0,0
#何をしているの？\,a11x2,0,0
#,ClearBalloon,kokoro
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余1,0,0
#お前には与り知らぬ事だ\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,kokoro		,
#,ImageDef,kokoro,こころ_嬉1,0,0
#暇なら\nお面直してくれるー？\,a11x2,0,0
#,ClearBalloon,kokoro
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_惑1,0,0
#暇じゃないと言っておる\,a11x2,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(500);",# BGM停止
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#このボールを中心とした騒動も\n今まさに正念場なのだ……\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_驚1,0,0
#ってお前、何でまだ\nオカルトボールを持っている？\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_惑1,0,0
#危ないところだった\n全て集めたつもりだったが\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_決1,0,0
#まだこんな所にもあったのか\,a15x3,0,0
#,ClearBalloon,miko
#
#
#
#
##両者フェイス撤去
#,th145_Hide,kokoro,-1280,&
#,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kokoro,こころ_負1,0,0
,ImageDef,miko,神子_惑1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,miko,-1280	,#こころフェイス表示開始

,SetFocus,miko
おかしい……\nオカルトボールが多すぎる\nどういう事だ？\,a15x3,0,0

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
,ImageDef,kokoro,こころ_驚1,0,0
,ImageDef,miko,神子_負1,0,0

,th145_Show,kokoro,-1280	,&,#こころフェイス表示開始
,th145_Show,miko,-1280	,#こころフェイス表示開始

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
