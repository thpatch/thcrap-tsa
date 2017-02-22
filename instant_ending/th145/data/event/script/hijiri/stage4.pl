#========================================================================
#	聖ストーリー
#	ステージ4　VS妹紅
#	場所：竹林
#	ステージタイトル
#	   「世間知らずの不死者」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#フェイス画像
,DefineObject,hijiri,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,hijiri_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#初期表情設定
,ImageDef,hijiri,聖_普1,0,0
,ImageDef,mokou,妹紅_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,mokou,-1280,


,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
そこにいるのは誰だ\,a11x2,0,0
,ClearBalloon,mokou

#紹介カット表示　妹紅は「妹紅_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# 2Pキャラステージ下から登場
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
お前は確か命蓮寺の……\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
ここに何のようだ？\,a11x2,0,0
,ClearBalloon,mokou



,th145_Show,hijiri,-1280	,

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_普1,0,0
貴方からボールと同じ\n強いオーラが出ていたので\n見に来ました\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_汗1,0,0
やはりお前もか\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_驚1,0,0
お前もって\,a05x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
ここの所たまらんよ\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_汗1,0,0
ボールをよこせって奴が\n何人も来て\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
そもそもボールって何だ？\nそんなもん持ってないって\n言っても無駄で\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
持ってないですって？\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
でもそのオカルトオーラは……\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
何だオカルトオーラって\n訳のわからない事ばかり言うな\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_汗1,0,0
えーと\nそもそも貴方\n人間の噂とか興味あります？\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_惑1,0,0
浮き世の興味など\nとっくに枯れた\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_驚1,0,0
都市伝説とかは？\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_驚1,0,0
なんだ？\n都市伝説って\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_汗1,0,0
はー\n良くそこまで世間知らずのままで\nいられますね\,a15x3,0,0
,ClearBalloon,hijiri


,Function,"StopBGM(2000);",# BGM停止

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_普1,0,0
でも確かに貴方からオカルト\nボールの存在を感じるのですが\,a15x3,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
無意識の内に身に付ける\nなんて事もあるようね\,a11x2,0,0
,ClearBalloon,hijiri

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_普1,0,0
まあいいよ\nどうせそのボールを賭けて\n闘うんだろ？\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_怒1,0,0
ここに来た奴はみんなそうだった\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,妹紅_決1,0,0
どうせ死にはしないから\n思いっきりかかってきな！\,a15x3,0,0
,ClearBalloon,mokou



#両者フェイス撤去
,th145_Hide,hijiri,-1280,&
,th145_Hide,mokou,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,hijiri,聖_負1,0,0
,ImageDef,mokou,妹紅_余1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,mokou,-1280	,#聖フェイス表示開始

,SetFocus,mokou
また死にそびれたな\,a11x2,0,0

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
,ImageDef,hijiri,聖_驚1,0,0
,ImageDef,mokou,妹紅_負1,0,0

,th145_Show,hijiri,-1280	,&,#聖フェイス表示開始
,th145_Show,mokou,-1280	,#聖フェイス表示開始

,SetFocus,hijiri		,
随分と大量にボールを\n溜め込んでたのね\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
そうか、奪いに来る奴を\n返り討ちしてたから……\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,mokou		,
ふー\n何か肩が軽くなった気がするな\n礼を言うよ\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_惑1,0,0
無意識でも所持してしまう\nというのは……\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_怒1,0,0
いよいよ持って\n悪夢の予感しかしない\,a11x2,0,0
,ClearBalloon,hijiri

,SetFocus,hijiri		,
,ImageDef,hijiri,聖_汗1,0,0
よくこんなボールの奪い合い\nなんて楽しめるもんねぇ\,a15x3,0,0
,ClearBalloon,hijiri


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
