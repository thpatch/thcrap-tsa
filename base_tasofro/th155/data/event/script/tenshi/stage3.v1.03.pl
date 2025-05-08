#========================================================================
#	天子：ステージ3　試作　
#	場所：
#　 スレイブ：針妙丸　敵チーム：針妙丸　董子
#	ステージタイトル
#	   「」
#========================================================================
:init
,SetDefaultBalloon,0,#メッセージに噴出し指定をつけない場合のデフォルト噴出しを設定

,Function,"::battle.Enable_win_demo(false)"#勝利ポーズ演出無し

#全てのsinmyoumaru3をsinmyoumaruに変更すると実行できます

#フェイス画像参照の定義
#1Pmaster
,LoadImageDef,tenshi,"data/event/pic/tenshi/face.pat"#名前,ソースファイル名
,DefineObject,tenshi,tenshi,1p,240,0,false#名前,グループ名,x,y,反転

#1Pslave
,LoadImageDef,sinmyoumaru,"data/event/pic/sinmyoumaru/face.pat"#名前,ソースファイル名
,DefineObject,sinmyoumaru2,sinmyoumaru,1p,240,0,false#名前,グループ名,x,y,反転

#2Pmaster
,LoadImageDef,sinmyoumaru,"data/event/pic/sinmyoumaru/face.pat"
,DefineObject,sinmyoumaru,sinmyoumaru,2p,1040,0,true

#2Pslave
,LoadImageDef,usami,"data/event/pic/usami/face.pat"
,DefineObject,usami2,usami,2p,1040,0,true

#肩書データロード（肩書内容の指定がある場合、ここに描き込んでもらえれば対応します）
,DefineObject,sinmyoumaru_name,sinmyoumaru,name,920,0,false


,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,LoadAnimation,"data/actor/story_title/tenshi/title3.pat"#ステージタイトル画像読み込み
,LoadAnimation,"data/actor/story_name/sinmyoumaru/name.pat"#敵肩書画像読み込み
,LoadAnimation,"data/actor/story_name/usami/name2.pat"#敵肩書画像読み込み
,GoSub,init				,# 初期化ルーチン呼び出し

,Function,"::battle.team[1].current.Wait_Outside()"
,Function,"::battle.Enable_BossKo_StandUp()"#敵が爆発しない+会話デモで起き上がりを許可

#開始カメラ演出
,Function,"::battle.BeginCamera()"#カメラ演出、ステージインを開始
,Sleep,2,#ウェイト命令
,Function,"::graphics.FadeIn(60)"#画面がフェードイン

,Function,"::sound.PlayBGM(405)",# 指定BGM再生開始

#初期表情設定
#,ImageDef,設定対象,表情内容,表示座標補正X,表示座標補正Y
,ImageDef,tenshi,汗1,0,0
,ImageDef,sinmyoumaru2,汗1,0,0
,ImageDef,sinmyoumaru,嬉1,0,0
,ImageDef,usami2,嬉1,0,0


#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Sleep,60#スリープ命令　指定数値フレーム待ちます

#タイトルコール出現(現在未実装)
,Function,"::battle.Show_StageTitle()"#タイトルコール出現
,Sleep,150

,Show,tenshi,-1280,	#対象フェイス表示開始
,SetFocus,tenshi	,
,ImageDef,tenshi,汗1,0,0
えー、だって私は偉いんだよ？\n私に怒るなんて信じられない\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,Show,sinmyoumaru2,-1280,	#対象フェイス表示開始
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,汗1,0,0
えーっと、まあ\n不良天人と呼ばれている\n理由は判った\,a,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,tenshi	,
,ImageDef,tenshi,驚1,0,0
あれ？\n見てよ、アレは？\,a,0,0
,ClearBalloon,tenshi


#針妙Ｂが登場

,Function,"::battle.team[1].current.StageIn_Dash()"#実行チームが画面上から出現
,Sleep,90#スリープ命令　指定数値フレーム待ちます

,Function,"::battle.Show_EnemyName()",#敵ネームを表示
,Show,sinmyoumaru,-1280,	#対象フェイス表示開始
,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,嬉1,0,0
最強の二人を目指すよー！\,a,0,0
,ClearBalloon,sinmyoumaru

,Hide,sinmyoumaru,-1280,
,Function,"::battle.team[1].current.Team_Change_Slave(null)",#スレイブに入れ替わる
,Sleep,30#スリープ命令　指定数値フレーム待ちます

,Function,"::battle.Show_EnemySlaveName()",#敵ネームを表示
,Show,usami2,-1280,	#対象フェイス表示開始
,SetFocus,usami2	,
,ImageDef,usami2,嬉1,0,0
#0１２３４５６７８９０１２３４
念願の小人を捕まえたわー\nこのコンビで\n一世風靡しちゃいましょー\,a,0,0
,ClearBalloon,usami2

,Hide,usami2,-1280,
,Function,"::battle.team[1].current.Team_Change_Slave(null)",#スレイブに入れ替わる

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,余1,0,0
#0１２３４５６７８９０１２３４
ふっふっふ\n外来人との相性が\nこんなに良いと思わなかったー！\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,驚1,0,0
なんだと？\n誰だお前！\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,驚1,0,0
えっ？\nお前こそ誰だ！\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,tenshi	,
,ImageDef,tenshi,驚2,0,0
小人がもう一人\t[!?]\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,sinmyoumaru,-1280, &
,Function,"::battle.team[1].current.Team_Change_Slave(null)",		# マスターに入れ替わる

,SetFocus,usami2	,
,ImageDef,usami2,怒1,0,0
#0１２３４５６７８９０１２３４
あれ？　小人が二人・・・\nもしかしてドッペルゲンガー？\,a,0,0
,ClearBalloon,usami2

# =====
,Hide,usami2,-1280, &
,Function,"::battle.team[1].current.Team_Change_Master(null)",		# マスターに入れ替わる

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,Function,"::sound.StopBGM(1000)",# BGM停止 1000=一秒掛けてフェードアウト

,Sleep,60

,Function,"::sound.PlayBGM(312)",# 指定BGM再生開始

,SetFocus,sinmyoumaru	,&
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,怒1,0,0
,ImageDef,sinmyoumaru,怒1,0,0
#0１２３４５６７８９０１２３４
偽物が現れたぞー\nやっつけろ！\,b,0,0,
#,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru	,
偽物はそっちだー！\n負けるもんか\,b,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる


#全員フェイス撤去
,Hide,tenshi,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,sinmyoumaru2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,sinmyoumaru,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami2,-1280,


,Sleep,60

,Function,"::battle.Battle_Ready()",# 対戦開始命令

,End	#会話イベントを終了



# -------------------------------------------------------
# プレイヤー敗北
# -------------------------------------------------------
:lose
,GoSub,init				,# 初期化ルーチン呼び出し

#初期表情設定
,ImageDef,tenshi,負1,0,0
,ImageDef,sinmyoumaru2,負1,0,0
,ImageDef,sinmyoumaru,嬉1,0,0
,ImageDef,usami2,余1,0,0

,Show,tenshi,-1280	,&#フェイス表示開始(現在フェイスの表示がSetFocusと紐づけられているため、顔の同時出現ができないため、今後対応します
,Show,sinmyoumaru,-1280	,&#フェイス表示開始

,SetFocus,tenshi	,
,SetFocus,sinmyoumaru	,
自分こそが少名針妙丸だ！\n多分ね\,b,0,0
,ClearBalloon,sinmyoumaru

,Hide,tenshi,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,sinmyoumaru2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,sinmyoumaru,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami2,-1280,

,Sleep,30

,Function,"::battle.Continue()",# 対戦開始命令

,End

# -------------------------------------------------------
# プレイヤー勝利
# -------------------------------------------------------
:win
,GoSub,init				,# 初期化ルーチン呼び出し

,Function,"if(::battle.team[0].current == ::battle.team[0].master )::battle.team[0].current.Team_Change_Slave(null)",

#初期表情設定
,ImageDef,tenshi,汗1,0,0
,ImageDef,sinmyoumaru2,決1,0,0
,ImageDef,sinmyoumaru,負1,0,0
,ImageDef,usami2,負1,0,0

#,Show,sinmyoumaru,-1280	,&#フェイス表示開始
#,Show,sinmyoumaru2,-1280	,&#フェイス表示開始

# =====

,Show,sinmyoumaru,-1280	,#フェイス表示開始
,Show,sinmyoumaru2,-1280	,#フェイス表示開始
,SetFocus,sinmyoumaru	,
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,嬉1,0,0
#0１２３４５６７８９０１２３４
よし勝った！\n自分こそが少名針妙丸だ！\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
#0１２３４５６７８９０１２３４
おかしい、こんな筈では……\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,tenshi	,
,ImageDef,tenshi,汗1,0,0
なんで針妙丸が二人……\,a,0,0
,ClearBalloon,tenshi

,Hide,sinmyoumaru,-1280, &
,Function,"::battle.team[1].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,SetFocus,usami2	,
#0１２３４５６７８９０１２３４
どっちかがドッペルゲンガーか\n夢の世界の針妙丸か\,a,0,0
私も同じ目に遭ったから\nよく判るわ\n本人でも混乱するの\,a,0,0
,ClearBalloon,usami2

,Hide,usami2,-1280, &
,Function,"::battle.team[1].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,負1,0,0
自分は本物よー\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,驚1,0,0
#0１２３４５６７８９０１２３４
偽物が何を言う\n自分が本物よ！\,a,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# マスターに入れ替わる

,SetFocus,tenshi	,
,ImageDef,tenshi,嬉1,0,0
ま、どっちでも良いか\n続けるよ！　相棒！\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# スレイブに入れ替わる

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,嬉1,0,0
あいあいさー！\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,負1,0,0
#0１２３４５６７８９０１２３４
アレー？\nその役、さっきまで自分が\nやっていたような……\,c,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,余1,0,0
えっへっへ\nそんな訳無いねぇ、偽物さんよ\,a,0,0
,ClearBalloon,sinmyoumaru2

,Function,"::sound.StopBGM(1500);"
,Function,"::battle.Go_NextStage();"

,Hide,tenshi,-1280,&	#　&でつなぐと「処理を終えたら次へ進む」系の命令を同時に実行可能
,Hide,sinmyoumaru2,-1280,&　#これは四人分のフェイス画像を同時に1280ドット外へ向けて撤収させています
,Hide,sinmyoumaru,-1280,&　#　&でつながない場合、一人ずつフェイス画像が撤収していきます
,Hide,usami2,-1280,

,Sleep,60

,End

# -------------------------------------------------------
