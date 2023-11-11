myinteract = 3
global.msc = 0
global.msg[0] = "* (Toriel's small chair.^1)&* (Its seat seems to have&  been worn down by use.)/%%"
if (global.flag[7] == 1)
    global.msg[0] = "* (Toriel's small chair.^1)&* (The seat is still warm.)/%%"
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
