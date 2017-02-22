#========================================================================
#	一輪ストーリー
#	ステージ3　VS針妙丸
#	場所：輝針城
#	ステージタイトル
#	   「大小都市伝説大戦」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#フェイス画像
,DefineObject,ichirin,-360,0,false
,DefineObject,sinmyoumaru,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,ichirin_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#初期表情設定
,ImageDef,ichirin,一輪_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280	,#針妙丸フェイス表示開始

,SetFocus,ichirin		,#発言中キャラを指定
空中っていうと\n怪しいのはここよねぇ\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_惑1,0,0
前々から気になってたんだけど\nこのお城、何で逆さのまま\nなのかしら？　欠陥住宅？\,a15x3,0,0
,ClearBalloon,ichirin


# 2Pキャラステージ下から登場
,Function,GameStory_2P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
,th145_Show,sinmyoumaru,-1280	,#針妙丸フェイス表示開始
あーお前、オカルトボールを\n沢山持ってるなー？\,a15x3,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_驚1,0,0
む　何やつ\,a05x2,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
私は誇り高き小人族の末裔ぞ\nいざ神妙に勝負せい\,a15x3,0,0
,ClearBalloon,sinmyoumaru

#紹介カット表示　針妙丸は「針妙丸_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"



,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_驚1,0,0
小人ー？\nそんな種族いたんだー\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
小さいと思って舐めてかかると\n本当に痛い目に遭うよ\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_嬉1,0,0
くすくす\n小人がどんな\R[都市伝説|オカルト]を\n使うのかしら\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_惑1,0,0
何がおかしい\,a11x2,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_余1,0,0
小さいって\n可愛いなーと思ってね\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_嬉1,0,0
なんせ私は\n八尺もある大きな都市伝説を\n使ってるから\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
だ、大が小を兼ねると\n思ったら大間違いよ！\,a11x2,0,0
,ClearBalloon,sinmyoumaru
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
小さき者達に翻弄される\n恐怖を思い知れ！\,a11x2,0,0
,ClearBalloon,sinmyoumaru




,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中会話
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,ichirin,一輪_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_普1,0,0

,Sleep,5

#,Move,ichirin,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,ichirin,-1280,&,#一輪フェイス表示開始
,th145_Show,sinmyoumaru,-1280,#一輪フェイス表示開始

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,th145_Show,sinmyoumaru,-1280	,#&, #針妙丸フェイス表示開始
文章A\,a11x2,0,0
,ClearBalloon,sinmyoumaru

#フキダシの一括消去　これを実行するまで噴出しは際限なく手前に増える
,ClearBalloon,ichirin
,ClearBalloon,sinmyoumaru

#両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::対再開命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,ichirin,一輪_負1,0,0
,ImageDef,sinmyoumaru,針妙丸_余1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#一輪フェイス表示開始

,SetFocus,sinmyoumaru
弱！\n大きいくせに弱！\,b11x2,0,0

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
,ImageDef,ichirin,一輪_嬉1,0,0
,ImageDef,sinmyoumaru,針妙丸_負1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#一輪フェイス表示開始

,SetFocus,ichirin		,#発言中キャラを指定
ふう\nやっと倒せたー\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_余1,0,0
やっぱり大は小を兼ねるのよ\nボールは頂くね\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
持ってけドロボー\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
しくしく\nこの私が敗れるなんてー\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
噂ではボールを七つ集めれば\n大きくなれるって聞いたのに\,a15x3,0,0
,ClearBalloon,sinmyoumaru



,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_汗1,0,0
何そのピンポイントな噂\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_普1,0,0
と言うかオカルトボールって\n本当は何なのかしら？\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,sinmyoumaru
誰かが六個まで集めるのを\n待ってから全部奪う作戦\nだったんだけど\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
どうやらボールを沢山持って\nいる方が強いみたいねぇ\n計算が狂っちゃった\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_嬉1,0,0
そんな負け惜しみをねぇ\n敗者の言い訳って切ないねぇ\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,針妙丸_惑1,0,0
実は他のボールの所有者を\n知ってるけど聞きたくないのね\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_汗1,0,0
すみません\n貴方は身体は小さくても\n魂は偉大でした\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
ふん\nま、どっちが全て手に入れようが\n私には関係無いんでね\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
教えてやろう！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
残りのボールは\n尊大な仙人が持っている\nそして相手も六個揃っているよ\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#発言中キャラを指定
,ImageDef,ichirin,一輪_驚1,0,0
え？\nボールって全部で七個じゃ\n無かったの？\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
彼奴は手強いぞ？\nあんたじゃ敵わないかもなー\,a15x3,0,0
,ClearBalloon,sinmyoumaru








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
