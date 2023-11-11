scr_depth()
if (con == 1)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "* (Just a conveniently-shaped&  snow poff.)/%%"
    dl = instance_create(0, 0, obj_dialoguer)
    if (sans == 0)
        con = 99
    else
        con = 2
}
if (con == 2 && (!instance_exists(dl)))
{
    obj_sans_room.direction = 180
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 1
    global.msg[0] = "* hey^1, \\E2hands off&  the merch kid./%%"
    con = 99
    dl = instance_create(0, 0, obj_dialoguer)
}
if (con == 99 && (!instance_exists(dl)))
{
    if (sans == 1)
        obj_sans_room.direction = 270
    global.interact = 0
    con = 0
}
