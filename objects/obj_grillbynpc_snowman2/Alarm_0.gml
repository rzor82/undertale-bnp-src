myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* I want a hobby..^1.&* One that's really going &  to make me melt./"
global.msg[1] = "* I've always wanted&  to be a puddle.../%%"
if (global.flag[7] == 1)
    global.msg[0] = "* Fashion^1! Scarves^1!&* Layers!^1!&* Carrots!!!/%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
