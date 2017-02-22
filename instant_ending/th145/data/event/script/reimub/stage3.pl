#========================================================================
#	霊夢真ストーリー
#	ステージ3　VS華扇
#	場所：外の世界
#	ステージタイトル
#	   「ボールの真実は光の彼方に」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,reimu,-360,0,false
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
,DefineObject,reimu_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,reimu,霊夢_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



# 2Pキャラステージ下から登場
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,kasen,華扇_驚1,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
は？\n\R[霊夢|あなた]が何でここに？\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_怒2,0,0
例の奴はもうすぐ\n幻想郷に戻るのに\,a11x2,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,ImageDef,reimu,霊夢_惑1,0,0
,th145_Show,reimu,-1280	,

,SetFocus,reimu		,
悠長に待っていられない\n事態が発生したの\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
今すぐに\nそいつに会わせて\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
駄目よ\n貴方は今、一時的だけど正式な\n手順を踏んで幻想郷に来ている\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
その状態で人間と闘ったら\n外の世界で目立たない訳が無いわ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_決1,0,0
説明している時間が無い！\n今そいつが幻想郷に戻ってくる\nのは危ないんだって\,a15x3,0,0
,ClearBalloon,reimu




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,reimu,-1280,&
,th145_Hide,kasen,-1280,

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
,ImageDef,kasen,華扇_汗1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,kasen,-1280	,#霊夢フェイス表示開始

,SetFocus,kasen
しまった\nつい熱くなってしまった\,a11x2,0,0

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
,ImageDef,reimu,霊夢_惑1,0,0
,ImageDef,kasen,華扇_惑1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,kasen,-1280	,#霊夢フェイス表示開始


,SetFocus,kasen		,
どういうこと？\n説明して\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
オカルトボールには\nイレギュラーが混ざってた\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
あれは外の世界の\nパワーストーンでしょ\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
でも月の都のボールだけ\n外の世界の石じゃないわ！\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_汗1,0,0
もしかしたらそいつも\n利用されて居たのかも知れない\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_惑1,0,0
恐らく気が付いて居ない\nと思うけど\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,霊夢_決1,0,0
今の状態でボールの真の力を\n使われると幻想郷どころか\n別の所とも繋がってしまう！\,a15x3,0,0
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
