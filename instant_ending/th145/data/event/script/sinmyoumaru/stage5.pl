#========================================================================
#	針妙丸ストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「本当の恐怖の国」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,sinmyoumaru,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# 会話BGM再生開始

#肩書き登録
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
#
#,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
#,th145_Show,sinmyoumaru,-1280	,
#
#,SetFocus,sinmyoumaru		,
#おおおー\,a05x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
#この光り輝く夜は一体\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
#ここはもしかして\n伝説に聞く\R[科学の国|ラピュータ]かー？\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
## 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,usami,菫子_驚1,0,0
#,th145_Show,usami,-1280,
#
#,SetFocus,usami		,
#わー\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#かーわいいー！\nお椀に乗っているの？\,a11x2,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#一寸法師みたいー！\n一寸（＊）よりは大きいけど\n（＊３センチちょっと）\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
#むむむ\n科学者なのかー？\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
#私をどうするつもりだー\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#ペットにしようかな\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#こんな小さい人間が\n居るなんてステキー\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#見世物小屋みたいで\nモダーンだわー！\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
#ひえー\,a05x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
#ラピュータの人体実験は\n人道に欠くという\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,針妙丸_決1,0,0
#大きくなる前にこんな所で\n捕まってたまるかー！\,a15x3,0,0
#,ClearBalloon,sinmyoumaru
#
#,Function,"StopBGM(500);",# BGM停止
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始

#両者フェイス撤去
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_負1,0,0
,ImageDef,usami,菫子_余1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,usami,-1280	,#針妙丸フェイス表示開始

,SetFocus,usami
餌は何だろう？\n猫缶で良いのかな\,a11x2,0,0

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
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,usami,-1280	,#針妙丸フェイス表示開始

,SetFocus,usami
本文\,a11x2,0,0
,ClearBalloon,usami

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
