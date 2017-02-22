#========================================================================
#	神子ストーリー
#	ステージ3　VSにとり
#	場所：玄武の沢
#	ステージタイトル
#	   「世にも不思議な儲け話」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#フェイス画像
,DefineObject,miko,-360,0,false
,DefineObject,nitori,-360,0,true

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
,DefineObject,miko_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#初期表情設定
,ImageDef,miko,神子_普1,0,0
,ImageDef,nitori,にとり_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280,&
,th145_Show,miko,-1280	,

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
ボールをよこせだって？\,a11x2,0,0
,ClearBalloon,nitori

#紹介カット表示　にとりは「にとり_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
そうだ\n残念ながら闘わないと\nやりとりは出来ないみたいだが\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,にとり_嬉1,0,0
良いだろうボールはやるわ\nそれで？\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,神子_驚1,0,0
それで？　とは？\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,にとり_惑1,0,0
判ってるんだろ\nいくら出すか、って訊いてんだよ\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
お、お金の話か？\nまあいい、言い値で構わん\,c15x3,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,にとり_嬉1,0,0
はい毎度ありー\nでも闘わないとボールが\nやりとり出来ないみたいなんで\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
知っておる\nではいくぞ\,a05x2,0,0
,ClearBalloon,miko




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,miko,-1280,&
,th145_Hide,nitori,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,miko,神子_負1,0,0
,ImageDef,nitori,にとり_驚1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,nitori,-1280	,#神子フェイス表示開始

,SetFocus,nitori
私が勝ってしまっては\nお金にならないぞー\,a11x2,0,0

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
,ImageDef,miko,神子_惑1,0,0
,ImageDef,nitori,にとり_嬉1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,nitori,-1280	,#神子フェイス表示開始

,SetFocus,nitori		,
毎度ありー\nではお代はこちらで\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
この守銭奴が\,a05x2,0,0
,ClearBalloon,miko

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
どうせ暫くしたら\nボールは復活するんだ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
こんなもんにお金を出すなんて\n愚の極みだね\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,miko		,
,ImageDef,miko,神子_余1,0,0
拝物信者には判るまい\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_決1,0,0
本当に価値ある物は\n速度だけなのだよ\,a11x2,0,0
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
