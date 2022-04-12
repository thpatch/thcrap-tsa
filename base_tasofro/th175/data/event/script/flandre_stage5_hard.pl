#============================
# フランドール ステージ5　VS饕餮　石油の海
#============================
# 初期化
,Include,"data/event/script/lib/init.pl"

# キャラ割り当て
,PLAYER,フラン,惑
,ENEMY,饕餮,汗

# イベントシーン開始
:main
,SqFunction,"::bgm.play(""talk_oil"");"
#フラン右移動、カメラ右移動
,SqFunction,"::scene.rootenv.obj.player.cut1();"
,Sleep,120

#ステージロゴ表示
#,SqFunction,"::object_pool.rootenv.Spawn_StageTitle();"
#,Sleep,240
#,Sleep,360

@饕餮
"……一つ掘っては金のためー
二つ掘っては国のためー@"

"三つ掘っては憎しみのため……@"

#饕餮背後を見る
,SqFunction,"::scene.rootenv.obj.enemy.cut1();"

"誰だ？@"

#フラン笑う
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_smile"");"

@フラン,L
"見ーつけた@"

"お前が饕餮って奴だね？@"

#饕餮プレイヤーに向きなおる
,SqFunction,"::scene.rootenv.obj.enemy.cut2();"

#饕餮肩で笑う
,SqFunction,"::scene.rootenv.obj.enemy.select_motion(""event_laugh"");"

@饕餮,R
"クックック
……お前は誰だ？@"

#フラン決めポーズ
,SqFunction,"::scene.rootenv.obj.player.cut2();"

@フラン
"私はフランドール・スカーレット
饕餮を破壊する為にやってきた@"

"もう一度問う
お前が饕餮だね？@"

@饕餮
"クックック@"

#饕餮威嚇
,SqFunction,"::scene.rootenv.obj.enemy.cut3();"

,フェイスIN_R

@饕餮顔
"私の名前を知っていて
見て判らんのか@"

@饕餮顔,,饕餮_普
"我こそが剛欲同盟長
饕餮尤魔だ@"

,フェイスIN_L

@フラン顔
"なんだ、脆そうな奴じゃん@"

@フラン顔,,フラン_嬉
"でも、何でも吸収するんだって？@"

#饕餮素に戻る
,SqFunction,"::scene.rootenv.obj.enemy.select_motion(""event_stand"");"

@饕餮顔,,饕餮_余
"クックック
よく知っているな@"

"と言うことはただの餌では
なさそうだな@"

@フラン顔,,フラン_余
"ただ、破壊しがたい物を
破壊したいだけ@"

,SqFunction,"::bgm.play(""toutetu1"");"

@フラン顔,,フラン_他
"誰もが破壊できなかったお前を
破壊したいだけだ！@"

,プレイヤ決めポーズ

"さあ行くよ！@"

,フェイスOUT

,SqFunction,"::object_pool.rootenv.Spawn_Effect(320,180,""fight"");"
,Sleep,120

#フラン操作受付開始
,SqFunction,"::scene.rootenv.obj.player.enable_move();"

#敵動作開始
,SqFunction,"::scene.rootenv.obj.enemy.enable_move();"

,Exit
