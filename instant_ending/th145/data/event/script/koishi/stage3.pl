#========================================================================
#	こいしストーリー
#	ステージ3　VS華扇
#	場所：神社（夜）
#	ステージタイトル
#	   「黒電話じゃない奴でお願い」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,koishi,-360,0,false
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
,DefineObject,koishi_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,koishi,こいし_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,koishi,-1280,

,SetFocus,koishi		,
,ImageDef,koishi,こいし_驚1,0,0
そうか電話がよく判らないとは\n盲点だったわねぇ\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,
,ImageDef,koishi,こいし_普1,0,0
何か別の都市伝説考えようっと\,a15x3,0,0
,ClearBalloon,koishi

,ImageDef,kasen,華扇_怒2,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen		,
ん？\nさっきから誰かが見ている？\,a15x3,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,こいし_余1,0,0
はーい\n見てまーす\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
気のせいね\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_嬉1,0,0
はーい気のせいでーす\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,華扇_汗1,0,0
そんな訳無いでしょ！\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
無意識の妖怪って\n恐ろしい奴ね\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
いつの間にか近くに\n居るんだから\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_怒1,0,0
今大切なときなんだから\n邪魔しないでね！\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
ところで電話って\n知ってます？\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
はい？\nまあ話だけなら\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_嬉1,0,0
良かったー\,a05x2,0,0
,ClearBalloon,koishi

,Function,"StopBGM(500);",# BGM停止

,SetFocus,koishi		,
,ImageDef,koishi,こいし_決1,0,0
じゃあ貴方なら\n怖がってくれるよね\,a11x2,0,0
,ClearBalloon,koishi
,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,koishi		,
,ImageDef,koishi,こいし_決1,0,0
これから貴方の後ろに\n行くよ！\,b11x2,0,0
,ClearBalloon,koishi




#両者フェイス撤去
,th145_Hide,koishi,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,koishi,こいし_負1,0,0
,ImageDef,kasen,華扇_怒1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,kasen,-1280	,#こいしフェイス表示開始

,SetFocus,kasen
邪魔が入ったけど\nさて本番本番\,a11x2,0,0

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
,ImageDef,koishi,こいし_驚1,0,0
,ImageDef,kasen,華扇_負1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,kasen,-1280	,#こいしフェイス表示開始


,SetFocus,kasen		,
貴方\n惚けてるのに無駄に強い……\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_普1,0,0
やったやった\n怖かったでしょう？\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,kasen		,
はいはい\n怖かったですよ\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_嬉1,0,0
やったあ\nメリーさんも捨てたもんじゃ\n無かったわー！\,a15x3,0,0
,ClearBalloon,koishi

# =======================================
# ここで画面フラッシュを数回入れて下さい
# ドラクエのエンカウントみたいな感じで
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,GameStory_FieldVibration_Low(),
,Function,GameStory_FieldSpark(),
,Function,"function main(){ for (local i=0; i < 10; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kasen		,
しまったこんな\nタイミングでか……！\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,koishi		,
,ImageDef,koishi,こいし_驚1,0,0
ん？\n何が起きてるのかしら\,a11x2,0,0
,ClearBalloon,koishi


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
