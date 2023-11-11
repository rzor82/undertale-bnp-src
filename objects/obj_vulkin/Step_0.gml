if (global.mnfight == 3)
    attacked = 0
if (alarm[5] > 0)
{
    if (global.monster[0] == true)
    {
        if (global.monsterinstance[0].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[0].alarm[5]
    }
    if (global.monster[1] == true)
    {
        if (global.monsterinstance[1].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[1].alarm[5]
    }
    if (global.monster[2] == true)
    {
        if (global.monsterinstance[2].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[2].alarm[5]
    }
}
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 110
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
    shudder = 8
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
        mypart1.pause = 0
        global.myfight = 0
        global.mnfight = 1
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 4))
        {
            mypart1.hurtanim = 1
            if (altchance == 3)
                mypart1.face = 3313
            else
                mypart1.face = 412
        }
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
    global.hurtanim[myself] = 0
    scr_process_soon()
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        pop = scr_monstersum()
        global.turntimer = 160
        global.firingrate = 7
        if (pop == 3)
            global.firingrate *= 2.4
        if (pop == 2)
            global.firingrate *= 1.7
        num = 0
        if (whatiheard == 1)
            num = 1
        if (global.hp < global.maxhp)
            num = 1
        if (criticize == 0)
        {
            if (num == 0 && (!instance_exists(obj_vulkincloudbul)))
            {
                global.firingrate = 9
                if (encourage > 0)
                    global.firingrate -= 4
                if (pop == 3)
                    global.firingrate *= 2.2
                if (pop == 2)
                    global.firingrate *= 1.7
                gen = instance_create((((global.idealborder[0] + global.idealborder[1]) / 2) - 30), (global.idealborder[2] + 2), obj_vulkincloudbul)
            }
            else
            {
                global.turntimer = 160
                if (encourage > 0)
                    global.firingrate -= 2
                gen = instance_create(x, y, obj_lavafiregen)
                gen.dmg = global.monsteratk[myself]
            }
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_vulkin_538")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_vulkin_539")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_vulkin_540")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_vulkin_541")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_vulkin_542")
        if (hug > 0)
            global.msg[0] = scr_gettext("obj_vulkin_544")
        if (encourage > 0)
            global.msg[0] = scr_gettext("obj_vulkin_545")
        if (criticize == 1)
            global.msg[0] = scr_gettext("obj_vulkin_546")
        if (criticize > 1 || global.monsterhp[myself] < (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_vulkin_547")
        if (specialmessage == 1)
        {
            global.msg[0] = scr_gettext("obj_vulkin_551")
            specialmessage = 0
        }
        attacked = 1
    }
    if (criticize > 0 && pop == 1)
    {
        global.turntimer = -1
        global.mnfight = 3
    }
    if (criticize > 0 && scr_monstersum() >= 2)
    {
        if (instance_exists(global.monsterinstance[0]) && instance_exists(global.monsterinstance[1]))
        {
            if (global.monsterinstance[0] == 341 && global.monsterinstance[1] == 341)
            {
                if (global.monsterinstance[0].criticize > 0 && global.monsterinstance[1].criticize > 0)
                {
                    global.turntimer = -1
                    if (global.mnfight == 2)
                        global.mnfight = 3
                }
            }
        }
    }
    whatiheard = -1
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
                global.msg[0] = scr_gettext("obj_vulkin_599")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_vulkin_608")
                if (criticize == 1)
                    global.msg[0] = scr_gettext("obj_vulkin_609")
                encourage = 0
                criticize += 1
                hug = 0
                mercymod = -200
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                mercymod = 100
                encourage += 1
                criticize = 0
                hug = 0
                global.msg[0] = scr_gettext("obj_vulkin_627")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                mercymod = 100
                encourage = 0
                criticize = 0
                hug += 1
                global.msg[0] = scr_gettext("obj_vulkin_640")
                if (global.df >= 5)
                {
                    global.df -= 5
                    global.msg[1] = scr_gettext("obj_vulkin_644")
                }
                else
                    global.msg[1] = scr_gettext("obj_vulkin_647")
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
            instance_destroy()
    }
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == 0)
{
    script_execute(scr_mercystandard)
    if (mercy < 0)
        instance_destroy()
}
