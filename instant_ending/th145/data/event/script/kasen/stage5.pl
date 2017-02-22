#========================================================================
#	華扇ストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「初めて経験する魅力的な恐怖」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,kasen,-360,0,false
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
,DefineObject,kasen_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,kasen,華扇_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,kasen,華扇_惑1,0,0
,th145_Show,kasen,-1280	,

#,SetFocus,kasen
#相変わらず\nこっちは肌に合わないね\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_怒1,0,0
#服が汚れるからさっさと\n用事を済ますか\,a11x2,0,0
#,ClearBalloon,kasen
#
#
## 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,kasen,華扇_驚1,0,0
#
#,SetFocus,kasen
#誰だ？\n魔理沙か？\,a05x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_驚1,0,0
#,th145_Show,usami,-1280	,フェイス表示開始
#おおっと\nついに人間じゃ無い奴が\n出てきたわね？\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_嬉1,0,0
#やったわ！\n大成功だわ\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_惑1,0,0
#外の世界に空を飛べる\n奴が居るなんて\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#ま、私は特別ね\,a11x2,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_怒1,0,0
#そうか\nお前がオカルトボールを\n仕込んだ張本人なのか？\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_諭1,0,0
#あんな物で幻想郷の結界を\n破壊しようとしてたなんて\n怖い物知らずな\\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_汗1,0,0
#流石にすぐバレたのね\nでも効果上々だわ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#噂に従って誰かがボールを\n七つ集めてくれれば\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#そっちの世界に自由に\n行き来出来る扉が出来る\nって手筈になってるわ\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_決1,0,0
#……そんなことまで\n知っているなんて……\n一体何者？\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#改めて初めまして\n私は東深見高校一年、宇佐見\R[菫子|すみれこ]\n泣く子も黙る本物の超能力者よ\,a15x3,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_驚1,0,0
#もしかして人間……\nだと？\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_惑1,0,0
#外の人間が幻想郷の結界を\n破壊しようとするなんて\n思ってもみなかったわ\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#最近の人間を\n舐めない方が良いわ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_嬉1,0,0
#ネットで検索すれば\n何でも出てくるんだから\,a11x2,0,0
#,ClearBalloon,usami
#
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_普1,0,0
#それにしても\n魔理沙より先に答えに\n辿り着いてしまったようね\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_普2,0,0
#私は別件でこっちに\n来たんだけど……\,a11x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_決1,0,0
#ついでだから幻想郷の危機も\n救っていくとしよう\,b15x3,0,0
#,ClearBalloon,kasen
#
#,Function,"StopBGM(2000);",# BGM停止
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_驚1,0,0
#おっと知ってるわよ？\n幻想郷の妖怪の事\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#問題はみんな火力で解決するのよね\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_嬉1,0,0
#ほう\nそこまで知っていて退かないとは\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#
,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#時代遅れの古典的な妖怪が\n集合知を手に入れた現代の人間に\n敵うと思って？\,a15x3,0,0
#,ClearBalloon,usami
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_決1,0,0
#人間は愚かになったもんだな\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_決1,0,0
#妖怪の得体の知れぬ\n恐怖を忘れたのか\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,華扇_決1,0,0
#脳が痺れるような\n夜の暗さを忘れたのか\,c11x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#不思議な物に恐れる事などない\n今や子供だって妖怪を\nコレクションする時代なのよ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#人間の叡智を喰らえ\nそして――\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_決1,0,0
#狭い世界で閉じこもって\nいた事を後悔せよ！\,c11x2,0,0
#,ClearBalloon,usami













#両者フェイス撤去
,th145_Hide,kasen,-1280,&
,th145_Hide,usami,-1280,

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,kasen,華扇_負1,0,0
,ImageDef,usami,菫子_惑1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,usami,-1280	,#華扇フェイス表示開始

,SetFocus,usami
あれー？\nまだ扉は開かない？\,a11x2,0,0

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
,ImageDef,kasen,華扇_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,kasen,-1280	,&,#華扇フェイス表示開始
,th145_Show,usami,-1280	,#華扇フェイス表示開始

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
