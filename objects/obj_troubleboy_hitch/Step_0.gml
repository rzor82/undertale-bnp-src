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
if (!instance_exists(obj_troubleboy_portabie))
{
    if (!atkup)
    {
        global.monsteratk[myself] += 6
        atkup = 1
    }
    if atkup
    {
        caster_set_pitch(global.batmusic, overtime)
        if (overtime > 0.9)
            overtime -= 0.01
        else
        {
            overtime = 0.9
            atkup = 2
        }
    }
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        pop = scr_monstersum()
        global.turntimer = 210
        if (gotgold == 0 && instance_exists(obj_troubleboy_portabie) && progress < 2)
        {
            if (mycommand >= 0 && mycommand < 20)
            {
                gen = instance_create(0, 0, blt_tb_wheel)
                gen.dmg = global.monsteratk[myself]
                if (!instance_exists(obj_troubleboy_portabie))
                {
                    gen.diff = 9
                    gen.wheeltut = wheeltut
                }
            }
            else if (mycommand >= 20 && mycommand < 40)
            {
                gen = instance_create(0, 0, blt_tb_ducksu)
                gen.dmg = global.monsteratk[myself]
            }
            else if (mycommand >= 40 && mycommand < 60)
            {
                gen = instance_create(0, 0, obj_tb_cidergen)
                gen.dmg = global.monsteratk[myself]
            }
            else if (mycommand >= 60 && mycommand < 80)
            {
                gen = instance_create(0, 0, obj_tb_wheel_gen)
                gen.dmg = (global.monsteratk[myself] - 2)
                if (!instance_exists(obj_troubleboy_portabie))
                    gen.diff = 9
                instance_create(obj_heart.x, obj_heart.y, obj_heart_outline)
                instance_create((obj_heart.x + irandom_range(-50, 50)), (obj_heart.y + irandom_range(-50, 50)), obj_tb_sunglasses_follow)
            }
            else
                gen = instance_create(0, 0, obj_tb_gold_gen)
        }
        else
        {
            bepis = 99999
            if (mycommand >= 0 && mycommand < 25)
            {
                gen = instance_create(0, 0, blt_tb_wheel)
                gen.dmg = global.monsteratk[myself]
                if (!instance_exists(obj_troubleboy_portabie))
                    gen.diff = 9
            }
            else if (mycommand >= 25 && mycommand < 50)
            {
                gen = instance_create(0, 0, blt_tb_ducksu)
                gen.dmg = global.monsteratk[myself]
            }
            else if (mycommand >= 50 && mycommand < 75)
            {
                gen = instance_create(0, 0, obj_tb_cidergen)
                gen.dmg = global.monsteratk[myself]
            }
            else if (mycommand >= 75)
            {
                gen = instance_create(0, 0, obj_tb_wheel_gen)
                gen.dmg = (global.monsteratk[myself] - 2)
                if (!instance_exists(obj_troubleboy_portabie))
                    gen.diff = 9
                instance_create(obj_heart.x, obj_heart.y, obj_heart_outline)
                instance_create((obj_heart.x + irandom_range(-50, 50)), (obj_heart.y + irandom_range(-50, 50)), obj_tb_sunglasses_follow)
            }
        }
        if instance_exists(obj_troubleboy_portabie)
        {
            if (mycommand >= 0)
                global.msg[0] = "* Smells like trouble^2.&* Make it double."
            if (mycommand >= 20)
                global.msg[0] = "* Hitch's smugly grin shines&  brightly."
            if (mycommand >= 40)
                global.msg[0] = "* Hitch blows his nose on a&  dollar bill and throws it away."
            if (mycommand >= 60)
                global.msg[0] = "* Portabie is struggling to stay&  upright."
            if (mycommand >= 80)
                global.msg[0] = "* Portabie sighs loudly."
            if (progress == 99 && hint == 0)
            {
                global.msg[0] = "* Hitch is reevaluating his&  actions"
                if (obj_troubleboy_portabie.progress != 3)
                    global.msg[0] += "^1.&* Portabie is feeling left out."
                else
                    global.msg[0] += "."
                hint = 1
            }
            if (obj_troubleboy_portabie.progress == 3 && hint == 0)
            {
                global.msg[0] = "* Portabie is feeling better&  than ever"
                if (progress != 99)
                    global.msg[0] += "^1.&* Hitch gives you a weird look."
                else
                    global.msg[0] += "."
                hint = 1
            }
        }
        else
        {
            if (mycommand >= 0)
                global.msg[0] = "* Hitch looks on with anguish in&  his eyes."
            if (mycommand >= 50)
                global.msg[0] = "* Hitch's smile is gone."
        }
        if instance_exists(obj_troubleboy_portabie)
        {
            if (mercymod > 100 && obj_troubleboy_portabie.mercymod > 100)
                global.msg[0] = "* The boys are no longer&  troubled."
        }
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = "* Hitch's horns are drooping."
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
                global.msg[0] = "* HITCH - ATK 10 DEF 5&* This battle definitely won't&  play out without a 'hitch'./"
                global.msg[1] = "* Someone needs to&  give him a stern&  talking-to./^"
                if (!instance_exists(obj_troubleboy_portabie))
                    global.msg[0] = "* HITCH - ATK 10 DEF 10&* Saw the error in his&  ways^2, but far too late./^"
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
                if instance_exists(obj_troubleboy_portabie)
                {
                    if (progress == 0)
                        global.msg[0] = "* You scold Hitch and say he&  should stop all his&  wrongdoings./"
                    else if (progress == 1)
                        global.msg[0] = "* You say to Hitch that people&  really are hurt from his&  actions./"
                    else if (progress == 2)
                        global.msg[0] = "* You show Hitch that if he&  continues his behaviour^1, he&  might not have friends again./"
                    else if (progress > 2)
                        global.msg[0] = "* You lecture Hitch^1, but it seems&  to have no effect^1.&* He might need some comforting./^"
                    if (progress == 99)
                        global.msg[0] = "* You lecture Hitch^1, but it seems&  to have no effect./^"
                    if (progress < 3)
                    {
                        progress++
                        global.msg[1] = "* It seemed to have gotten&  to him just a little...?/^"
                    }
                    else
                        global.msg[0] = "* You lecture Hitch^1, but it seems&  to have no effect./^"
                }
                else
                    global.msg[0] = "* You lecture Hitch^1, but it seems&  to have no effect./^"
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if instance_exists(obj_troubleboy_portabie)
                {
                    if (progress > 2 && progress != 99)
                        global.msg[0] = "* You praise Hitch^1, but it seems&  to have no effect^1.&* He might need some comforting./^"
                    else if (progress == 99)
                    {
                        global.msg[0] = "* You thank Hitch for taking the&  time to listen./^"
                        comment = "Make this ACT the yellow credits condition for Hitch"
                    }
                    else if (praised == 0)
                    {
                        global.msg[0] = "* You tell Hitch that he's the&  best worst criminal you've&  ever seen./^"
                        praised = 1
                    }
                    else
                        global.msg[0] = "* You tell Hitch that he's so&  great^1, that you've ran out of&  things to say about him./^"
                }
                else
                    global.msg[0] = "* You try to praise Hitch^1, but&  he ignores your words./^"
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if instance_exists(obj_troubleboy_portabie)
                {
                    if (progress < 3)
                    {
                        if (global.turn == 0)
                            global.msg[0] = "* Despite his intimidating&  nature^1, you waste no time and&  go in for a pat./^"
                        else
                            global.msg[0] = "* You attempt to pat Hitch&  around his horns./^"
                    }
                    else if (progress >= 3 && progress != 99)
                    {
                        global.msg[0] = "* You gently pat Hitch on the&  head and tell him it's going to&  be alright./^"
                        progress = 99
                        if (obj_troubleboy_portabie.progress == 3)
                        {
                            mercymod = 999
                            with (obj_troubleboy_portabie)
                            {
                                mercymod = 999
                                global.monsterdef[myself] = ((-global.monsterhp[myself]) * 2)
                            }
                        }
                    }
                    else
                        global.msg[0] = "* You pat Hitch around his horns./^"
                }
                else
                    global.msg[0] = "* You attempt to pat Hitch^1, but&  he rejects it./^"
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
if ((!instance_exists(obj_troubleboy_portabie)) || progress < 99)
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
if (global.debug == true)
{
    if keyboard_check_pressed(vk_space)
    {
        progress = 3
        with (obj_troubleboy_portabie)
            progress = 2
    }
}
if (gotgold == 1)
{
    if (con == 0)
    {
        alarm[10] = 15
        con = 1
    }
    if (con == 2)
    {
        blcon = instance_create((x + 143), (y - 7), obj_blconsm)
        global.msg[0] = "Hey WAIT&a minute!/"
        global.msg[1] = "You can't&just take&that!!/%%"
        global.typer = 33
        blconwd = instance_create((blcon.x + 12), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 3
    }
    if (con == 3 && (!instance_exists(OBJ_NOMSCWRITER)))
    {
        blcon = instance_create((x + 143), (y - 7), obj_blconsm)
        global.msg[0] = "\\K0That&GOLD&is&\\K1MINE!!\\K0"
        global.msg[1] = "%%%"
        global.typer = 33
        blconwd = instance_create((blcon.x + 20), (blcon.y + 10), OBJ_NOMSCWRITER)
        if (obj_troubleboy_portabie.progress < 3)
        {
            with (obj_troubleboy_portabie)
            {
                blcon2 = instance_create((x - 140), (y - 7), obj_blconsm)
                with (blcon2)
                    sprite_index = spr_blconsm2
                global.msg[0] = "\\K2That's&what you&get..."
                global.msg[1] = "%%%"
                blconwd2 = instance_create((blcon2.x + 20), (blcon2.y + 10), OBJ_NOMSCWRITER)
            }
        }
        alarm[10] = 75
        con = 4
    }
    if (con == 5)
    {
        instance_destroy(obj_blconsm)
        instance_destroy(OBJ_NOMSCWRITER)
        global.msg[0] = "* Hitch throws away one of his&  attacks."
        global.turntimer = -1
        con = 6
    }
}
