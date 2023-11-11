if (con == 0)
{
    if ((!skip) && control_check(0))
    {
        control_clear(0)
        skip = true
    }
    if (siner >= 1.5707963267949)
    {
        __view_set(2, 0, orig_w)
        __view_set(3, 0, orig_h)
        if skip
            con = 2
        else
        {
            alarm[2] = 150
            siner_inc = 0.1
            waiting = 1
            siner = 0
            con = 1
        }
    }
    else
    {
        __view_set(2, 0, (w + ((orig_w - w) * sin(siner))))
        __view_set(3, 0, (h + ((orig_h - h) * sin(siner))))
        siner += siner_inc
    }
}
else if (con == 1 && waiting)
{
    if (timed_out && do_dialog)
    {
        if (dialog == noone)
        {
            global.msc = 0
            global.typer = 5
            global.facechoice = 0
            global.msg[0] = "* (Hey^1! Get up!^1)/%%"
            dialog = instance_create(0, 0, obj_dialoguer)
        }
        else if (!instance_exists(dialog))
        {
            alarm[4] = 20
            waiting = 0
        }
    }
    else if control_check(0)
    {
        control_clear(0)
        alarm[4] = 20
        alarm[2] = -1
        timed_out = 0
        waiting = 0
    }
}
else if (con == 2)
{
    image_speed = 0.0666666666666667
    if (floor(image_index) == 3)
        image_speed = 0.0333333333333333
    if (image_index > 4)
        image_speed = 0.366666666666667
    if (floor(image_index) == 11)
    {
        image_speed = 0
        alarm[4] = 20
        con = 3
    }
}
else if (con == 4)
{
    image_speed = 0.25
    if (floor(image_index) == 14)
    {
        image_speed = 0
        alarm[4] = 20
        con = 5
    }
}
else if (con == 6)
{
    image_speed = -0.25
    con = 7
}
else if (con == 7)
{
    if (floor(image_index) == 11)
    {
        image_index = 15
        image_speed = 0.25
    }
    else if floor(image_index == 17)
    {
        image_speed = 0
        alarm[4] = 20
        con = 8
    }
}
else if (con == 9)
{
    image_speed = -0.25
    if (floor(image_index) == 14)
    {
        image_index = 11
        image_speed = 0
        alarm[4] = 30
        con = 10
    }
}
else if (con == 11)
{
    image_index = 18
    alarm[4] = 20
    con = 12
}
else if (con == 13)
{
    image_index = 19
    alarm[4] = 20
    con = 14
}
else if (con == 15)
{
    visible = false
    with (obj_mainchara)
    {
        visible = true
        cutscene = false
    }
    alarm[4] = 10
    con = 16
}
else if (con == 17)
{
    global.flag[17] = 0
    global.flag[19] = 1
    if (room == room_water_trashzone1)
        global.flag[19] = 2
    global.interact = 0
    instance_destroy()
    con = 18
}
if (con < 15)
{
    __view_set(0, 0, (centerx - (__view_get(2, 0) / 2)))
    __view_set(1, 0, (centery - (__view_get(3, 0) / 2)))
}
