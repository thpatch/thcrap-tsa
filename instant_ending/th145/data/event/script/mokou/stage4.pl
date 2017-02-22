#========================================================================
#	妹紅ストーリー
#	ステージ4　VS華扇
#	場所：異変の神社
#	ステージタイトル
#	   「死にたがりの不死者」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mokou.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,mokou,-360,0,false
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

,Function,"GameStory_PlayBGM(705);",# 会話BGM再生開始

#肩書き登録
,DefineObject,mokou_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mokou,-1280,


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
勘違いしてたかも知れんな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
思ったよりあの世のボールは\n少ないみたいだ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
みんなが血眼になって\n集めてたのはてっきり\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_汗1,0,0
全部集めれば死ねるからだと\n思っていたが……\,a15x3,0,0
,ClearBalloon,mokou

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
誰だ？\,a05x2,0,0
,ClearBalloon,mokou



,ImageDef,kasen,華扇_怒2,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,
それはこっちの台詞よ\,a11x2,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
ああ見た事あるな\n山の仙人か\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
私は竹林に住む人間だ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
人間だって？\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
その割にあっさりとボールを\n七つ集めちゃってるのね\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
集めるとどうなるんだ？\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
集まっちゃったんなら\n言うしかないか\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
これを集めると所有者が\n外の世界に飛ばされる\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_怒1,0,0
敵の居る場所が場所だけに\n今のところ有効な手が\n打ててないのが現状……\,a15x3,0,0
,ClearBalloon,kasen

,Function,"StopBGM(2000);",# BGM停止

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
外の世界だって？\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
そうなのか\nそりゃあ久々に面白いな\,a11x2,0,0
,ClearBalloon,mokou

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,kasen		,
,ImageDef,kasen,華扇_諭1,0,0
貴方みたいな人間が\n外に出るのは危険です\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
残された時間はあと僅か\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
私が代わりに罠に\n嵌まるから安心して！\,a11x2,0,0
,ClearBalloon,kasen





#両者フェイス撤去
,th145_Hide,mokou,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mokou,妹紅_負1,0,0
,ImageDef,kasen,華扇_怒1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,kasen,-1280	,#妹紅フェイス表示開始

,SetFocus,kasen
どうにかして彼奴を\n幻想郷に引きずり込まないと\,a15x3,0,0

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
,ImageDef,mokou,妹紅_普1,0,0
,ImageDef,kasen,華扇_驚1,0,0

,th145_Show,mokou,-1280	,&,#妹紅フェイス表示開始
,th145_Show,kasen,-1280	,#妹紅フェイス表示開始

,SetFocus,kasen		,
そう、随分とあっさり\nボールを集めたと思ったけど\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
十分強いのね\n人間の割に\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
永く生きすぎたからな\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_諭1,0,0
それなら外の世界に行っても\n大丈夫かもねぇ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_嬉1,0,0
久しぶりの娑婆だ\n少し生きる気力が湧いてきたな\,a15x3,0,0
,ClearBalloon,mokou


,SetFocus,kasen		,
,ImageDef,kasen,華扇_普2,0,0
滞在時間は限られているけど\n余り暴れないようにしてね\,a15x3,0,0
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
