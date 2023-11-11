if (con == 1)
{
    global.flag[17] = 2
    obj_mainchara.uncan = 1
    marker = scr_marker(0, 0, spr_maincharad_pmirr)
    if instance_exists(obj_mirrorreflection)
    {
        with (obj_mirrorreflection)
        {
            other.marker.depth = depth
            other.marker.x = x
            other.marker.y = y
            visible = false
        }
    }
    else
    {
        marker.x = obj_mainchara.x
        marker.y = (obj_mainchara.y - dist)
        with (marker)
            scr_depth()
    }
    triggerx = obj_mainchara.x
    triggery = obj_mainchara.y
    global.flag[297] = triggerx
    global.flag[298] = triggery
    con = 1.1
}
else if (con == 1.1 && (obj_mainchara.y - triggery) >= dist)
    con = 2
else if (con == 2)
{
    with (marker)
        scr_depth()
    if (obj_mainchara.moving && prevy < obj_mainchara.y)
    {
        with (marker)
        {
            move_towards_point(obj_mainchara.x, obj_mainchara.y, (speed + 1))
            image_speed = (speed / 4)
        }
        prevy = obj_mainchara.y
    }
    else if (global.interact != 1)
    {
        global.interact = 1
        marker.speed = 0
        con = 3
    }
    with (marker)
    {
        if ((y + speed) >= obj_mainchara.y || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara, 1, 0))
        {
            other.collided = 1
            other.con = 3
            speed = 0
        }
    }
}
else if (con == 3)
{
    with (marker)
    {
        image_speed = 0
        image_index = 0
    }
    global.mercy = 0
    global.solobattle = 1
    global.battlegroup = 38
    global.specialbattle = 1
    if collided
        instance_create(0, 0, obj_battler)
    else
    {
        global.facing = 2
        instance_create(0, 0, obj_battleblcon)
        with (obj_soulvision)
            event_user(1)
    }
    global.flag[17] = 0
    scr_tempsave()
    con = 4
}
else if (con == 4 && global.flag[365] > 0)
{
    with (obj_readable_room1)
        cantalk = 1
    obj_mainchara.uncan = 0
    obj_mainchara.x = triggerx
    obj_mainchara.y = triggery
    __view_set(0, 0, round(((triggerx - (__view_get(2, 0) / 2)) + 10)))
    __view_set(1, 0, round(((triggery - (__view_get(3, 0) / 2)) + 10)))
    global.specialbattle = 0
    global.interact = 1
    global.facing = 2
    scr_tempsave()
    with (marker)
        instance_destroy()
    if (global.flag[365] > 1)
    {
        var msg = 0
        if (killcount == 0)
        {
            global.msg[msg++] = "* (Pushing yourself to do&  the unthinkable...)/"
            global.msg[msg++] = "* (You feel your body go numb.)/"
        }
        else
            global.msg[msg++] = "* (Ridding yourself of the&  burden your conscience left&  you with...)/"
        global.msg[msg++] = "\\W* (You realized the power&  of \\ORAGE\\W.)/"
        global.msg[msg++] = "* (Your ATK grows as your HP&  decreases.)/%%"
        with (scr_marker(triggerx, triggery, spr_fileerased_crack))
        {
            image_blend = c_black
            x -= (sprite_width / 2)
            y -= (sprite_height / 2)
            scr_depth()
            depth += (sprite_height * 10)
        }
    }
    else
    {
        global.msg[0] = "* (Your mind completely clear^1,&  you feel a sudden epiphany...)/"
        global.msg[1] = "\\W* (You realized the power&  of \\LSHIELD\\W.)/"
        global.msg[2] = "* (You can now take one free&  hit per battle.)/%%"
        with (obj_mirrorreflection)
            visible = true
    }
    alarm[4] = 45
    con = 5
}
else if (con == 5)
    global.interact = 1
else if (con == 6)
{
    scr_regulartext()
    con = 7
}
else if (con == 7 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    instance_destroy()
}
