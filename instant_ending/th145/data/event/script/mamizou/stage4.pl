#========================================================================
#	マミゾウストーリー
#	ステージ4　VS華扇
#	場所：異変の神社
#	ステージタイトル
#	   「何処まで本気か化け狸」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,mamizou,-360,0,false
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
,DefineObject,mamizou_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,mamizou,マミゾウ_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,mamizou,マミゾウ_怒1,0,0
,th145_Show,mamizou,-1280	,

,SetFocus,mamizou		,
なる程な\nこれは手の込んだボールよのう\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
外の世界の聖地の石を\n集めたものじゃ\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_嬉1,0,0
いわゆるパワーストーン\nという奴じゃな\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
コレを使えば誰だって\n結界を破ることが出来る\,a11x2,0,0
,ClearBalloon,mamizou

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,kasen,華扇_怒2,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
……何をしている\nまさかお前\,a11x2,0,0
,ClearBalloon,kasen


#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
見つかってしもうたか\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
命が惜しくば\n大人しくしてろと言ったのに\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
面倒ごとに巻き込まれたくない\nとか抜かしてたのは\nフェイクだったか\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
お前さん\n儂を侮っていないかい？\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
こんなボール無くても\n外の世界と行き来すること\nくらい自由自在の儂じゃ\,a15x3,0,0
,ClearBalloon,mamizou

,Function,"StopBGM(500);",# BGM停止

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,kasen		,
,ImageDef,kasen,華扇_決1,0,0
これ以上は見逃せないな\nお前は嬉々として外の世界に\n戻っていった事にしてやろう\,a15x3,0,0
,ClearBalloon,kasen



#両者フェイス撤去
,th145_Hide,mamizou,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mamizou,マミゾウ_負1,0,0
,ImageDef,kasen,華扇_決1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,kasen,-1280	,#マミゾウフェイス表示開始

,SetFocus,kasen
あと少し大人しくしてくれれば\n罠が完成する\,a15x3,0,0

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
,ImageDef,mamizou,マミゾウ_驚1,0,0
,ImageDef,kasen,華扇_怒1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,kasen,-1280	,#マミゾウフェイス表示開始


,SetFocus,mamizou		,
危ない危ない\nこんな所でおさらばする事に\nなる所じゃった\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
心配するな\nお主らの企みは予想付いてたぞ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_怒1,0,0
……\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
オカルトボールの仕掛け人は\n外の世界に居るんじゃな\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
……！\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
だからそのままでは\nまともに手が出せない\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_嬉1,0,0
そこで正式に\n幻想郷に誘き寄せようとしてる\nって所じゃないかね？\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
よく判ったわね\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_嬉1,0,0
霊夢と魔理沙の様子がおかしい\nのを見て何か秘密ごとがある\nと思ったんじゃ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
あの二人にも\n協力させているんじゃろ？\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_諭1,0,0
あの二人は敵を幻想郷に\n引きずり込んでからの\n最後の実行部隊の予定よ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_驚1,0,0
なる程な\nそれで二人はボール集めに\n執心してないのか\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_惑1,0,0
だけどそれは\n危険な賭になる\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,華扇_普1,0,0
正当な理由があるとはいえ\n幻想郷のルールを破ることに\nなるんだからね\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_嬉1,0,0
いいじゃろ\n外の世界での実行部隊は\n儂がやってやろう\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen		,
,ImageDef,kasen,華扇_驚1,0,0
は？\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
お主じゃあ、外との干渉が\nバレたときにあらぬ疑いを\n掛けられるじゃろうて\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
儂なら何があっても\n平気じゃからな\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
なあに外の世界の事は\n儂が一番よく知っておる\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_決1,0,0
このボールを使って\n逆に罠を仕掛けてやるぞい\,a11x2,0,0
,ClearBalloon,mamizou



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
