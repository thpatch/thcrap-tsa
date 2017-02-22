#========================================================================
#	華扇ストーリー
#	ステージ4　VSマミゾウ
#	場所：異変の神社
#	ステージタイトル
#	   「チャンスは今しかない」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#フェイス画像
,DefineObject,kasen,-360,0,false
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
,DefineObject,kasen_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#初期表情設定
,ImageDef,mamizou,マミゾウ_普1,0,0



#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,kasen,華扇_惑1,0,0
,th145_Show,kasen,-1280	,

,SetFocus,kasen
そうか失敗したわー\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,華扇_怒1,0,0
魔理沙の姿が見当たらないと\n思ったら既に七つ集めきってた\nなんて\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,華扇_汗1,0,0
ボールが七つ以上存在していた\nなんて想定外だった\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,華扇_惑1,0,0
七つ集めろって時は\n七つしか無いもんだと\,c11x2,0,0
,ClearBalloon,kasen


# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_驚1,0,0
,th145_Show,mamizou,-1280	,#マミゾウフェイス表示開始
なんじゃい\nこりゃ\,a05x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,華扇_驚1,0,0
しまった\n見つかった\,a05x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_普1,0,0
お前さん\n何をしようとしているんじゃ\,c15x3,0,0
,ClearBalloon,mamizou


#紹介カット表示　マミゾウは「マミゾウ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,kasen
,ImageDef,kasen,華扇_怒1,0,0
……\,a05x2,0,0
,ClearBalloon,kasen

,Function,"StopBGM(1000);",# BGM停止

,SetFocus,mamizou		,#発言中キャラを指定
,ImageDef,mamizou,マミゾウ_嬉1,0,0
黙っていると言う事は\n良からぬ事を企んでいる様じゃな\,a15x3,0,0
,ClearBalloon,mamizou

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,kasen
,ImageDef,kasen,華扇_決1,0,0
知れたこと\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen
,ImageDef,kasen,華扇_普2,0,0
見られたからには仕方が無い\n強制的に大人しくして貰おうか\,a15x3,0,0
,ClearBalloon,kasen


#両者フェイス撤去
,th145_Hide,kasen,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kasen,華扇_負1,0,0
,ImageDef,mamizou,マミゾウ_余1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,mamizou,-1280	,#華扇フェイス表示開始

,SetFocus,mamizou
ここに居ると\n懐かしい風を感じるな\,a11x2,0,0



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
,ImageDef,kasen,華扇_決1,0,0
,ImageDef,mamizou,マミゾウ_負1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,mamizou,-1280	,#華扇フェイス表示開始

,SetFocus,mamizou
まいったまいった\n降参じゃ\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,華扇_決1,0,0
黙ってさえいれば\nこれ以上何もしない\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_負1,0,0
この空間の感じ知ってるぞい\n外の世界の風じゃ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_決1,0,0
お前さん結界に\n穴を空けただろ\,c11x2,0,0
,ClearBalloon,mamizou


,SetFocus,kasen
,ImageDef,kasen,華扇_嬉1,0,0
ほう……\n黙るつもりは無いと？\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_惑1,0,0
おっと\nそんなにいきらんでもいいじゃろ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_余1,0,0
幻想郷のルールは知っておるが\n儂は外の世界から来た妖怪じゃ\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_普1,0,0
お前さんが何処の世界に\n行こうとも何とも思わん\,a15x3,0,0
,ClearBalloon,mamizou


,SetFocus,kasen
,ImageDef,kasen,華扇_決1,0,0
私はこれから外の世界に赴く\n……もちろん理由は秘密だ\,a15x3,0,0
,ClearBalloon,kasen



,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_余1,0,0
ほうかほうか\n何でもいいわい\nじゃあ神社の後始末してやるぞい\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,kasen
,ImageDef,kasen,華扇_決1,0,0
すぐに帰ってくる\n三日も掛らないだろうよ\,a11x2,0,0
,ClearBalloon,kasen


,SetFocus,mamizou
,ImageDef,mamizou,マミゾウ_嬉1,0,0
お土産を楽しみに待ってるぞ\n佐渡のイゴがええのう\,a15x3,0,0
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
