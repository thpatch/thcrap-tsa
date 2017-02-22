#========================================================================
#	一輪ストーリー
#	ステージ5　VS神子
#	場所：神霊廟
#	ステージタイトル
#	   「オカルトボールの真実」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#フェイス画像
,DefineObject,ichirin,-360,0,false
,DefineObject,miko,-360,0,true

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
,DefineObject,ichirin_label,50,360,false
,DefineObject,miko_label,1120,360,false

#初期表情設定
,ImageDef,ichirin,一輪_汗1,0,0
,ImageDef,miko,神子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280,&
,th145_Show,miko,-1280	,

#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_普1,0,0
#ほほう\nお前もオカルトボールを\n集めているようだな\,a15x3,0,0
#,ClearBalloon,miko
#
##紹介カット表示　神子は「神子_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_汗1,0,0
#よりによって最後は貴方かー\nきついなぁ\n絶対タチの悪い\R[都市伝説|オカルト]だよ、もう\,a15x3,0,0
#,ClearBalloon,ichirin
#
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_惑1,0,0
#ところでお前\nこのボールが何なのか\n判っているのか？\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_汗1,0,0
#七個集めると覚りが\n開けるんですよね\n僧侶垂涎のボールです\,a15x3,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_嬉1,0,0
#はっはっは\n馬鹿みたいな噂に翻弄されてるな\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_決1,0,0
#愚か者め！\nこいつはそんな代物では無いぞ！\n集めたって覚りなんか開ける物か\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_驚1,0,0
#ええー？\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_惑1,0,0
#私は都市伝説が流行ってから\nそれぞれの噂の出所を\n探るようにした\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_普1,0,0
#するとどうだろ\n殆どの都市伝説は神社近辺の\n連中が広めたもんだった\,a15x3,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_惑1,0,0
#そう、なんですか？\,a11x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_惑1,0,0
#実現する都市伝説を無力化する\nための措置だろう\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_余2,0,0
#噂を上手く操って\n危険を未然に防ぐという訳だ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_怒1,0,0
#だがな\nオカルトボールだけは違う\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_普1,0,0
#これだけは噂の出所が\nようとして掴めなかったのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(3000);",# BGM停止
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_普1,0,0
#だが神社に張り込むこと数日\nついにそいつが正体を現した\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_惑1,0,0
#ほうほう\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_惑1,0,0
#そいつは影しか見えなかったが\n間違い無い\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_怒1,0,0
#あれは外の人間だ！\nこのボールは外の世界の物\nだったのだ！\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_驚1,0,0
#何だってー！\,a05x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_汗1,0,0
#……って\nそのくらい想像付くわよ\,a11x2,0,0
#,ClearBalloon,ichirin
#
#,SetFocus,ichirin		,#発言中キャラを指定
#,ImageDef,ichirin,一輪_余1,0,0
#大体私達が使っている\n都市伝説は外の世界の物ばかり\nじゃないの\,a15x3,0,0
#,ClearBalloon,ichirin
#
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_余1,0,0
#ほう\n中々どうして聡明だな\,a11x2,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_余1,0,0
#と言うことは知っていて\n集めているという訳か\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_余2,0,0
#ふっふっふ\n良いだろう\,a05x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_決1,0,0
#不測の事態が怖くないのであれば\n相手をしてやろう\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,#発言中キャラを指定
#,ImageDef,miko,神子_決1,0,0
#オカルトボールの全てを掛けて！\n手に入れた方が\n不幸になるかもしれんがな！\,a15x3,0,0
#,ClearBalloon,miko
#
#
#
#
#
#
#
#
##両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中会話
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,ichirin,一輪_普1,0,0
,ImageDef,miko,神子_普1,0,0

,Sleep,5

#,Move,ichirin,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,ichirin,-1280,&,#一輪フェイス表示開始
,th145_Show,miko,-1280,#一輪フェイス表示開始

,SetFocus,miko		,#発言中キャラを指定
,ImageDef,miko,神子_普1,0,0
,th145_Show,miko,-1280	,#&, #神子フェイス表示開始
文章A\,a11x2,0,0
,ClearBalloon,miko

#フキダシの一括消去　これを実行するまで噴出しは際限なく手前に増える
,ClearBalloon,ichirin
,ClearBalloon,miko

#両者フェイス撤去
,th145_Hide,ichirin,-1280,&
,th145_Hide,miko,-1280,

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
,ImageDef,miko,神子_余1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,miko,-1280	,#一輪フェイス表示開始

,SetFocus,miko
ボールを手にするのは\n私の方が相応しい\,a11x2,0,0

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
,ImageDef,ichirin,一輪_驚1,0,0
,ImageDef,miko,神子_負1,0,0

,th145_Show,ichirin,-1280	,&,#一輪フェイス表示開始
,th145_Show,miko,-1280	,#一輪フェイス表示開始

,SetFocus,miko
本文\,a11x2,0,0
,ClearBalloon,miko

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
