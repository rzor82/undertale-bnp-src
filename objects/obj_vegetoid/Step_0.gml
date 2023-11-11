if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3) && sprite_index != spr_vegetoidhurt_shiny && sprite_index != spr_vegetoidhurt)
{
    if (image_yscale < 0.9)
        scalevalue = 0.004
    if (image_yscale > 1.05)
        scalevalue = -0.004
    image_yscale += scalevalue
    y -= (sety * scalevalue)
}
else if (sprite_index != spr_vegetoidhurt_shiny && sprite_index != spr_vegetoidhurt)
{
    if (image_yscale < 0.98)
        scalevalue = 0.005
    if (image_yscale > 1.05)
        scalevalue = -0.005
    image_yscale += scalevalue
    y -= (sety * scalevalue)
}
else
    image_yscale = 1
if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
if (global.myfight == 0 && global.mnfight == 0)
    eat = 0
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 75
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if control_check_pressed(0)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
    shudder = 16
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
    global.monsterhp[myself] -= takedamage
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] >= 1)
    {
        global.hurtanim[myself] = 0
        sprite_index = spr_vegetoid
        if (altchance == 7)
            sprite_index = spr_vegetoid_shiny
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
        {
            image_speed = 0.08
            sprite_index = spr_vegetoid_lowhp
            if (altchance == 7)
                sprite_index = spr_vegetoid_lowhp_shiny
        }
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
    }
    else
    {
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
        killed = 1
        instance_destroy()
    }
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    scr_process_soon()
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        global.turntimer = 110
        global.firingrate = 4
        if (mycommand < 50)
        {
            global.firingrate = 6
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) > true)
                global.firingrate = 10
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = 16
            gen = instance_create(0, 0, obj_1sidegen)
            if (eat == 1)
                gen.specgreen = 1
            gen.bullettype = 6
        }
        if (mycommand >= 50)
        {
            global.firingrate = 18
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
                global.firingrate = 30
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = 42
            gen = instance_create(0, 0, obj_1sidegen)
            if (eat == 1)
                gen.specgreen = 1
            gen.bullettype = 5
        }
        gen.myself = myself
        gen.dmg = global.monsteratk[myself]
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_vegetoid_383")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_vegetoid_384")
        if (mycommand >= 70)
            global.msg[0] = scr_gettext("obj_vegetoid_385")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_vegetoid_386")
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
            global.msg[0] = scr_gettext("obj_vegetoid_387")
        attacked = 1
    }
}
if (whatiheard == 1 && instance_exists(OBJ_WRITER) == 0)
{
    script_execute(scr_mercystandard)
    if (mercy < 8)
    {
        killed = 0
        instance_destroy()
    }
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_vegetoid_414")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 3)
            {
                global.myfight = 0
                global.mnfight = 1
                scr_process_soon()
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                script_execute(scr_mercystandard)
                global.msg[0] = scr_gettext("obj_vegetoid_428")
                if (mercy < 8)
                {
                    global.msg[0] = scr_gettext("obj_vegetoid_431")
                    instance_create(0, 0, obj_foodsound)
                    script_execute(scr_recover, 5)
                    sprite_index = spr_vegetoidhurt
                    if (altchance == 7)
                        sprite_index = spr_vegetoidhurt_shiny
                }
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                eat = 1
                global.msc = 0
                global.msg[0] = scr_gettext("obj_vegetoid_445")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            global.heard = 1
        }
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == 0 || (global.mercyuse == 2 && global.mytarget == myself))
    {
        script_execute(scr_mercystandard)
        if (mercy < 0)
        {
            global.flag[134] = 1
            instance_destroy()
        }
    }
}
