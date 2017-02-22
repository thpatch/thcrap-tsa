#========================================================================
#	針妙丸ストーリー
#	ステージ3　VSこいし
#	場所：地霊殿
#	ステージタイトル
#	   「誰か気付いてあげて」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/koishi.csv"

#フェイス画像
,DefineObject,sinmyoumaru,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,koishi_label,1120,360,false

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
,ImageDef,koishi,こいし_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,sinmyoumaru,-1280	,,#針妙丸フェイス表示開始

,SetFocus,sinmyoumaru		,
ドキドキ\,a05x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
地底世界に来る事なんて\n無いから緊張するー\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_惑1,0,0
地上には何故かもうボールを\n持ってる奴が見当たら\nなかったなぁ\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,th145_Show,koishi,-1280	,#針妙丸フェイス表示開始

,SetFocus,koishi		,
,ImageDef,koishi,こいし_普1,0,0
もしもーし\,a05x2,0,0
,ClearBalloon,koishi

#紹介カット表示　こいしは「こいし_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,koishi
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
誰かががめてるのかな\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
,ImageDef,koishi,こいし_驚1,0,0
もしもーし\n今貴方の後ろに居るの\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
ん？\n何か聞こえる？\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
,ImageDef,koishi,こいし_決1,0,0
もしもーし\n貴方の後ろー\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
これはもしや！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
オカルトボールの叫びが\n私の魂に響き渡っている！\,a11x2,0,0
,ClearBalloon,sinmyoumaru





,Function,"StopBGM(500);",# BGM停止

#両者フェイス撤去
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,koishi,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# 戦闘BGM再生開始

,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End





# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_負1,0,0
,ImageDef,koishi,こいし_余1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,koishi,-1280	,#針妙丸フェイス表示開始

,SetFocus,koishi
繋がりやすさナンバーワンよ！\,a15x3,0,0

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
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
,ImageDef,koishi,こいし_負1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,koishi,-1280	,#針妙丸フェイス表示開始


,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
ビックリしたー\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
オカルトボールが\n襲いかかって来たかと思った\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,koishi		,
オカルトボールより\n存在薄いのかな私\,a11x2,0,0
,ClearBalloon,koishi

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
薄いっつーか\n目に映らないっていうか\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0
でもこれで七つ揃ったわ\nやっと大きくなれるー\,a11x2,0,0
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
