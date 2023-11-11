x = (obj_heart.x + 8)
y = (obj_heart.y + 8)
if (con == 0)
{
    if (obj_mirrorb.image_alpha <= 0)
    {
        if (obj_uborder.y == global.idealborder[2])
        {
            if special
            {
                with (obj_borderparent)
                    instaborder = 1
            }
            con = 1
        }
    }
    else
        obj_mirrorb.image_alpha -= 0.05
}
else if (con == 1)
{
    with (obj_mirrorb)
        global.monsterdef[myself] = originaldef
    with (obj_target)
        fade = 1
    for (var i = 0; i < 4; i++)
        border[i] = global.idealborder[i]
    var old = global.idealborder[2]
    var prev = global.border
    global.border = 0
    SCR_BORDERSETUP()
    global.idealborder[2] = (old - offset)
    global.mytarget = 3
    target = scr_attack()
    target.image_alpha = 0
    target.lock = 1
    depth = (target.depth - 10)
    with (obj_targetchoiceshoe)
        lock = 1
    with (obj_targetchoicefist)
        lock = 1
    with (obj_targetchoice)
        lock = 1
    with (obj_ztarget)
        lock = 1
    with (obj_xtarget)
        lock = 1
    global.border = prev
    for (i = 0; i < 4; i++)
        global.idealborder[i] = border[i]
    global.autotarget = 1
    con = 2
}
else if (global.hurtanim[3] > 0)
{
    with (obj_mirrorb)
        global.monsterdef[myself] = prevdef
    if (global.hurtanim[3] != 5)
    {
        hitx = (x + wd)
        hity = (y + ht)
        if special
        {
            slashside = c_borderwidth(1) > c_borderheight(1)
            with (obj_slice)
            {
                if (!other.slashside)
                {
                    x -= (sprite_height / 2)
                    y += sprite_width
                    image_angle = 90
                }
            }
        }
        dmg = max((global.damage / 10), global.monsteratk[obj_mirrorb.myself])
        alarm[1] = (global.damagetimer / 2)
        if (alarm[1] < 7 || murder)
            alarm[1] = 7
    }
    global.hurtanim[3] = 0
    global.autotarget = 0
    con = 3
}
else if (con == 3 && alarm[1] == -1 && (!instance_exists(obj_mirror_delayedattack)))
{
    if (--times > 0)
    {
        alarm[0] = max(1, (rate - global.firingrate))
        con = -1
    }
    else
    {
        with (obj_mirrorbg)
        {
            new_blend = 16777215
            blend_speed = 0.05
            event_user(0)
        }
        with (obj_mirrorb)
            didshift = other.rem_shiftstate
        event_user(0)
        with (obj_target)
            fade = 1
        with (obj_borderparent)
            instaborder = 0
        borderalpha = 0
        con = 4
    }
}
else if (con == 4)
{
    global.border = 0
    with (obj_borderparent)
        instaborder = 0
    obj_mirrorb.image_alpha += 0.05
    if (obj_mirrorb.image_alpha >= 1)
    {
        with (target)
            instance_destroy()
        global.turntimer = 1
        con = -1
        instance_destroy()
    }
}
else if (con == 5 && (!instance_exists(obj_shaker)))
    con = 3
if (con >= 0)
    global.turntimer = 999
if (con == 2)
{
    with (target)
    {
        if (image_alpha < 1)
            image_alpha += 0.05
    }
}
else if (con == 3)
{
    with (target)
    {
        if (image_alpha > 0)
            image_alpha -= 0.05
    }
}
