#========================================================================
#	霊夢真ストーリー
#	ステージ4　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「真・秘封倶楽部の決意」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/reimu.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,reimu,-360,0,false
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

,Function,"GameStory_PlayBGM(701);",# 会話BGM再生開始

#肩書き登録
,DefineObject,reimu_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,reimu,霊夢_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


#,ImageDef,usami,菫子_驚1,0,0
#,th145_Show,usami,-1280,&
#,th145_Show,reimu,-1280	,
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_普1,0,0
#見つけたわよ\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#ま、まさかこっちにまで\n追ってくるなんて！\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#ねえもう許してよう\,a11x2,0,0
#,ClearBalloon,usami
#
##紹介カット表示　菫子は「菫子_怒1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_敵1,0,0
#もう茶番は終わりよ\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_惑1,0,0
#貴方は今保護する対象に入った\,a15x3,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_惑1,0,0
#そんなこと言って\nまだ帰してくれないのー？\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_汗1,0,0
#いやだから\n保護しようと……\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#判りました判りました\nもう良いです\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_普1,0,0
#私、\R[秘封倶楽部|ひみつをあばくもの]会長として\n最後の大仕事をします\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_怒1,0,0
#結果どうなるのか判らないし\n幻想郷の誰か他の人にやらせる\nつもりだったけど\,a15x3,0,0
#,ClearBalloon,usami
#
#
,Function,"StopBGM(5000);",# BGM停止
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#もうオカルトボールの力を\n解放するしか無い\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#解放して自らが幻想郷との\n結界を破壊する鍵となる！\,c15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_驚1,0,0
#いやちょっ\n待って、それは罠よ！\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_余1,0,0
#追い詰められた女子高生の\n死に様はさぞかし記憶に\n残るでしょう！\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#ああなんて美しい死\nなんて価値のある死\,a11x2,0,0
#,ClearBalloon,usami
#
,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_怒1,0,0
#そんなこと美しくない！\n自爆に価値は無い！\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_決1,0,0
#私は楽園の巫女\n博麗霊夢である！\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_決1,0,0
#どうあっても結界は守る！\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,reimu		,
#,ImageDef,reimu,霊夢_決2,0,0
#そして人間を軽々しく\n死なせるもんか！\,a11x2,0,0
#,ClearBalloon,reimu
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#,ImageDef,reimu,霊夢_決2,0,0
#人間界、最期の夜を\,a11x2,0,0
#
#,SetFocus,reimu		,
#幻想郷、最初の夜を\,a11x2,0,0
#,ClearBalloon,usami
#,ClearBalloon,reimu
#
#
#,SetFocus,usami		,
#,ImageDef,usami,菫子_決1,0,0
#,ImageDef,reimu,霊夢_決2,0,0
#遺伝子の奥底にまで刻み込め！,b15x3,0,0
#
#,SetFocus,reimu		,
#悪夢を見飽きるまで刻み込め！\,b15x3,0,-60
#,ClearBalloon,usami
#,ClearBalloon,reimu





#両者フェイス撤去
,th145_Hide,reimu,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,Thread,"::story.BeginOpening();"#オープニング開始
,End

# -------------------------------------------------------
# 勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,reimu,霊夢_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,reimu,-1280	,&,#霊夢フェイス表示開始
,th145_Show,usami,-1280	,#霊夢フェイス表示開始

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
