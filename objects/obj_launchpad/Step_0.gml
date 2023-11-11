if instance_exists(spin)
    depth = (spin.depth + 1)
else
    scr_depth()
if (myinteract == 1)
{
    myinteract = 2
    if (global.flag[392] == 0 && instance_exists(obj_gold_minigame))
    {
        global.interact = 1
        global.facing = 1
        with (obj_gold_minigame)
        {
            myinteract = 2
            con = 1
        }
        myinteract = 0
    }
    else if (con == 0)
    {
        global.phasing = 1
        solid = 0
        con = 1
    }
}
if (con == 1)
{
    with (obj_mainchara)
        scr_getideal((other.x + ((other.sprite_width - sprite_width) / 2)), (other.y - 15))
    alarm[4] = 5
    con = 2
}
else if (con == 2)
{
    with (obj_mainchara)
    {
        lock_depth = 1
        depth = (other.depth - 1)
        scr_moveideal(3)
    }
}
else if (con == 3)
{
    floory = (((y + sprite_width) - (obj_mainchara.bbox_top - obj_mainchara.y)) + 1)
    spin = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_spin)
    spin.mode = 0
    con = 4
}
else if (con == 4)
{
    if ((control_check(0) && (!locked)) || force_launch)
    {
        minx = __view_get(0, 0)
        maxx = (minx + __view_get(2, 0))
        midx = ((minx + maxx) / 2)
        wrap = instance_create(spin.x, spin.y, obj_mainchara_spin)
        wrap.follow = 0
        wrap.mode = 0
        snd_play(snd_grab)
        __view_set(9, 0, -4)
        obj_mainchara.cutscene = true
        obj_mainchara.vspeed = launch_velocity
        spin.image_speed = 5
        con = 5
    }
    else if (spin.image_speed < 5)
        spin.image_speed += 0.05
}
else if (con == 5)
{
    if drill
        spin.image_speed = 5
    else if (spin.image_speed < 1)
        spin.image_speed = 1
    else if (spin.image_speed > 1)
        spin.image_speed -= 0.1
    if (__view_get(1, 0) < ceiling)
    {
        if (obj_mainchara.vspeed < descend_velocity)
            obj_mainchara.vspeed += acceleration
        else
            con = 6
    }
}
else if (con == 6 && obj_mainchara.y > (floory + 60))
{
    with (wrap)
        instance_destroy()
    with (spin)
        instance_destroy()
    __view_set(9, 0, 1584)
    maxx -= obj_mainchara.sprite_width
    if (obj_mainchara.x < minx)
        obj_mainchara.x = minx
    if (obj_mainchara.x > maxx)
        obj_mainchara.x = maxx
    with (obj_mainchara)
    {
        cutscene = false
        lock_depth = 0
        visible = true
        vspeed = 0
    }
    global.interact = locked
    global.phasing = 0
    force_launch = 0
    myinteract = 0
    locked = false
    solid = 1
    drill = 0
    con = 0
}
if (con == 5 || con == 6)
{
    wrap.image_index = spin.image_index
    with (obj_mainchara)
    {
        var yy = round(((y - (__view_get(3, 0) / 2)) + 10))
        var capy = (room_height - __view_get(3, 0))
        __view_set(1, 0, min(yy, capy))
        if obj_time.left
            x -= 2
        if obj_time.right
            x += 2
        if ((x + (sprite_width / 2)) < other.minx)
            x += __view_get(2, 0)
        if ((x + (sprite_width / 2)) > other.maxx)
            x -= __view_get(2, 0)
        if (x < other.midx)
            other.wrap.x = (x + __view_get(2, 0))
        if (x > other.midx)
            other.wrap.x = (x - __view_get(2, 0))
        if ((!other.locked) && obj_time.down)
        {
            with (other)
            {
                spin.image_speed = 5
                drill = 1
                con = 6
            }
            vspeed = other.drill_velocity
        }
        other.wrap.y = y
    }
}
if (con > 0)
    global.interact = 1
