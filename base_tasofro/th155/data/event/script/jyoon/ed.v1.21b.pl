#========================================================================
#	女苑：エンディング
#========================================================================


,Return
# =========================================================

# 本編
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# 初期化ルーチン呼び出し



#
#　博麗神社。
#
# 画像を表示
,ImageFile,ed,"data/event/pic/bg/bg_hakurei.png",48,48

,Sleep,2,#ウェイト命令
,Function,"::graphics.FadeIn(180)"#画面がフェードイン
,Function,"::sound.PlayBGM(506)",# 指定BGM再生開始

#Xフレームの待機処理（sleepと異なりスキップ操作で飛ばせない）
,Sleep,150#スリープ命令　指定数値フレーム待ちます

──博麗神社。@,"──Hakurei Shrine"
いつも貧しい神社。@,"A meager shrine as ever. "
しかし訪れる者の心は豊かである。\,"But those who visit are rich in spirit."
\n 

#　紫と話をしている女苑
#　苦労話をしている女苑だが、少し誇らしげ。紫は良かった良かった、といった感じ。
,ImageFile,ed,"data/event/pic/jyoon/ed1.png",48,48
,Sleep,50#スリープ命令　指定数値フレーム待ちます

#0１２３４５６７８９０１２３４５６７８９０１
女苑「暴走していた夢の住人。\n　　　全て捕まえたわよー！」@,"The crazy dream dwellers. \nI caught all of them!",Jyoon
紫　「ご苦労様、よく頑張ったわね」\,"Good job, you did well.",Yukari
女苑「本当に大変でしたよ。\n　　　何なんですか、あの究極暴走天人はー」@,"It was really hard. \nAnd what's up with that extremely wild celestial-",Jyoon
紫　「天人？\n　　　もしかして、天人にも遭ったの？」\,"Celestial? \nYou mean, you also met a Celestial?",Yukari
女苑「遭ったも何も、\n　　　そいつが一番ぶっ壊れてたのよ。\n　　　空の果てで何もかもが滅茶苦茶だった。\n　　　まあ、夢の世界の住人だけど」\,"More like it was the craziest one. \nIt was chaos to the end of the sky. \nWell, she was a Dream World dweller.",Jyoon
紫　「ふーん、其奴が出てきたのは\n　　　偶然ですけどね。災難だったわねぇ。\n　　　でも、もう暴走していた住人は\n　　　全て捕まえたから貴方は自由よ」\,"Hmm… Though it's a coincidence that one appeared. \nHow unfortunate. \nBut now that the wild dwellers have been caught, you're free.",Yukari

女苑「……でも、少しだけ\n　　　お寺で修業を続けようかな」@,"……but, maybe I'll keep meditating at the temple for a bit.",Jyoon
紫　「あら、どういう風の吹き回し？\n　　　あれだけ逃げたがっていたじゃない」\,"Oh? What's gotten into you? \nYou wanted to run away before.",Yukari
女苑「何だか、\R[克己的|ストイック]に生きるのも\n　　　新鮮で楽しいかなと思って」@,"Well, it seems kind of new and exciting to live stoically.",Jyoon
紫　「あらあら、命蓮寺の僧侶も喜ぶと思うわ。\n　　　あれ？　誰か来客よ？」\,"Oh my, the Myouren Temple monk will be happy. \nHm? Is that a visitor?",Yukari

#　天子と紫苑が一緒に現れる。何故か仲よさそう
#　女恩はそれを見て驚いている
,ImageFile,ed,"data/event/pic/jyoon/ed2.png",48,48
\n 
,Sleep,50#スリープ命令　指定数値フレーム待ちます

#0１２３４５６７８９０１２３４５６７８９０１
女苑「姉さん\T[!?]\n　　　それにお前は！」@,"Shion!? \nAnd you!",Jyoon
天子「あー？　あんた、どっかで会ったっけ？」@,"Huh? \nHave we met before?",Tenshi
女苑「そうか、前に遭ったのは夢の住人か」\,"Oh right, last time I met the dream dweller.",Jyoon

紫苑「紹介するわ\n　　　こいつが私の妹の、女苑。疫病神よ」@,"I'll introduce her. \nShe's my little sister, Jyoon. \nThe Pestilence god.",Shion
天子「へー、貧乏神と疫病神が姉妹とは\n　　　滑稽だねぇ。まさに最凶最悪の姉妹だ」\,"Hm, it's ludicrous the Poverty God and Pestilence God are sisters. \nNo doubt cursed and evil sisters.",Tenshi

紫苑「でしょー？笑い事じゃあないんだけど」@,"Right? \nIt's no laughing matter though.",Shion
天子「良いねえ、気に入ったよ。\n　　　その、人を不幸にする能力が、\n　　　天人の私にも効くのか試してみたいもんだ」\,"That's nice. I like it. \nI want to test if that ability to make people \nunhappy will work on a celestial like me.",Tenshi

紫苑「余裕ですねぇ。\n　　　それも天人のなせる業ですかね」@,"You're relaxed. \nIs that the work of a Celestial too?",Shion
女苑「姉さん達、いつの間に仲良くなってるのよ」\,"Shion, when did you become friends?",Jyoon

#0１２３４５６７８９０１２３４５６７８９０１
紫苑「だって、この天人様、凄いんだよ。\n　　　私が近寄っても嫌がらないし、\n　　　一緒に居ても天賦の幸運が尽きないの。@,"This Celestial is amazing. \nWhen I get close, she doesn't run away. \nWhen we're together, the gift of luck is endless.",Shion
　　　この人と組めば私にも幸運が訪れるかも」\,"If I'm with her, maybe I'll become lucky too.",Shion

女苑「はあ……。\n　　　姉さんの選択はいつも失敗じゃないの」@,"Sigh… \nShion, your choices are always bad.",Jyoon
紫苑「今回は違うと思うよ！」\,"This time is different!",Shion

紫苑「だって天人様だもの、戦って判ったわ。\n　　　この人のパワーは桁外れだって！\n　　　このお方の幸運は無尽蔵だって！」\,"She's a Celestial. I knew after fighting. \nHer power is extraordinary! \nHer luck is endless!",Shion

天子「その通りだ。\n　　　その気になれば地上はすぐに掌握出来る。\n　　　私と組んで、最初の戯れとして、\n　　　地上の人間を全て不幸にしてやろう！」\,"That's exactly right. \nIf I wanted to, I could easily control Earth. \nWork with me and for our first prank, let's make all humans on Earth unhappy!",Tenshi

#0１２３４５６７８９０１２３４５６７８９０１
紫苑は天子の破天荒ぶりに惹かれたようだ。@,"Shion seemed charmed by Tenshi's craziness."
意外や意外、天子は紫苑が取り憑いても\n不幸になることは無かった。@,"And unexpectedly, Tenshi never became unfortunate even with Shion haunting her."
貧乏神の能力は常識人にしか及ばないようだ。\,"The Poverty God's abilities only seem to work on the people have common sence."

しばらくの間、二人の脅威が幻想郷を襲った為、\n異変を起こした最凶最悪の二人は、\n天人と貧乏神だと勘違いされた。\,"After a while, as the two attacked the Gensokyo with threats, \nthe cursed and evil duo that caused the incident,\nwas mistaken as a Celestial and Poverty God."

結果、幻想郷中から嫌われ、爪弾きにされたが、\nそれを非常識にも、不幸だと思わなかっただけ、\nかもしれない。\,"Consequently, they were hated and shunned from the Gensokyo. \nAnd perhaps thoughtlessly, they didn't think it was misfortune."

#0１２３４５６７８９０１２３４５６７８９０１
一方、女苑はお寺で修業を続けた。\n最初は新鮮だった克己的な生き方だったが、\n次第に飽きてきて、堕落していった。\,"On the other hand, Jyoon continued training at the temple. \nAt first the stoic way of life was fresh for her, \nbut over time she grew bored and fell astray."

精神的な修業では満足は得られないと、\n最後は逃げ出してしまった。@,"In the end, she ran away saying she couldn't be satisfied with spiritual training."
今は人間の振りをして近づき、\n富を巻き上げる毎日が続いている様である。\,"Now she disguises as a human \napproaching others to accumulate her wealth every day."

ただ少しは成長していた。@,"But she has grown a little."
富を失っても不幸ではないと感じる\n人間をターゲットにする様になったのである。\,"She started to target humans that will not feel misfortune after losing their wealth."





,Sleep,60
,Hide,"message"
,ImageFile,back,"data/event/pic/bg/black.png",0,0,60
,Sleep,60

#0１２３４５６７８９０１２３４５６７８９０１
#不幸とは、心が作り出す邪神である。\n富はその邪神を倒す武器であり、\n夢は邪神から身を守る防具である
,ImageFileLocal,ed2,"data/event/pic/jyoon/ed3.png",0,0,60
,Sleep,60
\n
,Hide,ed
,Function,"::ed.Hide();"
,WaitInput
,Hide,ed2
,Sleep,30

#夢は邪神から身を守る防具である
,ImageFileLocal,ed2,"data/event/pic/jyoon/ed4.png",0,0
,WaitInput
,Hide,ed2
,Sleep,30#スリープ命令　指定数値フレーム待ちます

#疫病神も貧乏神も、貴方のすぐ近くに居るかも知れない\n
,ImageFileLocal,ed2,"data/event/pic/jyoon/ed5.png",0,0
,WaitInput
,Function,"::sound.StopBGM(1000);" 
,Hide,ed2
,Sleep,30#スリープ命令　指定数値フレーム待ちます


,Function,"::ed.BeginStaffroll();"
#疫病神も貧乏神も、貴方のすぐ近くに居るかも知れない\n
,ImageFileLocal,ed2,"data/event/pic/jyoon/ed6.png",0,0
,Sleep,420#スリープ命令　指定数値フレーム待ちます
,Hide,ed2
,Sleep,30#スリープ命令　指定数値フレーム待ちます

,Hide,back

#でも案ずることはない\n夢の暴走に打ち勝った貴方は、不幸になる道理なんてないのだから
,ImageFileLocal,ed2,"data/event/pic/jyoon/ed7.png",0,0
,Sleep,450#スリープ命令　指定数値フレーム待ちます
#,Function,"::graphics.FadeOut(60)"#画面がフェードアウト
#,Sleep,60#スリープ命令　指定数値フレーム待ちます
,End

