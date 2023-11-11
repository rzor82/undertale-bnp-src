if (myinteract == 1)
{
    if (scr_murderlv() >= 2 || global.flag[221] == 1)
        myinteract = 4
    else if (global.facing == 0)
        myinteract = 0
    else
        myinteract = 2
}
else if (myinteract == 2)
{
    obj_mainchara.visible = false
    obj_mainchara.cutscene = true
    if (!instance_exists(sit))
    {
        sit = instance_create(x, y, obj_mainchara_sit)
        sit.benched = 1
        sit.x += (sprite_width - sit.sprite_width)
        if (room == room_tundra_inn_1f)
            sit.x += ((sprite_width - sit.sprite_width) - 30)
        sit.y += (2 * (sprite_height / 3))
        if (room == room_tundra_dock || room == room_water_dock || room == room_fire_dock)
            sit.y += ((sprite_width - sit.sprite_width) - 53)
        sit.depth = (depth - 1)
        sit.flip = left
    }
    if (global.facing == 2)
        global.facing = 0
    myinteract = 3
    buffer = 1
}
else if (myinteract == 4)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (The bench won't hold the&  weight of your sins.)/%%"
    else
        global.msg[0] = "* (You may not rest now^1,&  there are monsters nearby.)/%%"
    instance_create(0, 0, obj_dialoguer)
    myinteract = 5
}
else if (myinteract == 5 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    myinteract = 0
}
if (myinteract == 3)
{
    var moving = (obj_time.up || obj_time.down || obj_time.left || obj_time.right)
    if (buffer && (!moving))
        buffer = 0
    else if ((!buffer) && moving)
    {
        if obj_time.down
        {
            global.facing = 0
            obj_mainchara.x = sit.x
            obj_mainchara.y = (sit.y - 8)
            if left
                obj_mainchara.x -= 10
            else
                obj_mainchara.x += 10
        }
        obj_mainchara.visible = true
        obj_mainchara.cutscene = false
        sit.benched = 0
        with (sit)
            instance_destroy()
        global.interact = 0
        myinteract = 0
    }
}
if (myinteract > 0)
    global.interact = 1
