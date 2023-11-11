myinteract = 3
if (room == room_fire2)
    global.msc = (625 + (2 * havewater))
else
    global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
