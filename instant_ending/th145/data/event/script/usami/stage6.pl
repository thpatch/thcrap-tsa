#========================================================================
#	菫子ストーリー
#	ステージ6　VS妹紅
#	場所：竹林
#	ステージタイトル
#	   「夢の再決戦」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,usami_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,usami,-1280	,

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
うーん？\n道に迷ったみたい\,a11x2,0,0
,ClearBalloon,usami

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,mokou,-1280,

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
あ、お前はあの時の\n外の人間じゃないか！\,a11x2,0,0
,ClearBalloon,mokou

#紹介カット表示　妹紅は「妹紅_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_嬉1,0,0
あ、お久しぶりー！\n良かったあ、知ってる人に\n出会ったわー\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_嬉1,0,0
そうか勝負の続きを\nしたいのか？\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
あ、いや今は\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
お前もこっちに居られる\n時間は僅かだろう\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
さっさと始めるぞ！\,a11x2,0,0
,ClearBalloon,mokou


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,usami,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,菫子_負1,0,0
,ImageDef,mokou,妹紅_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,mokou,-1280	,#菫子フェイス表示開始

,SetFocus,mokou
手応えが無いな\n幻想郷の空気が合わないか\,a15x3,0,0

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
,ImageDef,usami,菫子_汗1,0,0
,ImageDef,mokou,妹紅_普1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,mokou,-1280	,#菫子フェイス表示開始

,SetFocus,usami		,
ふえー\n別に戦いとかもういいです\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
もう帰りたいんですが\n帰り方が判らないんです\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_嬉1,0,0
ははあ\nそりゃそうだろうよ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
へ？\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
ここ迷いの竹林は\n誰だって迷うように\n呪いが掛けられているんだ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
道案内してやるよ\n何処に向かえば良いんだい？\,a15x3,0,0
,ClearBalloon,mokou

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
