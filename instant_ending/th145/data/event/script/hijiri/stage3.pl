#========================================================================
#	聖ストーリー
#	ステージ3　VSにとり
#	場所：玄武の沢
#	ステージタイトル
#	   「在庫切れにご注意を」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/nitori.csv"

#フェイス画像
,DefineObject,hijiri,-360,0,false
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

,Function,"GameStory_PlayBGM(703);",# 会話BGM再生開始

#肩書き登録
,DefineObject,hijiri_label,50,360,false
,DefineObject,nitori_label,1120,360,false

#初期表情設定
,ImageDef,hijiri,聖_普1,0,0
,ImageDef,nitori,にとり_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,ImageDef,nitori,にとり_余1,0,0

,th145_Show,nitori,-1280,&
,th145_Show,hijiri,-1280	,

,SetFocus,nitori		,
良いところに来たねぇ\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
今日はオカルトボールの\n仕入れ日だ\,a11x2,0,0
,ClearBalloon,nitori

#紹介カット表示　にとりは「にとり_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,nitori
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
やっぱり河童にも\n都市伝説が広まっているのねぇ\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
,ImageDef,nitori,にとり_惑1,0,0
ふっふっふ\n我々を侮るなかれ\,c11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_決1,0,0
不確定な噂の上に成り立つ\n都市伝説なんて\n頼りにはしないぜ\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
都市伝説に見合った機械を作った\nこれなら確定的に強い！\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_汗1,0,0
うーん\nそれってただの武器……\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
もう一度言う！\n今日はオカルトボールの\n仕入れ日だ！\,a15x3,0,0
,ClearBalloon,nitori




# ********************************************
# ********************************************

,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,hijiri,-1280,&
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
,ImageDef,hijiri,聖_負1,0,0
,ImageDef,nitori,にとり_余1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,nitori,-1280	,#聖フェイス表示開始

,SetFocus,nitori
よーし、ボールゲット！\nこいつは高く売れるぜー！\,a11x2,0,0

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
,ImageDef,hijiri,聖_惑1,0,0
,ImageDef,nitori,にとり_負1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,nitori,-1280	,#聖フェイス表示開始


,SetFocus,hijiri		,
オカルトボールを\n持ってないかと思ったら\nやっぱり持ってるのね\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,nitori		,
あれー？\n私からもオカルトボールが？\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
やっぱり所有権すら\n誰も制御出来ていない\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_普1,0,0
このボール\n手にした瞬間判ったわ\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
これは悪夢の始まりだって\,a11x2,0,0
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
