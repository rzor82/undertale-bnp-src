myinteract = 3
global.msc = 612
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_water_blookhouse)
{
    if (scr_murderlv() >= 10 || (!instance_exists(obj_napstablookdate)))
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_napstafridge_75")
    }
    if (global.flag[93] >= 2)
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    else if instance_exists(obj_napstablookdate)
    {
        if (obj_napstablookdate.con < 11)
            obj_napstablookdate.con = 11
    }
}
if (room == room_fire_lab1)
{
    global.msc = 258
    if (global.plot < 126 && scr_murderlv() < 12)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_napstafridge_100")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
object_index.talkedto += 1
