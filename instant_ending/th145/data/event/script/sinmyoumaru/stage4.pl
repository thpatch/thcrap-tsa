#========================================================================
#	針妙丸ストーリー
#	ステージ4　VSマミゾウ
#	場所：異変の神社＊
#	ステージタイトル
#	   「独り言って恥ずかしいよね」
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/mamizou.csv"

#フェイス画像
,DefineObject,sinmyoumaru,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# 会話BGM再生開始

#肩書き登録
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,mamizou_label,1120,360,false

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
,ImageDef,mamizou,マミゾウ_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,sinmyoumaru,-1280	,,#針妙丸フェイス表示開始

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
はてさて\nお楽しみの儀式ターイム\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
見よ！　この漲る\nオカルトパワー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_余1,0,0
夢幻の力が身体を\n満たすのが判る\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
さあ我が身体を\n大きくするがよいー！\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
キャッ\n恥ずかしい独り言だわ\,a11x2,0,0
,ClearBalloon,sinmyoumaru

# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,th145_Show,mamizou,-1280	,,#針妙丸フェイス表示開始

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_普1,0,0
見てたぞい\,a05x2,0,0
,ClearBalloon,mamizou

#紹介カット表示　マミゾウは「マミゾウ_普1」からのみ実行可能\,a11x2,0,0
,th145_CharName_Cutin,mamizou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,Function,"StopBGM(500);",# BGM停止
,Function,"GameStory_PlayBattleBGM(512);",# 戦闘BGM再生開始

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_驚1,0,0
何だとー？\,a05x2,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_怒1,0,0
見られたからには\n生かしておけぬ\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_決1,0,0
死ねい\,a05x2,0,0
,ClearBalloon,sinmyoumaru



#両者フェイス撤去
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,mamizou,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,sinmyoumaru,針妙丸_負1,0,0
,ImageDef,mamizou,マミゾウ_余1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,mamizou,-1280	,#針妙丸フェイス表示開始

,SetFocus,mamizou
まあそう焦るな\n恥ずかしい台詞の一つや二つ\n誰でも言うじゃろ\,a15x3,0,0

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
,ImageDef,mamizou,マミゾウ_負1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#針妙丸フェイス表示開始
,th145_Show,mamizou,-1280	,#針妙丸フェイス表示開始


,SetFocus,mamizou		,
そうか小人のお前が\nボールを七つ集めてしまったか\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_普1,0,0
七つ集めたら\n大きくなれるんでしょ？\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_嬉1,0,0
そりゃ私が集めないで\n誰が得するっていうのよ\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
ふむ、生憎じゃがな\nそれを集めても大きくなれんぞい\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_惑1,0,0
え？\,a05x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_汗1,0,0
そんな噂信じる方が\nどうかしてると思うが\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,針妙丸_汗1,0,0
それじゃあ\nこのボールは一体\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_惑1,0,0
儂の分も取られて\nしまったからな\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,マミゾウ_余1,0,0
こりゃあ自分で確かめる\nしか無かろうて\,a11x2,0,0
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
