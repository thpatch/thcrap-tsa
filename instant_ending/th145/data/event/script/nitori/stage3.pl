#========================================================================
#	にとりストーリー
#	ステージ3　VS妹紅
#	場所：神霊廟
#	ステージタイトル
#	   「上客には徹底的に媚びます」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,nitori,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,nitori_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,nitori,にとり_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280	,


,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
ボールはいらんかねー\,a11x2,0,0
,ClearBalloon,nitori

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,mokou,妹紅_普1,0,0
,th145_Show,mokou,-1280	,#にとりフェイス表示開始
,SetFocus,mokou		,
ここの主なら今は留守だ\,a11x2,0,0
,ClearBalloon,mokou

#紹介カット表示　妹紅は「妹紅_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,にとり_驚1,0,0
おや？\n見慣れない顔が……\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
道案内のついでに\n立ち寄っただけだ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
不死者はここに住んでいるって\n聞いたもんでね\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_惑1,0,0
そうかー\n留守なら仕方が無い\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_怒1,0,0
オカルトボールを買ってくれる\n上客はここの奴くらいなのに\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
お前は河童か\n河童もボールに翻弄されている\nと言うのか\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
まあ尻子玉も集めるもんな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_余1,0,0
話変わって貴方はボール\n要りません？\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
要らん\,a05x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
とちょっと前ならそう言ってたが\n今は欲しいかもな\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_驚1,0,0
お？\nならば是非是非\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
闘わないとやり取り\nできないんだろ？\nじゃあ遠慮せずにいくぞ！\,a15x3,0,0
,ClearBalloon,mokou








,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,nitori,-1280,&
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
,ImageDef,nitori,にとり_負1,0,0
,ImageDef,mokou,妹紅_惑1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,mokou,-1280	,#にとりフェイス表示開始

,SetFocus,mokou
このボールは違うな\n何処かに黄泉比良坂の\nボールがある筈だが\,a15x3,0,0

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
,ImageDef,nitori,にとり_驚1,0,0
,ImageDef,mokou,妹紅_負1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,mokou,-1280	,#にとりフェイス表示開始


,SetFocus,nitori		,
あれ？\n貴方もボール持ってんじゃん\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
周りの奴らみたいに都市伝説を\n使ってないように見えたけど\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
ああ都市伝説って言われても\nよく判らん\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
確かにみんな奇妙なお化けを\n身に付けているようだが……\n私には無い筈だ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
お前のは作り物の怪獣だな？\nそれでもボールは手に入るのか\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,にとり_普1,0,0
ふーむ\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,にとり_汗1,0,0
今まで売ってきて何だけど\nもう一度ボールの事を精査する\n必要があるのかも知れない\,a15x3,0,0
,ClearBalloon,nitori


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
