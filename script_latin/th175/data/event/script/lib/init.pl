#============================
# 会話シーン初期化
#============================
#,FontFace,"KH Dot Dougenzaka 16 Regular",#"KHドット道玄坂16"
,FontFace,"touhou_biolinum",# Thcrap replacement font
#,FontSize,16
,FontSize,18
#,FontWeight,900
,FontSpacing,0,2
,BalloonColor,255,232,199
,RubyFontFace,"misaki_gothic"
,RubyFontSize,8
,TextColor,0,0,0

,SetFocusOffset,0,0,-15,10
,SetFocusBrightness,100,60

,Include,"./balloon.pl"
,Include,"./face_image.pl.csv"
,Include,"./util.pl"

,DefaultBalloon,LF2

# define object
,Object,"obj.player",0,0,false
,Show,"obj.player",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.player"", ""player"", 0, -45);"
,EnableFocusStyle,"obj.player",false
,SelectBalloon,"obj.player",C

,Object,"obj.player1",0,0,false
,Show,"obj.player1",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.player1"", ""player1"", 0, -45);"
,EnableFocusStyle,"obj.player1",false
,SelectBalloon,"obj.player1",C

,Object,"obj.player2",0,0,false
,Show,"obj.player2",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.player2"", ""player2"", 0, -45);"
,EnableFocusStyle,"obj.player2",false
,SelectBalloon,"obj.player2",C

,Object,"obj.enemy",0,0,false
,Show,"obj.enemy",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.enemy"", ""enemy"", 0, -45);"
,EnableFocusStyle,"obj.enemy",false
,SelectBalloon,"obj.enemy",C

,Object,"obj.enemy1",0,0,false
,Show,"obj.enemy1",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.enemy1"", ""enemy1"", 0, -45);"
,EnableFocusStyle,"obj.enemy1",false
,SelectBalloon,"obj.enemy1",C

,Object,"obj.enemy2",0,0,false
,Show,"obj.enemy2",0
,SqFunction,"::scene.contents[""talk""].snap(""obj.enemy2"", ""enemy2"", 0, -45);"
,EnableFocusStyle,"obj.enemy2",false
,SelectBalloon,"obj.enemy2",C

,NewObject,face_r3,0,0,true
,NewObject,face_r2,0,0,true
,NewObject,face_r,0,0,true

,NewObject,face_l3,0,0,false
,NewObject,face_l2,0,0,false
,NewObject,face_l,0,0,false

,SelectBalloon,face_r3,LF2
,SelectBalloon,face_r2,LF2
,SelectBalloon,face_r,LF2

,SelectBalloon,face_l3,LF2
,SelectBalloon,face_l2,LF2
,SelectBalloon,face_l,LF2
