#========================================================================
#	菫子ストーリー
#	ステージ7　VS神子
#	場所：異変の神社
#	ステージタイトル
#	   「悪夢の堂々巡り」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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
,DefineObject,usami_label,50,360,false
,DefineObject,miko_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,miko,神子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

##タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
#
#,th145_Show,usami,-1280	,
#
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_汗1,0,0
#結局神社に戻って\n来てしまった……\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#幻想郷に来るといつも\nここからだからねぇ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_怒1,0,0
#何とかして戻る手段を\n考えないと……\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,miko		,
##,ImageDef,miko,神子_普1,0,0
#遅かったな\,a05x2,320,0
#,ClearBalloon,miko
#
# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#,th145_Show,miko,-1280,
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#お前が来るのを待っていたよ\,a15x3,0,0
#,ClearBalloon,miko
#
##紹介カット表示　神子は「神子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#今度は一体何よ\nもう帰らせてよー\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_驚1,0,0
#帰りたい？\,a05x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余1,0,0
#ほう面白い事を言うじゃないか\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余2,0,0
#私はお前を外の世界に\n送り返す為に待っていたのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#このオカルトボールと\n一緒にな\,a11x2,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(4000);",# BGM停止
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#は、オカルトボールﾇ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#そうだ、それがあれば\n一時的にでも帰る事が出来る筈\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#何でそれに気が付かな\nかったんだろう\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余2,0,0
#ボールの仕掛けは\n私が見抜いたよ\,a11x2,0,0
#,ClearBalloon,miko
#
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_嬉1,0,0
#幻想郷に忍び込もうと\n思ったんだろうが\n当てが外れたな\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#お前、ボールをばらまきに\n何度も幻想郷に来ていただろ？\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#その時はお前の影しか来て\nなかったから殆どの輩には\n見えなかった様だがな\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_決1,0,0
#今度こそ、全てのオカルトボール\nと一緒に送り返してやろう\,a15x3,0,0
#,ClearBalloon,miko
#
#


#両者フェイス撤去
,th145_Hide,usami,-1280,&
,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,菫子_負1,0,0
,ImageDef,miko,神子_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,miko,-1280	,#菫子フェイス表示開始

,SetFocus,miko
おいおい\n負けてやるって言ってるのに\,a15x3,0,0

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
,ImageDef,usami,菫子_驚1,0,0
,ImageDef,miko,神子_負1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,miko,-1280	,#菫子フェイス表示開始

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
