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
        mypart1 = instance_create(x, y, part1)
        mypart2 = instance_create(x, y, part2)
        global.hurtanim[myself] = 0
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
    }
    else
    {
        if spec
        {
            global.mercy = 1
            with (object_index)
            {
                mercymod = -999999
                nospare = 1
            }
        }
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
        if instance_exists(obj_jerry)
        {
            if (obj_jerry.ditch == 0)
                pop -= 1
        }
        global.turntimer = 130
        global.firingrate = 17
        if (pop == 3)
            global.firingrate *= 2.4
        if (pop == 2)
            global.firingrate *= 1.7
        if (mycommand >= 0 && mycommand <= 50)
        {
            gen = instance_create(x, y, obj_4sidegen)
            gen.bullettype = 1
        }
        else
        {
            global.firingrate += 8
            gen = instance_create(x, y, obj_4sidegen)
            gen.bullettype = 0
        }
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_chilldrake_493")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_chilldrake_494")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_chilldrake_495")
        if (mycommand >= 70)
            global.msg[0] = scr_gettext("obj_chilldrake_496")
        if (global.flag[57] == 2)
        {
            if (mycommand >= 90)
                global.msg[0] = scr_gettext("obj_chilldrake_497")
        }
        else
            global.smg[0] = "* Chilldrake is thinking&  of mean insults."
        if (mercymod == 80)
            global.msg[0] = scr_gettext("obj_chilldrake_498")
        if (mercymod == 200)
            global.msg[0] = scr_gettext("obj_chilldrake_499")
        if (mercymod == -35)
            global.msg[0] = scr_gettext("obj_chilldrake_500")
        if (mercymod < -10)
            global.msg[0] = scr_gettext("obj_chilldrake_501")
        if (global.monsterhp[myself] < 20)
            global.msg[0] = scr_gettext("obj_chilldrake_502")
        attacked = 1
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
                if (global.flag[57] == 2)
                    global.msg[0] = scr_gettext("obj_chilldrake_518")
                else
                    global.msg[0] = "* CHILLDRAKE - ATK 12 DEF 7&* Rebels against everything!!&* Afraid of the light./^"
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                gg = floor(random(6))
                if (gg <= 6)
                    global.msg[0] = scr_gettext("obj_chilldrake_527")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
                mercymod = -10
                if (gg == 7)
                    mercymod = 222
            }
            if (whatiheard == 3)
            {
                if (joketold == 0)
                    mercymod = -4
                else
                    mercymod = 80
                global.msc = 0
                if (joketold == 0)
                    global.msg[0] = scr_gettext("obj_chilldrake_539")
                if (joketold == 1)
                    global.msg[0] = scr_gettext("obj_chilldrake_540")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if (scr_monstersum() == 1)
                    global.msg[0] = scr_gettext("obj_chilldrake_548")
                if (scr_monstersum() > 1)
                {
                    global.msg[0] = scr_gettext("obj_chilldrake_550")
                    global.msg[1] = scr_gettext("obj_chilldrake_551")
                    scr_withallmonster(0, 20)
                    whatiheard = 19
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
