#============================
# 魔理沙 ステージ３
#============================
# 初期化
,Include,"data/event/script/lib/init.pl"

,ステージ見出し,"「水没した最深歓楽街」"

# キャラ割り当て
,PLAYER,魔理沙,普
,ENEMY,勇儀,普

# イベントシーン開始
:main

#ステージBGMの再生開始
,SqFunction,"::bgm.play(""talk_town"");"

,Sleep,150

#魔理沙登場
,SqFunction,"::scene.rootenv.obj.player.cut1();"
,Sleep,30

#魔理沙しかめっつら
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_face"");"

@魔理沙
"臭いな……@"

"異変の匂いではないけど……@"

#魔理沙真顔
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_stand"");"

"この匂い、硫黄の匂いか？@"

,Sleep,15

#------------------------
#魔理沙操作受付開始
#,SqFunction,"::scene.rootenv.obj.player.enable_move_temp();"

#魔理沙一定距離右へ進むのを監視
#,SqFunction,"::scene.rootenv.obj.player.check1();"

#操作受付を停止
#,SqFunction,"::scene.rootenv.obj.player.cut3();"

#*手動途中操作パートを削除
#------------------------

#右へ歩きつつ背景が明るく変化
,SqFunction,"::scene.rootenv.obj.player.demo_trial1_cut3();"

#ステージロゴ表示
,SqFunction,"::object_pool.rootenv.Spawn_StageTitle();"

,Sleep,210

#温泉発見メッセージ
#,SqFunction,"::scene.rootenv.obj.player.cut4();"

#,Sleep,120

#魔理沙見渡し
#,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_look"");"

"やっぱり温泉だ！@"

"何だか賑やかで楽しそうな場所だ！@"

#勇儀遭遇デモ開始
,SqFunction,"::scene.rootenv.obj.player.cut5();"

@勇儀,R
"この匂いは硫黄の匂いではないぞ
魔理沙殿@"

,エネミー紹介カットイン
,Sleep,30

@魔理沙,L
"おっと、勇儀か@"

@勇儀
"地上の奴はよく勘違いするが
温泉の匂いは硫黄ではない@"

@魔理沙
"そうなのか？@"

@勇儀
"この匂いは怨霊の怨みの匂いだ@"

"硫黄は無臭なんだよ
覚えておきな@"

"ところで、何の用で来たんだ？@"

#魔理沙真剣顔
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_face"");"

@魔理沙
"実はこの匂いとは別の匂いのする
臭い黒い水の事なんだが……@"

#かくかくしかじか
,SqFunction,"::scene.rootenv.obj.player.cut2();"

@勇儀
"……なる程、地上に湧き出ていると@"

"ふっふっふ、その黒い水は
ここらにはないが正体は判るぞ@"

@魔理沙
"ほう@"

@勇儀
"その水は旧地獄の中でも
アンタッチャブルなゾーンにある@"

"呪いに呪われた液体だ@"

"使い方を間違えなければ
富をもたらすとも言うが……@"

"それを手にする者には
必ず禍いが起こると言われている@"

"人間の世界では何て言ったかな@"

"石のあぶらと書いて……
石油、と言ったような@"

#魔理沙思い出そうとする
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_face"");"

@魔理沙
"石油？
聞いた事があるな@"

@勇儀
"ただ、何故地上に湧いているのかは
見当も付かんな@"

#魔理沙通常
,SqFunction,"::scene.rootenv.obj.player.select_motion(""event_stand"");"

@魔理沙
"そうか、邪魔したな
温泉に入っていきたいが……@"

"その石油を調査する方が先だ@"

@勇儀
"ちょっと待ちな
石油の調査に行くのか？@"

#魔理沙構え
,SqFunction,"::scene.rootenv.obj.player.cut6();"

,フェイスIN_L

,SqFunction,"::bgm.play(""yuugi1"");"

@魔理沙顔,,魔理沙_余

"勿論そのつもりだ
温泉はその後だ！@"

#勇儀一杯
,SqFunction,"::scene.rootenv.obj.enemy.cut8();"

,フェイスIN_R

@勇儀顔
"やめておけ
市街地より深くまで潜るのは危険だ@"

,エネミ－決めポーズ

"お前の身だけではなく
旧地獄にとってもな！@"

,フェイスOUT

,SqFunction,"::object_pool.rootenv.Spawn_Effect(320,180,""fight"");"
,Sleep,150

#魔理沙操作受付開始
,SqFunction,"::scene.rootenv.obj.player.enable_move();"

#勇儀動作開始
,SqFunction,"::scene.rootenv.obj.enemy.enable_move();"

,Exit
