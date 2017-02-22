#========================================================================
#	華扇ストーリー
#	ステージ１　VS霊夢
#	場所：神社
#	ステージタイトル
#	   「無意味な忠告」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#フェイス画像
,DefineObject,kasen,-360,0,false
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
,DefineObject,kasen_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#初期表情設定
,ImageDef,kasen,華扇_普1,0,0
,ImageDef,reimu,霊夢_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,reimu,-1280	,&
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
なる程\nその得体の知れない人物は\n気が付いたら消えていたと\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#発言中キャラを指定
,ImageDef,reimu,霊夢_敵2,0,0
もしかしたら\n夢だったのかなぁ\,a11x2,0,0
,ClearBalloon,reimu

#紹介カット表示　霊夢は「霊夢_敵2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_普1,0,0
ところで\nオカルトボールは？\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#発言中キャラを指定
,ImageDef,reimu,霊夢_余1,0,0
あんたと魔理沙から\n奪った奴？\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,#発言中キャラを指定
,ImageDef,reimu,霊夢_惑1,0,0
そう言えば消えたのよねぇ\n折角七個集めようと思ったのに\,a15x3,0,0
,ClearBalloon,reimu


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒1,0,0
集めるのはやめて\n……今回は大人しくしてなさい\n今はまだ不味いわ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,#発言中キャラを指定
,ImageDef,reimu,霊夢_惑1,0,0
？\,a05x2,0,0
,ClearBalloon,reimu


,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
とにかく貴方が持っている\nオカルトボールも\n私が預かるわ\,a15x3,0,0
,ClearBalloon,kasen



# ********************************************
# ********************************************


,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,kasen,-1280,&
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
,ImageDef,kasen,華扇_負1,0,0
,ImageDef,reimu,霊夢_余1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,reimu,-1280	,#華扇フェイス表示開始

,SetFocus,reimu
やっぱり七個集めようっと\,a11x2,0,0

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
,ImageDef,kasen,華扇_諭1,0,0
,ImageDef,reimu,霊夢_負1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,reimu,-1280	,#華扇フェイス表示開始

,SetFocus,reimu
まあ良いけどさ\nそんな気味の悪いボールあげても\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,kasen
忠告するわ\n決して七個集めてはいけないよ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu
,ImageDef,reimu,霊夢_驚1,0,0
へ？\nなんで？\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen
,ImageDef,kasen,華扇_余1,0,0
貴方の仕事が\n増えるだけだから\,a11x2,0,0
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
