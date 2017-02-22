#========================================================================
#	聖ストーリー
#	ステージ2　VS布都
#	場所：夢殿大祀廟
#	ステージタイトル
#	   「簡単なオカルトボール集め」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,hijiri,-360,0,false
,DefineObject,futo,-360,0,true

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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,hijiri_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,hijiri,聖_普1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,hijiri,-1280	,

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
良いところに現われたな！\n我とボールを賭けて闘え！\,a15x3,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_余1,0,0
はいはい\n闘いますよ\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_怒1,0,0
ボールを集めないと\n何も判らないみたいですし\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,futo		,
,ImageDef,futo,布都_決1,0,0
勝った気でいるなよ？\n我のオカルトを見て\n震えおののくがよい！\,a15x3,0,0
,ClearBalloon,futo


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,hijiri,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBGM(501);",# 会話BGM再生開始
,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,hijiri,聖_負1,0,0
,ImageDef,futo,布都_惑1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,futo,-1280	,#聖フェイス表示開始

,SetFocus,futo
一枚足りなーい\nほら怖いだろ？\,a11x2,0,0

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
,ImageDef,hijiri,聖_嬉1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,futo,-1280	,#聖フェイス表示開始

,SetFocus,hijiri		,
じゃあ頂くわね\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_余1,0,0
このペースで行くと\nボール集め自体は簡単そうねぇ\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,futo,
しくしく\nやっぱりお皿が一枚足りないのが\nいけない気がする\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_汗1,0,0
何でそんな悲壮感漂う\nオカルトを選んだのかねぇ\,a15x3,0,0
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
