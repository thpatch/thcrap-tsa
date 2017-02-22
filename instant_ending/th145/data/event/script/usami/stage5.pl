#========================================================================
#	菫子ストーリー
#	ステージ5　VS針妙丸
#	場所：輝針城
#	ステージタイトル
#	   「一寸法師の受難」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#フェイス画像
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(702);",# 会話BGM再生開始

#肩書き登録
,DefineObject,usami_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#初期表情設定
,ImageDef,usami,菫子_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,usami,-1280	,


,SetFocus,usami		,
,ImageDef,usami,菫子_普1,0,0
地上は何処も妖怪だらけね\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
妖怪なんて怖くない\nなんていって済みません\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_余1,0,0
やっぱり妖怪は\n怖かった……\,a11x2,0,0
,ClearBalloon,usami

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280,

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
あー、誰？\,a05x2,0,0
,ClearBalloon,sinmyoumaru

#紹介カット表示　針妙丸は「針妙丸_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
あ、貴方は\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
あー、あの時の変態！\n何で私の根城に居る！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,usami		,
,ImageDef,usami,菫子_嬉1,0,0
きゃー\nやっぱり可愛いー！\n癒されるー\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
くそー\nこんな所まで追って\n来やがったかー\,a15x3,0,0
,ClearBalloon,sinmyoumaru



,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,usami,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End



# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,菫子_負1,0,0
,ImageDef,sinmyoumaru,針妙丸_決1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#菫子フェイス表示開始

,SetFocus,sinmyoumaru
家がバレてしまった\nもう殺すしかない\,a11x2,0,0

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
,ImageDef,usami,菫子_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_負1,0,0

,th145_Show,usami,-1280	,&,#菫子フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#菫子フェイス表示開始

,SetFocus,usami		,
こんな生き物が居るんなら\n\R[幻想郷|こっち]も捨てたもんじゃないね\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_驚1,0,0
って今はそんな余裕を言ってる\n場合じゃ無かったわー\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,菫子_汗1,0,0
まだ家に帰る手段も\n見つかっていないのに\,a11x2,0,0
,ClearBalloon,usami

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
