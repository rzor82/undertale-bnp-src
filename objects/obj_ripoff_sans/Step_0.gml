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
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] >= 1)
    {
        global.hurtanim[myself] = 0
        mypart1.pause = 0
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
        pop = scr_monstersum()
        attacked = 1
    }
    if (mercymod == 999999)
    {
        global.turntimer = -1
        global.mnfight = 3
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
                with (obj_monsterparent)
                    totalmercy += 1
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_sans_486")
                global.msg[1] = scr_gettext("obj_ripoff_sans_487")
                if (totalmercy >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_sans_490")
                    obj_ripoff_papyrus.saved = 1
                    global.mnfight = 5
                    if (obj_ripoff_papyrus.mercyno == 0)
                    {
                        global.msg[1] = scr_gettext("obj_ripoff_sans_496")
                        global.msg[2] = scr_gettext("obj_ripoff_sans_497")
                    }
                }
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
                with (obj_monsterparent)
                    totalmercy += 1
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_sans_516")
                global.msg[1] = scr_gettext("obj_ripoff_sans_517")
                if (totalmercy >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_sans_520")
                    obj_ripoff_papyrus.saved = 1
                    global.mnfight = 5
                    if (obj_ripoff_papyrus.mercyno == 0)
                    {
                        global.msg[1] = scr_gettext("obj_ripoff_sans_526")
                        global.msg[2] = scr_gettext("obj_ripoff_sans_527")
                    }
                }
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                with (obj_monsterparent)
                    totalmercy += 1
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_sans_542")
                global.msg[1] = scr_gettext("obj_ripoff_sans_543")
                if (totalmercy >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_sans_546")
                    obj_ripoff_papyrus.saved = 1
                    global.mnfight = 5
                    if (obj_ripoff_papyrus.mercyno == 0)
                    {
                        global.msg[1] = scr_gettext("obj_ripoff_sans_552")
                        global.msg[2] = scr_gettext("obj_ripoff_sans_553")
                    }
                }
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                with (obj_monsterparent)
                    totalmercy += 1
                mercyno += 1
                if (global.flag[58] == 0)
                    global.msg[0] = scr_gettext("obj_ripoff_sans_571")
                if (global.flag[58] == 1)
                    global.msg[0] = scr_gettext("obj_ripoff_sans_576")
                global.msg[1] = scr_gettext("obj_ripoff_sans_579")
                if (totalmercy >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_sans_583")
                    obj_ripoff_papyrus.saved = 1
                    global.mnfight = 5
                    if (obj_ripoff_papyrus.mercyno == 0)
                    {
                        global.msg[1] = scr_gettext("obj_ripoff_sans_589")
                        global.msg[2] = scr_gettext("obj_ripoff_sans_590")
                    }
                }
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
