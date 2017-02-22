#========================================================================
#	にとりストーリー
#	ステージ4　VSマミゾウ
#	場所：異変の神社
#	ステージタイトル
#	   「見て見ぬ振りも大切です」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#フェイス画像
,DefineObject,nitori,-360,0,false
,DefineObject,mamizou,-360,0,true

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
,DefineObject,nitori_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#初期表情設定
,ImageDef,nitori,にとり_普1,0,0
,ImageDef,mamizou,マミゾウ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

#,th145_Show,mamizou,-1280,
#
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#さーて\n後は待つだけじゃな\,a11x2,0,0
#,ClearBalloon,mamizou
#
##紹介カット表示　マミゾウは「マミゾウ_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,mamizou
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_惑1,0,0
#ん？\n誰じゃ\,a05x2,0,0
#,ClearBalloon,mamizou
#
## 2Pキャラステージ下から登場
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,th145_Show,nitori,-1280	,
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_驚1,0,0
#何だこれ？\n何してるのさ\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_怒1,0,0
#河童か……まあいい\n\R[天狗|スピーカー]じゃ無いだけマシじゃな\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_惑1,0,0
#お前さんには関係の無い話じゃ\n大人しく帰るが良い\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_嬉1,0,0
#帰って寝て忘れろ\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_汗1,0,0
#あ、ああ\n面倒なことには\n巻き込まれたくないからな\,a15x3,0,0
#,ClearBalloon,nitori
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_普1,0,0
#見なかったことにする\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_驚1,0,0
#ん？\nお前さん面白い奴連れているな\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_驚1,0,0
#面白い奴？\nこのネッシー号の事か？\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_余1,0,0
#これは自慢のＵＳＯマシンさ\n売りもんじゃないぜ\,a15x3,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_惑1,0,0
#違う違う\n気が付いて居ないのかい？\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_余1,0,0
#お前の後ろには超巨大な\n何かが憑いておる\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_惑1,0,0
#へ？\nな、何の冗談を\,a11x2,0,0
#,ClearBalloon,nitori
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_汗1,0,0
#冗談なもんか\n気が付いて居ないとしたら\nお前さん、危ないぞ\,a15x3,0,0
#,ClearBalloon,mamizou
#
#
#,SetFocus,nitori		,
#,ImageDef,nitori,にとり_汗1,0,0
#そ、そんな脅したって\n無駄だぞ\n何にも出てこないからな\,a15x3,0,0
#,ClearBalloon,nitori
#
#,Function,"StopBGM(500);",# BGM停止
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_惑1,0,0
#ふー愚かなもんよのう\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_嬉1,0,0
#まあ良いじゃろ\nお前に憑いている\R[都市伝説|つくりばなし]を\n引き出してやるぞい\,a15x3,0,0
#,ClearBalloon,mamizou
#
#
#


#両者フェイス撤去
,th145_Hide,nitori,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,nitori,にとり_負1,0,0
,ImageDef,mamizou,マミゾウ_余1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,mamizou,-1280	,#にとりフェイス表示開始

,SetFocus,mamizou
さてと、続き続き\,a11x2,0,0

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
,ImageDef,mamizou,マミゾウ_負1,0,0

,th145_Show,nitori,-1280	,&,#にとりフェイス表示開始
,th145_Show,mamizou,-1280	,#にとりフェイス表示開始

,SetFocus,mamizou
本文\,a11x2,0,0
,ClearBalloon,mamizou

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#オープニング開始

,End

# -------------------------------------------------------
# サブルーチン
# -------------------------------------------------------
:TestMessage
サブルーチン実行\
,ClearBalloon
,Return
