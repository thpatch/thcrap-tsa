#========================================================================
#	マミゾウストーリー
#	ステージ１　VS魔理沙
#	場所：香霖堂
#	ステージタイトル
#	   「隠し事の苦手な魔法使い」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,mamizou,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,mamizou_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,mamizou,マミゾウ_普1,0,0
,ImageDef,marisa,魔理沙_敵1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,mamizou,マミゾウ_嬉1,0,0
,th145_Show,marisa,-1280,&
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
ちょっといいかのう\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
お前さんに聞きたいこと\nがあるんじゃ\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_敵1,0,0
何か嫌な予感がするな\,a11x2,0,0
,ClearBalloon,marisa

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
この世界じゃない場所の\n話をしたいんじゃがな\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚1,0,0
なんだと？\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
お前さん\n隠し事はないかい\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
何処まで知っている？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
知らないから訊いておる\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_惑1,0,0
仕方が無い\nやるか\,a05x2,0,0
,ClearBalloon,marisa






# ********************************************
# ********************************************


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,mamizou,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mamizou,マミゾウ_負1,0,0
,ImageDef,marisa,魔理沙_汗1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,marisa,-1280	,#マミゾウフェイス表示開始

,SetFocus,marisa
おいおい負けるつもりで\n闘ったんだがな\,a11x2,0,0

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
,ImageDef,mamizou,マミゾウ_驚1,0,0
,ImageDef,marisa,魔理沙_負1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,marisa,-1280	,#マミゾウフェイス表示開始


,SetFocus,marisa		,
ほれ\nそれがオカルトボールだ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,mamizou		,
ほほう？\nこれをくれるのか？\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,marisa		,
外の世界の事を\n調べようとしてるんだろ？\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
ならばこれを集めて\n自分で確かめてみな\,a11x2,0,0
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
