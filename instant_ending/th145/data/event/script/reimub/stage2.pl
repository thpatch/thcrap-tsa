#========================================================================
#	霊夢真ストーリー
#	ステージ2　VS妹紅
#	場所：異変の神社
#	ステージタイトル
#	   「忘れ物一つのために」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,reimu,-360,0,false
,DefineObject,mokou,-360,0,true

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

,Function,"GameStory_PlayBGM(604);",# 会話BGM再生開始

#肩書き登録
,DefineObject,reimu_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,reimu,霊夢_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_普1,0,0
よーし\nこれでそいつの後を追う\,a11x2,0,0
,ClearBalloon,reimu

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
おや　また楽しそうな\n事を始めているねぇ\,a11x2,0,0
,ClearBalloon,mokou

#紹介カット表示　妹紅は「妹紅_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
外の世界に行くんなら\n私も連れて行ってくれ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_怒1,0,0
馬鹿言ってるんじゃないわよ\n今ただでさえ急いでいる\nと言うのに\,a15x3,0,0

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
さっき外の人間をここ迄\n道案内したんだがな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_嬉1,0,0
その時忘れ物があって\n届けたいから\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
そんな下らない話\n後にしてよ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_怒1,0,0
今、幻想郷の\n最大のピンチなんだから\,a11x2,0,0
,ClearBalloon,reimu





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,reimu,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,reimu,霊夢_負1,0,0
,ImageDef,mokou,妹紅_普1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,mokou,-1280	,#霊夢フェイス表示開始

,SetFocus,mokou
この通路を通れるのは\n一人だけか\,a11x2,0,0

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
,ImageDef,reimu,霊夢_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,mokou,-1280	,#霊夢フェイス表示開始

,SetFocus,reimu		,
今から会いに行くから\n忘れ物は預かるわよ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
そもそも道案内って何よ\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
帰りたがっていたからな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
きっと神社に連れて行けば\n良いかと思ってな\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
はー親切な奴ねぇ\,a11x2,0,0
,ClearBalloon,reimu

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
