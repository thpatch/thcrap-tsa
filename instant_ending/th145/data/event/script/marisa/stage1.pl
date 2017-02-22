#========================================================================
#	霧雨魔理沙ストーリー
#	ステージ１　VS霊夢
#	場所：神社
#	ステージタイトル
#	   「もう後戻りは出来ない」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,reimu,霊夢_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2Pキャラステージ下から登場
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
それで、どうなったんだ？\,a11x2,0,0
そのオカルトオーラに\nまみれた影の人は\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,reimu		,#発言中キャラを指定
,ImageDef,reimu,霊夢_汗1,0,0
,th145_Show,reimu,-1280	,#霊夢フェイス表示開始
うーん\,c05x2,0,0
,ImageDef,reimu,霊夢_敵2,0,0
それがよく覚えてないのよね\,c11x2,0,0
,ClearBalloon,reimu


#紹介カット表示　霊夢は「霊夢_敵2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P上から登場
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa	,
,ImageDef,marisa,魔理沙_汗1,0,0
なんだ夢なんじゃないのか？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_普1,0,0
うーん？\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_余1,0,0
しかし惜しいな\n私なら生け捕りしてたのに\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
あー？\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_敵1,0,0
とにかくだ\n私のボールを返せ\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
なんだって\nボールの事を……\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
とぼけるな\nその影響で影人が現われたんだろ！\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
私が調べてやるよ\,b11x2,0,0
,ClearBalloon,marisa



#,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
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
,ImageDef,marisa,魔理沙_負1,0,0
,ImageDef,reimu,霊夢_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,reimu,-1280	,#魔理沙フェイス表示開始

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
影の人に出会ってからの\n記憶が曖昧なのよねぇ\,a11x2,0,0
,ClearBalloon,reimu



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
,ImageDef,marisa,魔理沙_驚1,0,0
,ImageDef,reimu,霊夢_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,reimu,-1280	,#魔理沙フェイス表示開始


,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_惑1,0,0
おかしいな\,a05x2,0,0
お前が七つ全部持っている\nと思ったんだが\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_負1,0,0
持ってないわよ\nそう言えばあんたから奪った分も\nいつの間にか無くなってたのよね\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普2,0,0
ふむ……\n何がどうなっているんだ\,a11x2,0,0
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
