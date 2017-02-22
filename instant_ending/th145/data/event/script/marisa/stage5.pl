#========================================================================
#	霧雨魔理沙ストーリー
#	ステージ5　VS菫子
#	場所：外の世界
#	ステージタイトル
#	   「一夜限りのアーバンライフ」
#
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

#フェイス画像参照の定義
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#フェイス画像
,DefineObject,marisa,-360,0,false
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

,Function,"GameStory_PlayBGM(707);",# 会話BGM再生開始

#肩書き登録
,DefineObject,marisa_label,50,360,false
,DefineObject,usami_label,1120,360,false

#初期表情設定
,ImageDef,marisa,魔理沙_普1,0,0
,ImageDef,usami,菫子_普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

###タイトルコール出現
##,Function,GameStory_TitleCall();
##,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
# 2Pキャラステージ下から登場
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#
#
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#,th145_Show,usami,-1280	,フェイス表示開始
#流石に昨日の今日だし\nまだ何も起きてないわよね？\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_惑1,0,0
#昨日はビックリしたなぁ\nまさかいきなり巫女に\n攻撃されるなんて……\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,th145_Hide,usami,-1280,



#1P上から登場
,Function,GameStory_1P_In(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

#,ImageDef,usami,菫子_驚1,0,0
#
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_驚3,0,0
#,th145_Show,marisa,-1280	,#霊夢フェイス表示開始
#あいたたた\,a05x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_汗1,0,0
#こりゃ眩しくて目が痛いな\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_怒1,0,0
#\R[外の世界|こっち]に居られるのは半時くらい\nだって言ってたな……ん？\,a15x3,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_驚1,0,0
#,th145_Show,usami,-1280	,フェイス表示開始
#わー、釣れた釣れた！\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_嬉1,0,0
#空を飛んでいるって事は\nやっぱり人間じゃ無いわよね\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_普2,0,0
#まごう事なき人間だ\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_汗1,0,0
#人間……？\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_惑1,0,0
#お前こそ……何者だ？\n外の人間だよな？\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_怒1,0,0
#というかお前だろ\n私を罠に嵌めた奴は\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_嬉1,0,0
#いかにも\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#自己紹介が遅れたわ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_普1,0,0
#東深見高校一年、\R[宇佐見|うさみ]\R[菫子|すみれこ]\n泣く子も黙る本物の超能力者よ\,a15x3,0,0
#,ClearBalloon,usami
#
##紹介カット表示　華扇は「華扇_怒1」からのみ実行可能\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_驚1,0,0
#こ、高校って言うとアレだよな\n学校だよな\,a15x3,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_惑1,0,0
#そうよ？\nそうかそっちにはないのかな？\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_嬉1,0,0
#学校の怪談とかあるんだよな？\n興奮するなぁ\,a15x3,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_惑1,0,0
#あるけど……\nそんなことより\n貴方の話をもっと聞きたいわ\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#幻想郷の事が知りたくて\n呼び込んだんだから\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_驚1,0,0
#呼び込んだ、だと？\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_嬉1,0,0
#私はね\n少しだけならそっちの\n世界に入れるの\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_驚1,0,0
#美しい世界だったわ\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#だから秘密を曝きたいのよ\n多少危険な目に遭っても\,a15x3,0,0
#,ClearBalloon,usami
#
#,Function,"StopBGM(2000);",# BGM停止
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_驚1,0,0
#……そうか、結界は外からでも\n危険にさらされているんだな\,a15x3,0,0
#,ClearBalloon,marisa
#
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_怒1,0,0
#色々訊きたい事があるが\n私にはもう時間が無い\,a11x2,0,0
#,ClearBalloon,marisa
#
#
#,Function,"GameStory_PlayBattleBGM(511);",# 戦闘BGM再生開始
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_怒1,0,0
#私は霧雨魔理沙だ\n本物の魔法使いだ\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_決1,0,0
#自分の仕事だけでも\nしていくよ\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_余1,0,0
#……知ってるわ\n幻想郷の妖怪の仕事\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_汗1,0,0
#人間だ\,a05x2,0,0
#,ClearBalloon,marisa
#
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_決1,0,0
#あなたの仕事\nこういうことでしょ？\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_嬉1,0,0
#そうだ、察しが良いな\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_汗1,0,0
#ただ普通の人間とやり合うのは\nフェアじゃ無い気がするが……\,a15x3,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_決1,0,0
#貴方こそ、気を付けた方が良いわね\n今は女子高生にだって\n武器が作れる時代だから……\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,marisa		,#発言中キャラを指定
#,ImageDef,marisa,魔理沙_汗1,0,0
#じょしこうせーってなんだ？\,a11x2,0,0
#,ClearBalloon,marisa
#
#,SetFocus,usami		,#発言中キャラを指定
#,ImageDef,usami,菫子_決1,0,0
#異世界の貴方に\n教えてあげる\,a11x2,0,0
#,ClearBalloon,usami
#外の世界で唯一無二の\n最強無敵の種族の事よ！\,b11x2,0,0
#,ClearBalloon,usami
#
#
#
##両者フェイス撤去
#,th145_Hide,marisa,-1280,&
#,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::対戦開始命令

,End




# -------------------------------------------------------
# 敗北編
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,marisa,魔理沙_負1,0,0
,ImageDef,usami,菫子_決1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,usami,-1280	,#魔理沙フェイス表示開始

,SetFocus,usami
さーて\nお友達から始めましょう？\,a15x3,0,0

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
,ImageDef,marisa,魔理沙_驚1,0,0
,ImageDef,usami,菫子_負1,0,0

,th145_Show,marisa,-1280	,&,#魔理沙フェイス表示開始
,th145_Show,usami,-1280	,#魔理沙フェイス表示開始

,SetFocus,usami
　\,a11x2,0,0
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
