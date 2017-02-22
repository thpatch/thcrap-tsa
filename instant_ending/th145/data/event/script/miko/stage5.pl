#========================================================================
#	神子ストーリー
#	ステージ5　VS聖
#	場所：命蓮寺
#	ステージタイトル
#	   「奪いあう日々の終わり」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/miko.csv"
,LoadImageDef,"data/event/pic/hijiri.csv"

#フェイス画像
,DefineObject,miko,-360,0,false
,DefineObject,hijiri,-360,0,true

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
,DefineObject,miko_label,50,360,false
,DefineObject,hijiri_label,1120,360,false

#初期表情設定
,ImageDef,miko,神子_普1,0,0
,ImageDef,hijiri,聖_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#タイトルコール出現
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
#
#,th145_Show,hijiri,-1280	,&
#,th145_Show,miko,-1280	,
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#さあ、残りはお前だけだ\n大人しくボールを渡すが良い\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_普1,0,0
#そんなにボールを集めて\n何をしようと言うの？\,a15x3,0,0
#,ClearBalloon,hijiri
#
##紹介カット表示　聖は「聖_普1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,hijiri
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余1,0,0
#ボールの正体が掴めそうなんだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#どうやらこのボールは集まると\nこの空間を突き破る性質を\n持っているのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_驚1,0,0
#なんですって？\n空間転移の罠って事？\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_余2,0,0
#まあ、それには早い内に\n気が付いていたのだが\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#問題は残りのボールだ\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_怒1,0,0
#七つ以上集まったとき\n残りのボールが分裂し\nこの地は再びオカルトに満ちる\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#つまりだ\n全てのボールを集めないと\nこの騒ぎは終わらないのだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_余1,0,0
#私もそんな気がしてました\nですが集めただけでは\n何にも解決しないのでは？\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_惑1,0,0
#より騒ぎが大きくなるだけかと\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,Function,"StopBGM(4000);",# BGM停止
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_惑1,0,0
#私もそう考え最後まで\n慎重だったのだが\n最近気が付いたのだよ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#このボールの空間転移の力は\n幻想郷にしか及ばないんだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_決1,0,0
#私の道場では効果が出ない\nつまりは私が所有している限り\n調べ放題だ\,a15x3,0,0
#,ClearBalloon,miko
#
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_驚1,0,0
#それは面白い仮説ね\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,#発言中キャラを指定
#,ImageDef,hijiri,聖_怒1,0,0
#でもそんな強大で未知の力を\n貴方一人に託すというのは\nちょっと出来ない相談です\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_嬉1,0,0
#そう言うと思ったよ\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_普1,0,0
#ボールのやりとりには\nどのみち闘わないといけないんだ\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,神子_決1,0,0
#温厚なお前をその気にさせる\n手間が省けたよ！\,b15x3,0,0
#,ClearBalloon,miko
#
#
#





#両者フェイス撤去
,th145_Hide,miko,-1280,&
,th145_Hide,hijiri,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,miko,神子_負1,0,0
,ImageDef,hijiri,聖_余1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,hijiri,-1280	,#神子フェイス表示開始

,SetFocus,hijiri
私が封印して見せましょう\nオカルトはオカルトに処すのが\n一番です\,a15x3,0,0

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
,ImageDef,miko,神子_驚1,0,0
,ImageDef,hijiri,聖_負1,0,0

,th145_Show,miko,-1280	,&,#神子フェイス表示開始
,th145_Show,hijiri,-1280	,#神子フェイス表示開始

,SetFocus,hijiri
本文\,a11x2,0,0
,ClearBalloon,hijiri

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
