myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "\\W* That skeleton over there&  just told me how to dodge&  \"\\Oorange attacks\\W.\"/"
global.msg[1] = "\\W* What did he say...?&* Something like.../"
global.msg[2] = "\\W* \"Traffic lights have three&  lights on them.\"/"
global.msg[3] = "\\W* \"The third light^1, the \\Ggreen\\W&  one^1, means \\GGO\\W.\"/"
global.msg[4] = "\\W* \"The first light^1, the \\Rred\\W&  one^1, means \\RSTOP\\W.\"/"
global.msg[5] = "\\W* \"The second light^1, the \\Yyellow\\W&  one^1, means \\YYIELD\\W.\"/"
global.msg[6] = "\\W* \"In order to dodge an&  \\Oorange\\W attack^1, you must&  be moving.\"/"
global.msg[7] = "\\W* \"So^1, just think of it&  this way...\"/"
global.msg[8] = "\\W* \"\\RRed\\W and \\Yyellow\\W lights together&  make \\Oorange\\W.\"/"
global.msg[9] = "\\W* \"Then you obey the rule&  of the leftover \\Ggreen\\W&  light^1, which means \\GGO\\W.\"/"
global.msg[10] = "\\W* \"Easy^1, huh?\"/"
global.msg[11] = "\\W* \"Just think of a \\Rred\\W and \\Yyellow\\W&  traffic light which is&  actually \\Lgreen\\W.\"/"
global.msg[12] = "\\W* Yeah.../"
global.msg[13] = "\\W* Then he started talking about&  \\Bp\\Wl\\Ba\\Wi\\Bd\\W attacks.../%%"
if (scr_murderlv() >= 2)
{
    global.msg[0] = "\\W* Usually, there's a skeleton&  there that'll talk about&  \\Rc\\Oo\\Yl\\Go\\Br\\Pe\\pd\\W attacks sometimes./"
    global.msg[1] = "\\W* I wonder where he went...?/%%"
}
if (scr_enemynpc1() == 1)
    global.msg[0] = "\\W* \\BP\\Wl\\Ba\\Wi\\Bd\\W attacks..^1.&* Ridiculous./%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
