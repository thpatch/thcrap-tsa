#========================================================================
#	菫子ストーリー
#	ステージ4　VS魔理沙
#	場所：妖怪狸の森
#	ステージタイトル
#	   「幻想郷流の洗礼」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,usami_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,marisa,魔理沙_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,usami,-1280	,


,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
しかし……\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
ここにはあの街以外に\n人が住んでそうな所が無いわ\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
ああ、どうにかして\n外の世界に帰りたい\,a11x2,0,0
,ClearBalloon,usami

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,marisa,-1280,
,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_敵1,0,0
お、やっと見つけたぜ\,a11x2,0,0
,ClearBalloon,marisa

#紹介カット表示　魔理沙は「魔理沙_敵1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
あー　あの時の人間！\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普1,0,0
霧雨魔理沙だ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,菫子_嬉1,0,0
助かったー\n\R[幻想郷|こっち]に閉じ込められて\n途方に暮れていたのよ\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_余1,0,0
ふふふふふ\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,菫子_惑1,0,0
何がおかしいの？\n人間なんでしょ助けてよー\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_嬉1,0,0
誰が助けるなんて言ったかい\n人間だからって\nみんな味方だと思うなよ\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普1,0,0
私はあんたをコテンパンに\nするために探してたんだ\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_決1,0,0
幻想郷流の洗礼を\n受けるがいい！\,a11x2,0,0
,ClearBalloon,marisa



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,usami,-1280,&
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
,ImageDef,usami,菫子_負1,0,0
,ImageDef,marisa,魔理沙_余1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,marisa,-1280	,#菫子フェイス表示開始

,SetFocus,marisa
おっとやり過ぎたかな？\,a11x2,0,0

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
,ImageDef,usami,菫子_驚1,0,0
,ImageDef,marisa,魔理沙_惑1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,marisa,-1280	,#菫子フェイス表示開始


,SetFocus,usami		,
ひえー\n何で攻撃してくるのー\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
何でって\nお前、判らないのか？\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
騒ぎを起こしたのは\nお前の方からだぜ\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
そんなのちょっとした\nイタズラじゃないのー\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_怒1,0,0
それをこんな卑劣な\n手で軟禁だなんてー\,a11x2,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_汗1,0,0
まだまだ反省してない\nようだな\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,魔理沙_普1,0,0
もう少し痛い目に\n遭って貰うか\,a11x2,0,0
,ClearBalloon,marisa


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
