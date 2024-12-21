#========================================================================
#	董子：ステージ5　試作　
#	場所：
#　 スレイブ：ドレミー　　敵チーム：董子　董子
#	ステージタイトル
#	   「」
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

,Function,"::battle.Enable_win_demo(false)"#勝利ポーズ演出無し

#フェイス画像参照の定義
#1Pmaster
,LoadImageDef,usami,"data/event/pic/usami/face.pat"#名前,ソースファイル名
,DefineObject,usami,usami,1p,240,0,false#名前,グループ名,x,y,反転

#1Pslave
,LoadImageDef,doremy,"data/event/pic/doremy/face.pat"#名前,ソースファイル名
,DefineObject,doremy2,doremy,1p,240,0,false#名前,グループ名,x,y,反転

#2Pmaster
,LoadImageDef,usami,"data/event/pic/usami/face.pat"
,DefineObject,usami2,usami,2p,1040,0,true

#2Pslave
,LoadImageDef,usami,"data/event/pic/usami/face.pat"
,DefineObject,usami3,usami,2p,1040,0,true

#肩書データロード（肩書内容の指定がある場合、ここに描き込んでもらえれば対応します）
,DefineObject,usami_name,usami,name,920,0,false


,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,LoadAnimationLocal,"data/actor/story_title/usami/title5.pat",1#ステージタイトル画像読み込み
,LoadAnimationLocal,"data/actor/story_name/usami/name.pat",1#敵肩書画像読み込み
,LoadAnimationLocal,"data/actor/story_name/usami/name2.pat",1#敵肩書画像読み込み
,GoSub,init				,# 初期化ルーチン呼び出し

,Function,"::battle.team[0].current.Wait_Outside()"#敵を非表示待機
,Function,"::battle.team[1].current.Wait_Outside()"#敵を非表示待機

#開始カメラ演出
,Function,"::battle.BeginCamera()"#カメラ演出、ステージインを開始
,Sleep,2,#ウェイト命令
,Function,"::graphics.FadeIn(60)"#画面がフェードイン

,Function,"::sound.PlayBGM(314)",# 指定BGM再生開始

#初期表情設定
#,ImageDef,設定対象,表情内容,表示座標補正X,表示座標補正Y
,ImageDef,usami,普1,0,0
,ImageDef,doremy2,普1,0,0
,ImageDef,usami2,普1,0,0
,ImageDef,usami3,普1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Sleep,60#スリープ命令　指定数値フレーム待ちます

#タイトルコール出現(現在未実装)
,Function,"::battle.Show_StageTitle()"#タイトルコール出現
,Sleep,150

,Function,"::battle.team[0].current.StageIn_Fall()"#実行チームが画面上から出現
,Sleep,90#スリープ命令　指定数値フレーム待ちます

,Show,usami,-1280,	#対象フェイス表示開始
#,Show,フェイス表示開始対象,表示開始時のX座標補正（ここをスタートに定位置へ移動してくる）,

,SetFocus,usami		,	#発言キャラを指定
#会話テキスト、\nで改行、末尾\でキー入力を待ちます\,吹き出し指定,表示座標補正X,表示座標補正Y
,ImageDef,usami,驚1,0,0
#0１２３４５６７８９０１２３４
あれー、現実の世界に\n戻って来ちゃった\,a,0,0,"Huh? I'm back in the Real World."
,ImageDef,usami,汗1,0,0
#0１２３４５６７８９０１２３４
私の肉体は今、お家で寝ている\n筈なんだけど\nこれってどうなっちゃうの？\,c,0,0,"My body should be sleeping at home so what's going on?"
,ClearBalloon,usami#対象の吹き出し消去

#ここでこういう演出が欲しい、という注文があったらガンガン本文に注釈文挟んでください
#可能な限り対応しますぞ

# =====
,Hide,usami,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる


,Show,doremy2,-1280,	#対象フェイス表示開始
,SetFocus,doremy2		,#発言中キャラを指定
,ImageDef,doremy2,怒1,0,0
#0１２３４５６７８９０１２３４
\R[境界|さっき]の妖怪の仕業で\n夢の世界の貴方も\n現の貴方もここにいるみたい\,a,0,0,"Because of the Gap Youkai, \nboth the Dream World and Real World Sumireko are here."
#0１２３４５６７８９０１２３４
,ImageDef,doremy2,怒1,0,0
嵌められた\nこのままでは夢と現の狭間が\n曖昧になってしまうわ\,c,0,0,"We were tricked. \nLeft this way, the gap between Dreams and Reality will become ambiguous.
,ClearBalloon,doremy2

,Hide,usami,-1280,
,Hide,doremy2,-1280,


# =====
,Hide,doremy2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,Function,"::battle.team[1].current.StageIn_Dash()"#実行チームが画面上から出現
,Sleep,90#スリープ命令　指定数値フレーム待ちます

,Function,"::battle.Show_EnemyName()",
,SetFocus,usami		,	#発言キャラを指定
,ImageDef,usami,驚1,0,0
あっ、私？\,a,0,0,"Oh, it's me?"
,ClearBalloon,usami#吹き出し消去

,Show,usami2,-1280,&	#対象フェイス表示開始
,SetFocus,usami2		,#発言中キャラを指定
,ImageDef,usami2,惑1,0,0
あ、私だ！\nどういうこと？\,a,0,0,"Ah, it's me! \nWhat's happening?"
,ClearBalloon,usami2

,SetFocus,usami		,	#発言キャラを指定
,ImageDef,usami,怒1,0,0
え？\n偽物だー！\,a,0,0,"Huh? \nIt's an imposter!"
,ClearBalloon,usami#吹き出し消去

,SetFocus,usami2		,#発言中キャラを指定
,ImageDef,usami2,汗1,0,0
#0１２３４５６７８９０１２３４
え？\n私は菫子よ\n偽物は貴方じゃない？\,a,0,0,"No? I'm Sumireko. \nAren't you the imposter?"
,ClearBalloon,usami2


,Function,"::sound.StopBGM(5000)",# BGM停止 1000=一秒掛けてフェードアウト
# =====
,Hide,usami,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる
,SetFocus,doremy2		,#発言中キャラを指定
,ImageDef,doremy2,惑1,0,0
目の前の菫子が\n夢の住人の筈ですが……\nでも、どうして……\,a,0,0,"The Sumireko in front of me should be a dream dweller but…… why……"
,ClearBalloon,doremy2

,Hide,usami2,-1280,
,Sleep,60#スリープ命令　指定数値フレーム待ちます
,Function,"::battle.team[1].current.Team_Change_Slave(null)",#スレイブに入れ替わる
,ImageDef,doremy2,驚1,0,0
,Sleep,60#スリープ命令　指定数値フレーム待ちます

,Function,"::battle.Show_EnemySlaveName()",
,Show,usami3,-1280,&	#対象フェイス表示開始
,SetFocus,usami3,	#発言中キャラを指定
,ImageDef,usami3,怒1,0,0
ふざけるな！\nマスターもお前も\n二人とも偽物よ！\,a,0,0,"Stop messing around! \nYou and the Master are both imposters!"
,ClearBalloon,usami3

,Function,"::sound.PlayBGM(354)",# 指定BGM再生開始

,SetFocus,doremy2		,#発言中キャラを指定
どうして菫子に菫子が\n完全憑依しているの？\,b,0,0,"Why is Sumireko Perfect Possessing Sumireko?"
,ClearBalloon,doremy2

# =====
,Hide,doremy2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,usami		,	#発言キャラを指定
,ImageDef,usami,汗1,0,0
えー？\n私の偽物が二人いる？\,a,0,0,"What? \nThere's two imposters?"
,ClearBalloon,usami#吹き出し消去



,SetFocus,usami3		,#発言中キャラを指定
,ImageDef,usami3,決1,0,0
偽物達がピーピーうるさい！\n本物なら最強の超能力者の筈よ\,a,0,0,"The imposters are so noisy! \nThe real one should be the strongest psychic."
,ClearBalloon,usami3

,Hide,usami3,-1280,
,Function,"::battle.team[1].current.Team_Change_Master(null)",#スレイブに入れ替わる
,Sleep,30#スリープ命令　指定数値フレーム待ちます

,SetFocus,usami2,	#発言中キャラを指定
,ImageDef,usami2,決1,0,0
偽物どもが騒ぐな！\n戦って勝った奴が本物だからね！\,b,0,0,"Shut up imposters! \nLet's fight and the one who wins is the real one!"
,ClearBalloon,usami2

,SetFocus,usami		,	#発言キャラを指定
,ImageDef,usami,決1,0,0
なんでこうなるの\n本物が負ける訳にいかない！\nまとめてかかってきな！\,b,0,0,"Why did it end up like this. \nThere's no way the real one will lose! Come at me!"
,ClearBalloon,usami#吹き出し消去


#全員フェイス撤去
,Hide,usami,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,doremy2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,usami2,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami3,-1280,


,Sleep,60

,Function,"::battle.Battle_Ready()",# 対戦開始命令

,End	#会話イベントを終了



# -------------------------------------------------------
# プレイヤー敗北
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,usami,負1,0,0
,ImageDef,doremy2,負1,0,0
,ImageDef,usami2,余1,0,0
,ImageDef,usami3,余1,0,0

,Show,usami,-1280	,&#フェイス表示開始(現在フェイスの表示がSetFocusと紐づけられているため、顔の同時出現ができないため、今後対応します
,Show,usami2,-1280	,&#フェイス表示開始
,SetFocus,usami

,SetFocus,usami2
,ImageDef,usami2,余1,0,0
私こそが、本物の菫子よ\,a,0,0,"I'm the real Sumireko."
,ClearBalloon,usami2

,Hide,usami,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,doremy2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,usami2,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami3,-1280,

,Sleep,30

,Function,"::battle.Continue()",# 対戦開始命令

,End
# -------------------------------------------------------
# 中間デモ1
# -------------------------------------------------------
:demo_1
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
#,ImageDef,設定対象,表情内容,表示座標補正X,表示座標補正Y
,ImageDef,usami,惑1,0,0
,ImageDef,doremy2,普1,0,0
,ImageDef,usami2,普1,0,0
,ImageDef,usami3,普1,0,0

,Show,usami,-1280	,&#フェイス表示開始
,Show,usami2,-1280	,&#フェイス表示開始
,SetFocus,usami2


,Show,usami3,-1280	,&#フェイス表示開始
,SetFocus,usami3


,SetFocus,usami
,ImageDef,usami,惑1,0,0
あーん\n頭がこんがらがっちゃう！\,a,0,0,"Ahh I'm so confused!"
,ClearBalloon,usami

,SetFocus,usami2
,ImageDef,usami2,驚1,0,0
中々やるわね！\nでも、偽者は許さないよ！\,a,0,0,"Not too bad! But I won't forgive an imposter!"
,ClearBalloon,usami2

,SetFocus,usami3
,ImageDef,usami3,余1,0,0
偽者は一人ずつ片付けてやる！\,a,0,0,"Let's take care of imposters one by one!"
,ClearBalloon,usami3

,SetFocus,usami
,ImageDef,usami,怒1,0,0
何だって？\n偽者かどうか確かめてみな！\,a,0,0,"What did you say? Prove that I'm an imposter!"
,ClearBalloon,usami

,Hide,usami,-1280, &
,Hide,usami2,-1280, &
,Hide,usami3,-1280,

,Sleep,60

#,Show,usami2,-1280	,&#フェイス表示開始

,SetFocus,usami2,&
,SetFocus,usami,
,ImageDef,usami,決1,0,0
,ImageDef,usami2,決2,0,0
私こそが最強のエスパーだ！\n偽者は消え失せろ！\,b,0,0


,SetFocus,usami2,
私達こそが最強のエスパーだ！\n偽者は消え失せろ！\,b,0,0,"I'm the strongest psychic! Get lost imposters!\nWe're the strongest psychics! Get lost imposter!"
,ClearBalloon,usami
,ClearBalloon,usami2

#全員フェイス撤去
,Hide,usami,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,doremy2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,usami2,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami3,-1280,

,Sleep,30

,Function,"::battle.Battle_Restart_Demo()",# 対戦再開命令

,End
# -------------------------------------------------------
# プレイヤー勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

,Function,"::sound.StopBGM(1500);"
,Sleep,60#スリープ命令　指定数値フレーム待ちます
,Function,"::battle.Go_Ending();"

,End

# -------------------------------------------------------
