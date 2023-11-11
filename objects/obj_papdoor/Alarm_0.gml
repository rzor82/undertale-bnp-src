myinteract = 3
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_ruins18)
{
    global.msc = 0
    if (global.flag[116] == 0)
        global.msg[0] = "* (The gate is locked.^1)&* (Maybe if you found&  the key...)/%%"
    else if (global.flag[116] == 1)
    {
        global.msg[0] = "* (The gate is locked.^1)&* (Using the key you found^1,&  you unlock the gate.)/%%"
        global.flag[116] = 2
    }
    else if (global.flag[116] == 2)
    {
        global.msg[0] = "* (You open the gate.)/%%"
        global.flag[116] = 3
    }
    else if (global.flag[116] == 3)
        global.msg[0] = "* (The gate is unlocked.)/%%"
}
else
    global.msc = 559
mydialoguer = instance_create(0, 0, obj_dialoguer)
