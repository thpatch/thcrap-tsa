#========================================================================
#	布都ストーリー
#	ステージ１　VS一輪
#	場所：宝船
#	ステージタイトル
#	   「まずはこの辺ですよねー」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#フェイス画像
,DefineObject,futo,-360,0,false
,DefineObject,ichirin,-360,0,true

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
,DefineObject,futo_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#初期表情設定
,ImageDef,futo,布都_決1,0,0
,ImageDef,ichirin,一輪_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&#布都フェイス表示開始
,th145_Show,futo,-1280	,#布都フェイス表示開始

,SetFocus,futo		,#発言中キャラを指定
頼もーう！\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_敵1,0,0
オカルトボールを\n奪いに来たぞー！\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_普1,0,0
望むところだわ\,a11x2,0,0
,ClearBalloon,ichirin

#紹介カット表示　一輪は「一輪_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_普1,0,0
私に挑もうなんて\n良い度胸ね\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_普1,0,0
この辺の奪いやすそうな\nところから攻めることにした\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_余1,0,0
準備運動ってところかの\,a11x2,0,0
,ClearBalloon,futo




,Function,"StopBGM(503);",# BGM停止

#両者フェイス撤去
,th145_Hide,futo,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,futo,布都_負1,0,0
,ImageDef,ichirin,一輪_余1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,ichirin,-1280	,#布都フェイス表示開始

,SetFocus,ichirin
私の姿を見た者は\n生きては帰れない……ってね\,a15x3,0,0

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# 勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,futo,布都_嬉1,0,0
,ImageDef,ichirin,一輪_負1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,ichirin,-1280	,#布都フェイス表示開始


,SetFocus,futo		,
簡単なもんだ\nオカルトボールは貰っていくぞ\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,
くそう\nこんな時代遅れの奴に負けたー\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,futo
,ImageDef,futo,布都_汗1,0,0
何を言うか\nお菊さんじゃて\n十分ハイカラじゃ無いか\,a15x3,0,0
,ClearBalloon,futo





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
