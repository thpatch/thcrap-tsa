#========================================================================
#	霧雨魔理沙ストーリー
#	ステージ4　VS華扇
#	場所：異変の神社
#	ステージタイトル
#	   「オカルトボールの真実」
#
# 最初は、夜の神社で会話の途中で背景が変化します
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
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
,DefineObject,marisa_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,kasen,華扇_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2Pキャラステージ下から登場
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
使い方が判らないまま\n夜になってしまったな\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
予想が外れたな\n\R[噂通り|・・・]なら集めれば何かが起こる\nと思ったのだが\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普1,0,0
やっぱり呪文とかかな\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
オカルト神よ\nなんか願いを叶えておくれ！\,b15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
……\,a05x2,0,0
,ClearBalloon,marisa

#1P上から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒2,0,0
,th145_Show,kasen,-1280	,#華扇フェイス表示開始
こんな夜分に何をしている\,a11x2,0,0
,ClearBalloon,kasen

#紹介カット表示　華扇は「華扇_怒2」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚1,0,0
あ、いや、これはその\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
ボールを集めても\n何も起きないんで\n呪文か何か必要なのかなと\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_驚1,0,0
って、もしかして\nオカルトボールを全て集めたな？\,a15x3,0,0
,ClearBalloon,kasen


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
あ、ああ\nでも使い道が判らないんだ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_驚1,0,0
馬鹿な\,c05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_驚1,0,0
霊夢がやられてから\n昨日の今日よ？\,c11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_汗1,0,0
貴方はオカルトボールを\n見分ける力でも持っているの？\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_余1,0,0
鼻が利くんでね\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒1,0,0
……\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
予定は狂ったが始めるか\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
あー？\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
『賢者××××の名において命ず\n　１３０年の禁を解け』\,b15x3,0,0
,ClearBalloon,kasen

,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,

# -----------------------------------------------------------
# ここで背景が異変の神社に変化します
# -----------------------------------------------------------

#1P上から登場
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
,Function,GameStory_SparkFadeIn(),
,Function,GameStory_FieldVibration_Low(),
,Function,GameStory_FieldSpark(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
,Function,GameStory_FieldVibration_High(),
,Function,GameStory_FadeOut(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"
,Function,GameStory_SwitchBack(),
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,ImageDef,marisa,魔理沙_驚2,0,0
,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280	,#魔理沙フェイス表示開始


,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始




,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
さあ、カウントダウンは始まった\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒1,0,0
何をすれば良いのか判らないほど\n愚かでもあるまい\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚2,0,0
判らん判らん\n一体何が起きてるんだ？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
理解する気が無いのなら\n貴方だって余裕で\R[消す|・・]のみよ\,a15x3,0,0
,ClearBalloon,kasen



#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中に会話が入ります（スペルカード一つ使った後くらいかな）
#
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_惑1,0,0
,ImageDef,kasen,華扇_怒1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280,#魔理沙フェイス表示開始


,SetFocus,marisa		,#発言中キャラを指定
本気なんだな？\n何が何だか判らんけど\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,
これは試験よ\nもちろん貴方が弱いとただ死ぬだけの\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_余1,0,0
判った\nじゃあ怖い物は何も無い\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
今取る行動だけは\n理解したぜ\,c11x2,0,0
,ClearBalloon,marisa


#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,kasen,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::対再開命令

,End


# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_負1,0,0
,ImageDef,kasen,華扇_決1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280	,#魔理沙フェイス表示開始

,SetFocus,kasen
こんなもんだったのか\nじゃあ私が行くしかないか\,a11x2,0,0

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
,ImageDef,marisa,魔理沙_敵1,0,0
,ImageDef,kasen,華扇_決1,0,0
#,ImageDef,kasen,華扇_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,kasen,-1280	,#魔理沙フェイス表示開始

,SetFocus,kasen		,#発言中キャラを指定
もう十分\n貴方で大丈夫でしょう\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_決1,0,0
おい、説明しろよ\n何が起こっているんだ？\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_諭1,0,0
貴方は罠にはまってしまった\nそれも昨日完成したばかりの\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
オカルトボールの事か？\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_諭1,0,0
調べた結果、オカルトボールは\n結界を解く為の鍵の様な物で\n科学的で人工的な物質だった\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒1,0,0
外の世界の物質で出来ていて\n外のエネルギーを持つ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚1,0,0
ふ、ふむ\nそれで集めると何が？\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
全て集めた者は結界を\n内側から破壊する新たな鍵となり\n結界を破壊しながら外に向かう\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
ボールを集めるという噂は\n誰かが流した禁断の噂だった\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚2,0,0
ほうほう、って\n何だってー？\,b11x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_諭1,0,0
貴方はその罠に\nはまったのよ\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_惑1,0,0
ボールは未知の力だし\n私の力だけではどうにもならない\,c15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
……って事は、私はもうじき\n幻想郷からおさらばか？\,b15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
それでさっきから視界が歪んで……\,c15x3,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_余1,0,0
そう\n心配するな\,a05x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_諭1,0,0
さっき先手を打った\n貴方の強さを試したのもそれよ\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
というと？\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_怒1,0,0
完全に罠にはまって\n結界が壊される前に\n貴方を外の世界に送り込む！\,b15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,#発言中キャラを指定
,ImageDef,kasen,華扇_決1,0,0
敵は自分で見つけて倒しなさい！\n失敗したら死あるのみと心得よ！\,b15x3,0,0
,ClearBalloon,kasen


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
