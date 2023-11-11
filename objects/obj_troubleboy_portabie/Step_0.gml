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
        alarm[6] = 2
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
if (!instance_exists(obj_troubleboy_hitch))
{
    if (!defdrop)
    {
        caster_set_pitch(global.batmusic, 0.9)
        global.monsterdef[myself] -= 8
        defdrop = 1
    }
    if defdrop
    {
        caster_set_pitch(global.batmusic, overtime)
        if (overtime > 0.9)
            overtime -= 0.01
        else
        {
            overtime = 0.9
            defdrop = 2
        }
    }
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        if (!instance_exists(obj_troubleboy_hitch))
        {
            if (mycommand >= 0)
                global.msg[0] = "* Portabie is feeling dejected."
            if (mycommand >= 50)
                global.msg[0] = "* The room suddenly feels a lot&  quieter."
        }
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = "* Portabie is shaking violently."
        attacked = 1
    }
    if (scr_monstersum() <= 1)
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
                global.msg[0] = "* PORTABIE - ATK 3 DEF 3&* Hitch's best friend^1, but&  isn't treated like it./"
                global.msg[1] = "* Has great potential^1,&  but just needs a&  little encouragement./^"
                if (!instance_exists(obj_troubleboy_hitch))
                    global.msg[0] = "* PORTABIE - ATK 3 DEF 0&* Hitch's best...^2.&* FORMER^1, best friend./^"
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
                if instance_exists(obj_troubleboy_hitch)
                {
                    if (progress == 0)
                        global.msg[0] = "* You say some generic&  encouraging words^1, but it&  doesn't do much./^"
                    else if (progress == 1 || progress == 2)
                    {
                        global.msg[0] = "* You encourage Portabie to try&  a roll^1, and it seems to have&  an effect!/^"
                        progress = 2
                    }
                    else if (progress == 3)
                        global.msg[0] = "* You say some encouraging&  words to Portabie./^"
                }
                else
                    global.msg[0] = "* You say some generic&  encouraging words^1, but it&  doesn't do anything./^"
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if instance_exists(obj_troubleboy_hitch)
                {
                    if (progress == 0 || progress == 1)
                    {
                        global.msg[0] = "* You ask Portabie to perform a&  roll^1, but he feels discouraged./^"
                        progress = 1
                    }
                    if (progress == 2 || progress == 3)
                    {
                        global.msg[0] = "* You again ask Portabie to&  perform a roll^1, and he&  succeeds!/^"
                        progress = 3
                        if (obj_troubleboy_hitch.progress == 99)
                        {
                            mercymod = 999
                            with (obj_troubleboy_hitch)
                            {
                                mercymod = 999
                                global.monsterdef[myself] = ((-global.monsterhp[myself]) * 2)
                            }
                        }
                    }
                }
                else
                    global.msg[0] = "* You ask Portabie to roll^1, but&  he ignores you./^"
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if instance_exists(obj_troubleboy_hitch)
                {
                    global.msg[0] = "* You give Portabie a big^1,&  embracing hug./^"
                    with (mypart1)
                        engage_uwu = 1
                }
                else
                    global.msg[0] = "* You try to comfort Portabie^1,&  but he moves out of your reach./^"
                comment = "Make this ACT the yellow credits condition for Portabie"
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
if ((!instance_exists(obj_troubleboy_hitch)) || progress < 3)
    mercymod = -9999
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
