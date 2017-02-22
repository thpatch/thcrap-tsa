#========================================================================
#	マミゾウストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「平成ぽんぽこりん」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,mamizou,-360,0,false
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
,DefineObject,mamizou_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,mamizou,マミゾウ_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mamizou,-1280	,


#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#外の世界に居た頃は\n余り感じなかったが\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#改めてみてみると変化は\n目まぐるしいもんじゃ\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_余1,0,0
#繁栄か衰退か\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_嬉1,0,0
#どっちをとっても\n変化があると言うことは\n生きていると言う事じゃ\,a15x3,0,0
#,ClearBalloon,mamizou
#
## 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#
#,ImageDef,usami,菫子_普1,0,0
#,th145_Show,usami,-1280,
#
#,SetFocus,usami		,
#おお\nまた釣れたわー\,a11x2,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#あの尻尾\n今度は判りやすい妖怪だわー\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_驚1,0,0
#ほう今どき珍しいのう\n空を飛ぶ人間なんて\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#そうかそうか\nお前さんじゃな\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_汗1,0,0
#でもまさかこんな\n女学生とは驚いた\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#女学生って\n今どきそんな言い方するー？\nふっるーい\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_驚1,0,0
#でも良かったのう\nいまお前さんのお陰で\n幻想郷は大盛り上がりじゃ\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#やっぱり？\nそうでしょそうでしょ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#大きな波紋が立つのなら\n石を投げた甲斐があるって\nもんねぇ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#ところでじゃ\nお前さんの最終的な\n目的はなんじゃ\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#別に？\n面白そうな事見つけたから\n試しただけよ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#最終的な目的、だなんて\nそんなめんどくさい事は\n考えてないわ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_驚1,0,0
#そうかいそうかい\nまあ今どきの女学……いや\n女子高生はそう言うもんかのう\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_余1,0,0
#しかしそれじゃあ\nすぐに飽きてしまうぞ\,a11x2,0,0
#,ClearBalloon,mamizou
#
#
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_決1,0,0
#そこでどうじゃ\n儂と勝負をしないか？\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#勝負ですって？\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#ここに新しい\nパワーストーンがある\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#む、貴方はもしや\,a11x2,0,0
#,ClearBalloon,usami
#
#,Function,"StopBGM(4000);",# BGM停止
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_嬉1,0,0
#そうじゃ気付いておる\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#オカルトボールの正体は\nパワースポットの石じゃな\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_余1,0,0
#そして儂が持っているのは\n幻想郷のパワーストーンじゃ\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_余1,0,0
#コレさえあれば幻想郷と\n行き来は自在になる\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_嬉1,0,0
#もしお主が勝ったら\nこれをやろう\,a11x2,0,0
#,ClearBalloon,mamizou
#
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#面白ーい\n欲しい欲しい\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#で、私が負けたら？\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#そうじゃのう……\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_普1,0,0
#外の世界を一日案内して\n貰えるか？\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_驚1,0,0
#そんなんで良いの？\nじゃあやるよー\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,マミゾウ_決1,0,0
#儂が勝つことは判りきって\nおるんでのう\n余り無茶は言わんて\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_嬉1,0,0
#よーし\n俄然やる気が湧いてきたわ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#私の超能力の見せ所ね！\,a11x2,0,0
#,ClearBalloon,usami
#
#
#
#
#

#両者フェイス撤去
,th145_Hide,mamizou,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,mamizou,マミゾウ_負1,0,0
,ImageDef,usami,菫子_余1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,usami,-1280	,#マミゾウフェイス表示開始

,SetFocus,usami
よーし\nこれで幻想郷に行き放題！\,a11x2,0,0

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
,ImageDef,usami,菫子_負1,0,0

,th145_Show,mamizou,-1280	,&,#マミゾウフェイス表示開始
,th145_Show,usami,-1280	,#マミゾウフェイス表示開始

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
