#========================================================================
#	霧雨魔理沙ストーリー
#	ステージ3　VSこいし
#	場所：地霊殿
#	ステージタイトル
#	   「決して振り返るな」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/koishi.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
,DefineObject,koishi,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,koishi_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,koishi,こいし_普1,0,0

#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2Pキャラステージ下から登場
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普1,0,0
,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
地上はあらかた探せたようだし\n残りは地底世界にあるかもな\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_普1,0,0
,th145_Show,koishi,-1280	,#こいしフェイス表示開始
もしもーし\,a05x2,0,0
,ClearBalloon,koishi

#紹介カット表示　こいしは「こいし_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,koishi

,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P上から登場
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
だがしかし、都市伝説は\n地下まで広まってるもんかねぇ\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_惑1,0,0
もしもーし\n私は今何処にいると思いますー？\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_惑1,0,0
人間の往来がないから\n噂なんて広まらないか……\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_余1,0,0
そもそも地底の奴らに\n都市伝説なんてハイカラなもんは\n似合わないしな\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_余1,0,0
もしもーし\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚1,0,0
さっきから何か聞こえるな\n何の音だ？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_驚2,0,0
もしかしてこれも\n都市伝説の一種なのか？\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_決1,0,0
もしもーし\n私今ねぇ\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_決1,0,0
貴方の目の前に居るの\,a11x2,0,0
,ClearBalloon,koishi





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,koishi,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -----------------
# 戦闘中会話
:main_2

,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,koishi,こいし_普1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#フェイス画像位置を非トーク位置にシフト
,th145_Show,marisa,-1280,&,#魔理沙フェイス表示開始
,th145_Show,koishi,-1280,#魔理沙フェイス表示開始

,SetFocus,koishi		,#発言中キャラを指定
,ImageDef,koishi,こいし_普1,0,0
,th145_Show,koishi,-1280	,#&, #こいしフェイス表示開始
文章A\,a11x2,0,0
,ClearBalloon,koishi

#フキダシの一括消去　これを実行するまで噴出しは際限なく手前に増える
,ClearBalloon,marisa
,ClearBalloon,koishi

#両者フェイス撤去
,th145_Hide,marisa,-1280,&
,th145_Hide,koishi,-1280,

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
,ImageDef,koishi,こいし_余1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,koishi,-1280	,#魔理沙フェイス表示開始

,SetFocus,koishi		,#発言中キャラを指定
ところで何しに来たの？\,a11x2,0,0
,ClearBalloon,koishi


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
,ImageDef,marisa,魔理沙_汗1,0,0
,ImageDef,koishi,こいし_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,koishi,-1280	,#魔理沙フェイス表示開始


,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
あービックリした\n急に出てくんなよ\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_汗1,0,0
妖怪だけなら何ともないが\n今は何が起こるか判らないからな\,c15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
さっきのボールは何？\,c11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_余1,0,0
気にしなくて良いぜ\n私にも判らんし\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#発言中キャラを指定
,ImageDef,marisa,魔理沙_普1,0,0
これで一応七個集まった筈だが……\n何が起こるんだ？\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#発言中キャラを指定
いつの間にそんなの\n持ってたのかしら　私\,a11x2,0,0
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
