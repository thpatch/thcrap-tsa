#========================================================================
#	神子ストーリー
#	ステージ１　VS布都
#	場所：夢殿大祀廟
#	ステージタイトル
#	   「ドメスティックバイオレンス」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,miko,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,miko_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,miko,神子_普1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280,&
,th145_Show,miko,-1280	,

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
え？\nオカルトボールを寄こせ、\nですか？\,a15x3,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,布都_惑1,0,0
でも太子様はもうすでに\n沢山集めておいでの筈では\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,miko		,
,ImageDef,miko,神子_怒1,0,0
このボールに関して\n新事実が判明した\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
よって全てのボールを\n回収する\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
知っての通りボールは自ら\n手放すことが出来ないので\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_決1,0,0
覚悟せよ！\,a05x2,0,0
,ClearBalloon,miko





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,miko,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,miko,神子_負1,0,0
,ImageDef,futo,布都_汗1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,futo,-1280	,#神子フェイス表示開始

,SetFocus,futo
そこで負ける？\nふつー\,a11x2,0,0

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
,ImageDef,miko,神子_普1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,futo,-1280	,#神子フェイス表示開始

,SetFocus,futo
新事実って何ですか？\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
どうやら\n定期的にボールばらまいている\n奴が居るんだが\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
その時までにボールを余らすと\n良からぬ事が起こるようだ\,a15x3,0,0
,ClearBalloon,miko



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
