#========================================================================
#	こいしストーリー
#	ステージ1　VS霊夢
#	場所：地霊殿
#	ステージタイトル
#	   「メリーさんって知ってる？」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#フェイス画像
,DefineObject,koishi,-360,0,false
,DefineObject,reimu,-360,0,true

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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,koishi_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#初期表情設定
,ImageDef,koishi,こいし_普1,0,0
,ImageDef,reimu,霊夢_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,koishi,-1280,&
,th145_Show,reimu,-1280	,

,SetFocus,koishi		,
,ImageDef,koishi,こいし_普1,0,0
もしもーし\n今、貴方の後ろにいまーす\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_敵2,0,0
地下にも都市伝説が\n広まってるって聞いたけど\,a15x3,0,0
,ClearBalloon,reimu

#紹介カット表示　霊夢は「霊夢_敵2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
後ろにいまーす\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
それ、何？\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
後ろにいるって言ってるけど\n目の前に居るし\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,koishi		,
,ImageDef,koishi,こいし_決1,0,0
怖がれって\n言ってんのよー！\,a11x2,0,0
,ClearBalloon,koishi




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,koishi,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,koishi,こいし_負1,0,0
,ImageDef,reimu,霊夢_余1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,reimu,-1280	,#こいしフェイス表示開始

,SetFocus,reimu
恐ろしや\n急に後ろにいるなんて\,a11x2,0,0

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
,ImageDef,koishi,こいし_驚1,0,0
,ImageDef,reimu,霊夢_負1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,reimu,-1280	,#こいしフェイス表示開始

,SetFocus,koishi		,
知らないの？\nメリーさん\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,reimu		,
うーん\nちょっとよく判らない\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
貴方の後ろー……\,c11x2,0,0
,ClearBalloon,koishi

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
