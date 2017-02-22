#========================================================================
#	針妙丸ストーリー
#	ステージ2　VS布都
#	場所：夢殿大祀廟
#	ステージタイトル
#	   「そりゃもう全力で」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,sinmyoumaru,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,futo,-1280	,#針妙丸フェイス表示開始


,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
よーしそこの腐れ仙女！\nオカルトボールをよこせー！\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
腐れ……何じゃって？\,a11x2,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_余1,0,0
尸解仙なんて\n腐っているのも同然じゃん\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
,ImageDef,futo,布都_汗1,0,0
腐らないように\n気を付けておるから\n仙人になれるのだ\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
どうでもいいや\nさっさと闘ってボールを\n寄こすがいいー！\,a15x3,0,0
,ClearBalloon,sinmyoumaru





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,sinmyoumaru,-1280,&
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
,ImageDef,sinmyoumaru,針妙丸_負1,0,0
,ImageDef,futo,布都_余1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,futo,-1280	,#針妙丸フェイス表示開始

,SetFocus,futo
危ない危ない\n小さすぎて踏みつぶす\nところだったな\,a15x3,0,0

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
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,futo,-1280	,#針妙丸フェイス表示開始

,SetFocus,sinmyoumaru		,
よーし順調だー\n後一つで七つ揃うぞー\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
ボールはくれてやるが\n腐ってないからな？\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_余1,0,0
はいはい\,a05x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0
さっきは怒らせないとボールが\n奪えないから挑発しただけよ\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
そうか\nならば良い\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
じゃあねー\nゾンビプリースト！\,a11x2,0,0
,ClearBalloon,sinmyoumaru


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
