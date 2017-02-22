#========================================================================
#	布都ストーリー
#	ステージ3　VS妹紅
#	場所：竹林
#	ステージタイトル
#	   「ボールより軽い命」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,futo,-360,0,false
,DefineObject,mokou,-360,0,true

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

,Function,"GameStory_PlayBGM(704);",# 会話BGM再生開始

#肩書き登録
,DefineObject,futo_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,futo,布都_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mokou,-1280,

# 2Pキャラステージ下から登場
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
今日もまた\n迷子が一人……\,a11x2,0,0
,ClearBalloon,mokou

,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"



,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
何者だ？\,a05x2,0,0
,ClearBalloon,mokou


,ImageDef,futo,布都_決1,0,0
,th145_Show,futo,-1280	,
,SetFocus,futo		,
頼もう\nボールを賭けて闘え！\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
ふー\,a05x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
何だ？\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_汗1,0,0
またオカルトボールの話か\n最近寄こせって言う奴が多すぎる\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
全部返り討ちにしてやったがな\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
不死者に勝負を挑もうなど\n正気の沙汰では無いぞ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_驚1,0,0
ほほう\nお主もまた不死者であったか\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
何？\nまさかお前……\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
我も一度死を\n経験した者である\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
ふっふっふ\nこいつは驚いたぞ、面白い\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
受けて立とう！\nどっちが先に死ねるか勝負だ！\,b15x3,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_汗1,0,0
い、いや\n賭けるのはオカルトボール\nだけで良いぞ\,c15x3,0,0
,ClearBalloon,futo





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,futo,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,futo,布都_負1,0,0
,ImageDef,mokou,妹紅_汗1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,mokou,-1280	,#布都フェイス表示開始

,SetFocus,mokou
ボールなど要らんと言うのに\nどんどん集まってしまう\,a15x3,0,0

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
,ImageDef,futo,布都_嬉1,0,0
,ImageDef,mokou,妹紅_負1,0,0

,th145_Show,futo,-1280	,&,#布都フェイス表示開始
,th145_Show,mokou,-1280	,#布都フェイス表示開始


,SetFocus,futo		,
よーし\nボールを頂いたぞ！\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_驚1,0,0
……てこんなに大量に\n持ってたの？\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
あー\nバッタバッタ返り討ちに\nしてたからな\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
全部手放せて\n清々したしたよ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
簡単だったのう\nこれでもう六個か\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_敵1,0,0
霊夢は残りの所有者は\n四人だけだと言ってたな\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_惑1,0,0
二人は自分とこいつだとすると\n後残りは二人……\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_普1,0,0
でもそのうち一人は\n太子様だから……\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,布都_余1,0,0
よし決めた\nそろそろ邪魔するぞ！\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
次の対戦相手の所に行くのか\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_余1,0,0
気を付けろよ\nここは迷いの竹林だ\,c11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_嬉1,0,0
空を飛んだって\n簡単には抜けられないぞ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,布都_汗1,0,0
ぐぐぐ\n先ほどは失礼しました\n道案内をお願いしますぅ\,a15x3,0,0
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
