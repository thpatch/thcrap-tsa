#========================================================================
#	霊夢真ストーリー
#	ステージ1　VSマミゾウ
#	場所：神社（夜）
#	ステージタイトル
#	   「予定は狂うよ何処までも」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#フェイス画像
,DefineObject,reimu,-360,0,false
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

,Function,"GameStory_PlayBGM(604);",# 会話BGM再生開始

#肩書き登録
,DefineObject,reimu_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#初期表情設定
,ImageDef,reimu,霊夢_惑1,0,0
,ImageDef,mamizou,マミゾウ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mamizou,-1280,&
,th145_Show,reimu,-1280	,


,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
なんじゃ\,a05x2,0,0
,ClearBalloon,mamizou

#紹介カット表示　マミゾウは「マミゾウ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
例の人間なら\nもうすぐ戻ってくるぞい\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
まだ幻想郷から正式に\n出ていないからのう\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_怒1,0,0
そんな悠長なことを\n言ってられないの！\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_決1,0,0
私を外の世界に\n連れて行きなさい！\,a11x2,0,0
,ClearBalloon,reimu



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,reimu,-1280,&
,th145_Hide,mamizou,-1280,

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,reimu,霊夢_負1,0,0
,ImageDef,mamizou,マミゾウ_余1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,mamizou,-1280	,#霊夢フェイス表示開始

,SetFocus,mamizou
どうしたんじゃ？\nまあ暫く頭を冷やすが良い\,a15x3,0,0

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
,ImageDef,reimu,霊夢_怒1,0,0
,ImageDef,mamizou,マミゾウ_惑1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,mamizou,-1280	,#霊夢フェイス表示開始

,SetFocus,mamizou		,
お前さんは最後の約束じゃろ\n焦るでないぞ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
みんなで懲らしめてやろう\nって腹じゃったろう\n一番美味しいところがお前さんだ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
そんなのんびりしてられないわ\n重大な事に気付いたのよ\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
今のままではそいつに\n奥の手が渡ったままなのよ\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
あのボールには\n最後の秘密が残っていたわ\,a15x3,0,0
,ClearBalloon,reimu



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
