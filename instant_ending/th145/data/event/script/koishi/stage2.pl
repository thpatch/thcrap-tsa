#========================================================================
#	こいしストーリー
#	ステージ2　VS魔理沙
#	場所：神社（夕）
#	ステージタイトル
#	   「論点はそこでは無い」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,koishi,-360,0,false
,DefineObject,marisa,-360,0,true

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
,DefineObject,koishi_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,koishi,こいし_普1,0,0
,ImageDef,marisa,魔理沙_嬉1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,marisa,-1280,&
,th145_Show,koishi,-1280,

,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
あんまり有名じゃ無いの\nかなー、メリーさん\,a11x2,0,0
,ClearBalloon,koishi


,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
もうちょっと有名だと\n思ってた\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,
,ImageDef,koishi,こいし_怒1,0,0
ねえ、そこんところ\nどうなんです？\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_驚2,0,0
わあ、誰か居た！\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_敵1,0,0
急に出てくるなよ\nビックリするなぁ\,a11x2,0,0
,ClearBalloon,marisa

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,koishi		,
,ImageDef,koishi,こいし_惑1,0,0
最初から居たもん\n貴方の後ろにー！\,a11x2,0,0
,ClearBalloon,koishi



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,koishi,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,koishi,こいし_負1,0,0
,ImageDef,marisa,魔理沙_余1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,marisa,-1280	,#こいしフェイス表示開始

,SetFocus,marisa
メリーさんの電話\n知ってるけどな\,a11x2,0,0

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
,ImageDef,koishi,こいし_惑1,0,0
,ImageDef,marisa,魔理沙_汗1,0,0

,th145_Show,koishi,-1280	,&,#こいしフェイス表示開始
,th145_Show,marisa,-1280	,#こいしフェイス表示開始


,SetFocus,koishi		,
貴方の後ろー……\,c11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
そうか、直訳するとメリーさんの\n知名度が低くて誰も怖がってくれ\nない、って言ってるのか\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,
,ImageDef,koishi,こいし_普1,0,0
……うん\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_惑1,0,0
それは違うな\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
みんな電話という物が\nよく判っていないだけだ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,
,ImageDef,koishi,こいし_驚1,0,0
ハッ！\nそうだったのか\,a11x2,0,0
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
