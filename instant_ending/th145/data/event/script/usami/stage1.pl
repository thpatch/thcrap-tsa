#========================================================================
#	菫子ストーリー
#	ステージ１　VS華扇
#	場所：異変の神社
#	ステージタイトル
#	   「ようこそ幻想郷へ」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
,DefineObject,kasen,-360,0,true

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
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2Pキャラステージ下から登場
,Function,GameStory_1P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,usami,菫子_汗1,0,0
,th145_Show,usami,-1280	,

,SetFocus,usami		,
……よーし\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
今回も無事に\n幻想郷に辿り着いたぞー\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
今まで一時的にしか\n入り込めなかったけど\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_嬉1,0,0
化け狸から貰った\n幻想郷のパワーストーンさえ\nあれば出入り自由ね\,a15x3,0,0
,ClearBalloon,usami

# 顔画面無し
,SetFocus,kasen		,
ようこそ幻想郷へ\,a11x2,320,0
,ClearBalloon,kasen

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
あ、お前はあの時の\,a11x2,0,0
,ClearBalloon,usami

,ImageDef,kasen,華扇_怒2,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
貴方を正式に\n幻想郷にご招待するわ\,a11x2,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
は、もしかして化け狸から\n貰ったこのパワーストーン……\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,kasen		,
,ImageDef,kasen,華扇_余1,0,0
今更気が付いても遅い遅い\n狸に化かされたねぇ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,usami		,
,ImageDef,usami,菫子_怒1,0,0
くそう、罠だったのか\,a11x2,0,0
,ClearBalloon,usami

,Function,"StopBGM(500);",# BGM停止
,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
もう貴方に帰り道は無い\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
幻想郷流の洗礼を存分に\n受けると良い！\,a11x2,0,0
,ClearBalloon,kasen



#両者フェイス撤去
,th145_Hide,usami,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中会話
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,kasen,華扇_普1,0,0

,Sleep,5

#,Move,usami,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,usami,-1280,&,#菫子フェイス表示開始
,th145_Show,kasen,-1280,#菫子フェイス表示開始

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_普1,0,0
,th145_Show,kasen,-1280	,#&, #華扇フェイス表示開始
文章A\,a11x2,0,0
,ClearBalloon,kasen

#フキダシの一括消去　これを実行するまで噴出しは際限なく手前に増える
,ClearBalloon,usami
,ClearBalloon,kasen

#両者フェイス撤去
,th145_Hide,usami,-1280,&
,th145_Hide,kasen,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::対再開命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,菫子_負1,0,0
,ImageDef,kasen,華扇_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,kasen,-1280	,#菫子フェイス表示開始

,SetFocus,kasen
おっと死んでしまっては\nこっちが困るよ\,a11x2,0,0

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
,ImageDef,usami,菫子_汗1,0,0
,ImageDef,kasen,華扇_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,kasen,-1280	,#菫子フェイス表示開始

,SetFocus,usami		,
なんてこった\n本当に帰れなくなるなんて\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,kasen		,
逃げ回るが良い\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_怒1,0,0
幻想郷に安住の地が\nあるのならな！\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
くっ\,a05x2,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,kasen		,
,ImageDef,kasen,華扇_諭1,0,0
とまあ、この位脅せば十分ね\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
ヘタに死なせて騒ぎになると\n外の世界から調査が来たり\nするかも知れないしなぁ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
幻想郷の怖い夜を\n楽しんでらっしゃいな\,a11x2,0,0
,ClearBalloon,kasen


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
