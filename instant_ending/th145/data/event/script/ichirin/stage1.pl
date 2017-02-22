#========================================================================
#	一輪ストーリー
#	ステージ１　VS布都
#	ステージタイトル
#	   「新旧都市伝説大戦」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#フェイス画像
,DefineObject,ichirin,-360,0,false
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
,DefineObject,ichirin_label,50,360,false
,DefineObject,futo_label,1120,360,false

#初期表情設定
,ImageDef,ichirin,一輪_余1,0,0
,ImageDef,futo,布都_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280	,&
,th145_Show,ichirin,-1280,

,SetFocus,ichirin		,#発言中キャラを指定
へいへーい\nボール持ってるんだろー？\nよーこーせーよー\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_余1,0,0
そういうお主もボールを\n持っているな？\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_普1,0,0
良いだろう\n受けて立つぞ？\,a11x2,0,0
,ClearBalloon,futo

#紹介カット表示　布都は「布都_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,#発言中キャラを指定
,ImageDef,futo,布都_決1,0,0
儂の\R[都市伝説|オカルト]はお菊さんだ\n怖れ震えるが良い！\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_嬉1,0,0
ぷぷっ、お菊さんー？\nふっるー！\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_決1,0,0
貰ったも同然ね！\,c11x2,0,0
,ClearBalloon,ichirin






,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,ichirin,一輪_負1,0,0
,ImageDef,futo,布都_惑1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,futo,-1280	,#一輪フェイス表示開始

,SetFocus,futo
お菊さん……\n十分ハイカラだと思っとったが\,a15x3,0,0

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
,ImageDef,ichirin,一輪_驚1,0,0
,ImageDef,futo,布都_負1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,futo,-1280	,#一輪フェイス表示開始

,SetFocus,ichirin
\R[都市伝説|オカルト]だって新しい方が\n強いに決まってるでしょ\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,futo
ぐぐ\n今回は勝ちを譲ろうぞ\,c11x2,0,0
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
