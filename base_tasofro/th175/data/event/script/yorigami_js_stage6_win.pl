#============================
# 女苑 ステージ６ 勝利
#============================
# 初期化
,Include,"data/event/script/lib/init.pl"
# ステージクリア時のスコア関連session_dataの更新
,SqFunction,"::lib.session_data.score_stageclear(::scene.rootenv.obj.player.life);"

# キャラ割り当て
,PLAYER,女苑,怒
,PLAYER2,紫苑,怒
,ENEMY,饕餮,嬉

,SqFunction,"::scene.contents[""talk""].snap(""obj.player"", ""player"", 0, -45);",# 吹き出し位置調整
,SqFunction,"::scene.contents[""talk""].snap(""obj.player2"", ""player2"", 10, -15);",# 吹き出し位置調整

# イベントシーン開始
:main

#初期設定
,SqFunction,"::scene.rootenv.obj.player.cut1();"
,Sleep,60

,フェイスIN_L

@女苑顔
"交渉決裂ね@"

@女苑顔,,女苑_余
"石油を全部譲ってくれたら
許してやろうと思ったが@"


,フェイスIN_R

@饕餮顔
"クックック
お前のその強欲さ、悪くないな@"

@饕餮顔,,饕餮_余
"それに呼応して
石油達も大騒ぎしているよ@"

@女苑顔,,紫苑_惑
"石油達が大騒ぎ……？@"

"可哀想に@"

@女苑顔,,紫苑_余
"石油をペットみたいに
思ってるのね@"

,SqFunction,"::bgm.fadeout();"

@饕餮顔,,饕餮_普
"クックック
知らないようだな@"

@饕餮顔,,饕餮_余
"この黒い水は、な
本当は石油では無い@"

,エネミ－決めポーズ

"その貧しい瞳を凝らせ！
真実が見えてくるぞ@"

#フェードアウト
,SqFunction,"::scene.rootenv.obj.player.cut2();"

,フェイスOUT

,Sleep,60
,SqFunction,"::lib.event_control.goto_next_stage();"

,Exit
