#========================================================================
#	華扇ストーリー
#	ステージ2　VS布都
#	場所：夢殿大祀廟
#	ステージタイトル
#	   「空飛ぶお菊虫」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,kasen,-360,0,false
,DefineObject,futo,-360,0,true

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
,DefineObject,kasen_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,kasen,華扇_普1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kasen,-1280	,#布都フェイス表示開始


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
参ったわね\n魔理沙が何処にもいない\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
きっと魔理沙は再び\nボール集めを始めている筈だけど\,a15x3,0,0
,ClearBalloon,kasen

,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_普1,0,0
,th145_Show,futo,-1280	,#布都フェイス表示開始
おや、これはこれは\n山の仙人様ですな\,a11x2,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_余1,0,0
何かご用です？\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_汗1,0,0
人捜し中でね……ん？\n貴方からオカルトオーラが？\,a15x3,0,0
,ClearBalloon,kasen


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
最近、何か怪談っぽい\nものに触れたりしてない？\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_普1,0,0
特に無いな\n最近お皿を数えるのが日課に\nなっててそれどころじゃ無いんで\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_汗1,0,0
何度数えても一枚足りないのだ\n九枚しかない見つからない\,c15x3,0,0
,ClearBalloon,futo

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_汗1,0,0
それだ\,a05x2,0,0
,ClearBalloon,kasen






,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kasen,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kasen,華扇_負1,0,0
,ImageDef,futo,布都_余1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,futo,-1280	,#華扇フェイス表示開始

,SetFocus,futo
やっぱり一枚足りないぞー\,a15x3,0,0

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
,ImageDef,kasen,華扇_汗1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,futo,-1280	,#華扇フェイス表示開始

,SetFocus,kasen
お菊さんとは\nこれまた古典的な\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,futo
何じゃ？\n一体何が起きたのだ？\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,kasen
,ImageDef,kasen,華扇_普1,0,0
気にしなくて良いわ\nこれは私の仕事だから\,a11x2,0,0
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
