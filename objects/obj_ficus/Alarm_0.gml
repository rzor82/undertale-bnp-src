myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room != room_fire_brattycattyshop)
{
    global.msg[0] = scr_gettext("obj_ficus_72")
    if (room == room_fire_hotelrestaurant)
    {
        if (x > 160 && x < 260)
            global.msg[0] = scr_gettext("obj_ficus_81")
    }
}
if (room == room_fire_brattycattyshop)
{
    if (global.flag[159] > 0)
        global.msg[0] = "* (It's a potted plant.^1)&* (It looks like the plants&  from the hotel...)/%%"
    else
        global.msg[0] = scr_gettext("obj_ficus_72")
}
if (scr_murderlv() >= 12)
    global.msg[0] = scr_gettext("obj_ficus_75")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
