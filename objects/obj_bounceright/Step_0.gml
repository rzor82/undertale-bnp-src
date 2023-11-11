btime -= 1
if (con > 0 && con < 8 && global.interact == 0)
{
    global.lastpce = (((((("Vent (" + room_get_name(room)) + ", ") + string(x)) + ", ") + string(y)) + ")")
    image_blend = c_lime
}
if (con == 1)
{
    with (obj_mainchara)
        scr_moveideal(3)
}
if (con == 2)
{
    if (scr_murderlv() < 2 && global.flag[221] == 0)
        special_spin = irandom(10)
    global.facing = myfacing
    obj_mainchara.image_speed = 0
    with (obj_mainchara)
        depth = 14
    with (obj_caterpillar_parent)
        depth = 14
    con = 3
    alarm[4] = 10
    if (room == room_fire_walkandbranch2 || room == room_fire_rpuzzle)
        alarm[4] = 5
    if (special_spin == 7)
    {
        with (instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_spin))
            spin_time = (other.alarm[4] * 2)
    }
}
if (con == 4)
{
    with (obj_mainchara)
        depth = 14
    with (obj_caterpillar_parent)
        depth = 14
    fakegrav = 0.95
    fakevspeed = 10
    global.facing = myfacing
    obj_mainchara.direction = mydirection
    obj_mainchara.speed = 6
    if (room == room_fire_rpuzzle)
        obj_mainchara.speed = 4
    con = 5
    faceoff = -2
    alarm[4] = 20
    if (room == room_fire_walkandbranch2)
    {
        alarm[4] = 10
        fakevspeed = 10
        fakegrav = 1.8
    }
    if (special_spin == 7 && (!instance_exists(obj_mainchara_spin)))
    {
        with (instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_spin))
            spin_time = other.alarm[4]
    }
    with (obj_mainchara_spin)
        mode = 1
    snd_play(snd_vaporized)
}
if (con == 5)
{
    b = instance_create(x, y, obj_bouncersteam)
    b.speed = 7
    b.direction = ((90 + mydirection) / 2)
    if (global.flag[327] == 1)
    {
        if instance_exists(obj_caterpillar_parent)
            b.depth = (obj_caterpillar_parent.depth + 1)
    }
    if (mydirection < 300 && mydirection > 200)
    {
        b.direction = 180
        b.speed = 2
    }
    faceoff += 1
    if (room == room_fire_walkandbranch2)
        faceoff += 1
    if (floor((faceoff / 4)) >= 1)
    {
        global.facing += 1
        faceoff = 0
    }
    if (global.facing > 3)
        global.facing = 0
    fakevspeed -= fakegrav
    obj_mainchara.y -= fakevspeed
}
if (con == 6)
{
    if instance_exists(obj_rtile)
        obj_rtile.faketime = 4
    obj_mainchara.speed = 0
    obj_mainchara.y = floor(obj_mainchara.y)
    con = 7
    alarm[4] = 1
}
if (con == 8)
{
    with (obj_mainchara)
        scr_depth()
    with (obj_caterpillar_parent)
        scr_depth()
    if (mydirection == 180 || mydirection == 0)
        obj_mainchara.y = (y - 15)
    obj_bouncetilecontoller.bounce = 2
    alarm[1] = 20
    if (global.flag[327] == 1)
    {
        if instance_exists(obj_caterpillar_parent)
            obj_caterpillar_parent.snapto = 1
    }
    global.phasing = 0
    global.interact = 0
    con = 0
}
if (goldshift == 1 && gold == 1)
    event_user(2)
