#========================================================================
#	神子ストーリー
#	ステージ4　VS針妙丸
#	場所：輝針城
#	ステージタイトル
#	   「奇妙な噂は誰が為に」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#フェイス画像
,DefineObject,miko,-360,0,false
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
,DefineObject,miko_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#初期表情設定
,ImageDef,miko,神子_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,Function,GameStory_1P_In_Side(),
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280	,#針妙丸フェイス表示開始

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
よーし止まれい！\,b11x2,0,0
,ClearBalloon,sinmyoumaru

#紹介カット表示　針妙丸は「針妙丸_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,th145_Show,miko,-1280	,

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_余1,0,0
そこのお前ー！\nボールを沢山持っているな？\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0
誰かが沢山集めるまで\n様子を見て正解だった\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
お前……\n小さくて見落とす所だった\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
小さいからって\n馬鹿にするなよー？\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
こう見えても誇り\n高き小人族だ\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,Function,"StopBGM(2000);",# BGM停止

,SetFocus,miko		,
,ImageDef,miko,神子_驚1,0,0
ほう\n\R[少彦名|スクナヒコナ]の血を継ぐ者という訳か\,a15x3,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_余2,0,0
そんな者が利用する\n都市伝説とは一体\,a11x2,0,0
,ClearBalloon,miko

,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
これからたっぷり\n味わわせてやるよー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,sinmyoumaru		,#発言中キャラを指定
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
小ささは\n強さだと言う事をな！\,b11x2,0,0
,ClearBalloon,sinmyoumaru




#両者フェイス撤去
,th145_Hide,miko,-1280,&
,th145_Hide,sinmyoumaru,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End

# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,miko,神子_負1,0,0
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#神子フェイス表示開始

,SetFocus,sinmyoumaru
よーし大量ゲットだ！\nこれで大きくなれるぞー\,a11x2,0,0

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
,ImageDef,miko,神子_普1,0,0
,ImageDef,sinmyoumaru,針妙丸_負1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,sinmyoumaru,-1280	,#神子フェイス表示開始

,SetFocus,sinmyoumaru		,#発言中キャラを指定
しくしく\nもう少しでボールが七個\n集まりそうだったのに\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,#発言中キャラを指定
あんたが集めたって\n何にもならないでしょ？\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
ボールを集めて何をする\nつもりだったの？\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,sinmyoumaru		,#発言中キャラを指定
七個集めれば大きくなれるって\nみんな言ってたもん\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,miko		,
,ImageDef,miko,神子_惑1,0,0
一体何処からそんな噂を\n聞いたんだろう\,a11x2,0,0
,ClearBalloon,miko

,SetFocus,miko		,
,ImageDef,miko,神子_普1,0,0
まあいい\n残りはあと一つだけだ\n恐らくそれで全部の筈\,a15x3,0,0
,ClearBalloon,miko

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
