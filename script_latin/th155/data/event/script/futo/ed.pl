#========================================================================
#	布都：エンディング
#========================================================================


,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# 初期化ルーチン呼び出し



# 命蓮寺の絵
# 画像を表示
,ImageFile,ed,"data/event/pic/bg/bg_myourenji.png",190,5

,Sleep,2,#ウェイト命令
,Function,"::graphics.FadeIn(180)"#画面がフェードイン
,Function,"::sound.PlayBGM(506)",# 指定BGM再生開始

#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Sleep,150#スリープ命令　指定数値フレーム待ちます
#0１２３４５６７８９０１２３４５６７８９０１

──命蓮寺。@
いまここに、最強の二人、いや三人が誕生した。\
\n 

,ImageFile,ed,"data/event/pic/futo/ed1.png",190,5
,Sleep,50#スリープ命令　指定数値フレーム待ちます

一輪「さーて、決戦まで技を磨きましょ」@
布都「そうじゃな。@
　　　そこの入道にも頑張って貰うぞ」@
一輪「雲山はいつも頑張ってるよねー」\

雲山「……」@
一輪「なる程、戦闘中\R[布都|あんた]に切り替わると\n　　　自分も意識を失うって」@
布都「なんじゃと？」\
一輪「多分、私がいないと\n　　　自我を保てないのかも」@
布都「難儀じゃなぁ」\

#画像切り替え ドレミー戦を思い出しているが、余りよく覚えていない二人
,ImageFile,ed,"data/event/pic/futo/ed2.png",190,5
\n 
,Sleep,50#スリープ命令　指定数値フレーム待ちます

一輪「ところで、あの時さ。@
　　　本当に覚えていない？」@
布都「夢の世界の話か。@
　　　目が覚めたら殆ど忘れてしまったよ」\
一輪「完全憑依中に同じ夢を見るなんて、@
　　　ただの偶然じゃないと思うけど……」@
布都「なんだか凄く怖い夢を見た\n　　　くらいしか覚えていないが」\
一輪「夢の世界と完全憑依。@
　　　何か繋がりがあるのかも……」\
一輪「ま、難しい事はいっか。@
　　　取り敢えずは\n　　　あの最凶の二人と戦ってみましょう」\
布都「そうじゃな。@
　　　折角、太子様に強くなったって\n　　　認められたんだからな」\

#0１２３４５６７８９０１２３４５６７８９０１
自称最強の二人は\nこの後疫病神貧乏神コンビに挑んだ。@
その結果、二人は同士討ちをさせられ\nあっさりと仲違いした。\

結局、何も学んでいなかった二人に、@
神子と白蓮は大層失望したようである。\

,Function,"::sound.StopBGM(1000);" 
,Function,"::graphics.FadeOut(60);"
,Sleep,120#スリープ命令　指定数値フレーム待ちます

,Function,"::ed.Hide();"
,Function,"::graphics.FadeIn(5);"
,Function,"::ed.BeginStaffroll();"

,End
