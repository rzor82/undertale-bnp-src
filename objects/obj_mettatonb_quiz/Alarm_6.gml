gg = floor(random(3))
mycommand = round(random(100))
qno = obj_questionasker.q
global.msc = 0
if (qno == 0)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_255")
if (qno == 1)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_258")
if (qno == 2)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_262")
if (qno == 3)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_266")
if (qno == 4)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_270")
if (qno == 5)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_274")
if (qno == 6)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_278")
if (qno == 7)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_282")
if (qno == 8)
    global.msg[0] = scr_gettext("obj_mettatonb_quiz_286")
global.msg[1] = scr_gettext("obj_mettatonb_quiz_294")
global.typer = 51
sxx = (obj_mettatonb_body.x - 320)
if (sxx < 0)
    sxx = 0
scr_blcon(sxx, (obj_mettatonb_body.y - 120), 1)
global.border = 0
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)