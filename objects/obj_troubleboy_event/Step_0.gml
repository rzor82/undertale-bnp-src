if (con == 1 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 1
    snd_play(snd_slowmo_dodge)
    tb = scr_marker((obj_mainchara.x - 210), (obj_mainchara.y - 15), spr_troubleboys_hitch)
    tb.hspeed = 14
    with (tb)
        scr_depth()
    global.facing = 3
    con = 2
    alarm[4] = 7
    spd = 6
    siner = 0
}
if (con == 3)
{
    global.facing = 0
    with (obj_mainchara)
    {
        visible = false
        cutscene = true
    }
    __view_set(9, 0, -4)
    chara = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_actor)
    with (chara)
    {
        image_index = 1
        sprite_index = spr_maincharad_run
        if (other.murder == 1)
            sprite_index = spr_maincharad_run_genocide
        image_speed = 0
        puppetmode = 1
    }
    charafollow = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_event)
    with (charafollow)
        visible = false
    camfollow = scr_marker(__view_get(0, 0), __view_get(1, 0), spr_event)
    with (camfollow)
    {
        scr_move_to_point_over_time(40, 60, 67)
        visible = false
    }
    alarm[4] = 68
    con = 4
}
if (con == 4)
{
    with (tb)
    {
        if (hspeed > 0.5)
            hspeed -= 2
        else
            hspeed = 0.5
    }
    if (spd > 0.5)
        spd -= 2
    else
        spd = 0.5
    with (charafollow)
        move_towards_point(190, 160, other.spd)
    chara.x = charafollow.x
    chara.y = (charafollow.y + ((-(sin((siner * 0.03)))) * 35))
    __view_set(0, 0, round(camfollow.x))
    __view_set(1, 0, round(camfollow.y))
    siner++
}
if (con == 5)
{
    con = 6
    alarm[4] = 9
    with (charafollow)
    {
        speed = 0
        scr_move_to_point_over_time(190, 160, 9)
    }
    with (tb)
    {
        hspeed = 0
        scr_move_to_point_over_time(185, y, 9)
    }
}
if (con == 6)
{
    if (chara.y < charafollow.y)
    {
        chara.x = charafollow.x
        chara.y = (charafollow.y + ((-(sin((siner * 0.21)))) * 35))
        siner++
    }
}
if (con == 7)
{
    con = 8
    alarm[4] = 30
    obj_mainchara.x = round(chara.x)
    obj_mainchara.y = round(chara.y)
    with (chara)
        instance_destroy()
    with (charafollow)
        instance_destroy()
    with (obj_mainchara)
        visible = true
}
if (con == 9)
{
    con = 10
    global.facing = 2
    alarm[4] = 23
    with (camfollow)
        scr_move_to_point_over_time(40, 0, 19)
    with (tb)
        scr_move_to_point_over_time(x, 100, 19)
}
if (con == 10)
{
    __view_set(0, 0, round(camfollow.x))
    __view_set(1, 0, round(camfollow.y))
    with (tb)
        scr_depth()
}
if (con == 11)
{
    if (murder == 1)
        con = 500
    else
    {
        with (camfollow)
            instance_destroy()
        premus = caster_loop(mus_troubleintro, 1, 1)
        comment = "Replace this song with something original at some point"
        comment2 = "Comments that precede events"
        global.msg[0] = "* Ha-HA^1! Look who fell for it!/"
        global.msg[1] = "* Thought you could just come&  in here and take the key^1,&  did ya?/"
        global.msg[2] = "* Not today^1!&* Not today I say!/"
        global.msg[3] = "\\K0* (\\K1Hitch^1, g-go easy on 'em^1,&  they p-probably just want&  to get home...\\K0)/"
        global.msg[4] = "\\K0* \\K1QUIET PORTABIE^1!\\K0&* You're \\K1RUINING\\K0 our awesomeness!/"
        global.msg[5] = "* We call ourselves&  the Troubleboys^1, see?/"
        global.msg[6] = "* We're the baddest boys on the&  block!/"
        global.msg[7] = "* The troublest tyrants in town!/"
        global.msg[8] = "\\K0* (\\K1W-we are?\\K0)/"
        global.msg[9] = "\\K0* \\K1YES^1\\K0, Portabie^1!&* We \\K1ARE^1!\\K0&* We've been over this!/"
        global.msg[10] = "* Enough stalling^1, prepare to be&  mugged^1, big time!/%%"
        thisdialog = scr_regulartext()
        con = 12
    }
}
if (con == 12)
{
    if instance_exists(thisdialog)
    {
        if instance_exists(thisdialog.writer)
        {
            if (thisdialog.writer.halt == false)
            {
                with (tb)
                    image_speed = 0.225
            }
            else
            {
                with (tb)
                {
                    image_speed = 0
                    image_index = 0
                }
            }
            with (tb)
                sprite_index = spr_troubleboys_hitch
            switch thisdialog.writer.stringno
            {
                case 3:
                case 8:
                    with (tb)
                        sprite_index = spr_troubleboys_portabie
            }

        }
    }
    else
        con = 13
}
if (con == 13)
{
    if (global.flag[200] == 202)
    {
        global.flag[200] = 0
        setitback = 1
    }
    caster_free(premus)
    global.battlegroup = 142
    global.specialspare = 1
    instance_create(0, 0, obj_battler)
    alarm[4] = 22
    con = 14
}
if (con == 14)
    global.interact = 1
if (con == 15 && (!instance_exists(obj_battler)))
{
    if (setitback == 1)
        global.flag[200] = 202
    global.interact = 1
    if (global.flag[129] > 0)
        con = 900
    else
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("Misc", "T", 1)
        with (tb)
            x = (obj_mainchara.x - 10)
        global.msg[0] = "* Alright^1, we give in./"
        global.msg[1] = "* Thanks for helping us out^1, we&  really needed it./"
        global.msg[2] = "* If only there was some way&  we could repay you.../"
        global.msg[3] = "\\K0* (\\K1I t-think they were looking&  to get that k-key.\\K0)/"
        global.msg[4] = "\\K0* Oh^1, right^1! Almost forgot^1, heh&  heh./"
        global.msg[5] = "* I'm betting you're desperate&  to get out of this stinkin'&  place^1, so it's all yours./"
        global.msg[6] = "* Well anyways^1, that's all^1.&* We'll see ya around^1, kid./%"
        thisdialog = scr_regulartext()
        con = 16
    }
}
if (con == 16)
{
    global.interact = 1
    if instance_exists(thisdialog)
    {
        if instance_exists(thisdialog.writer)
        {
            if (thisdialog.writer.halt == false)
            {
                with (tb)
                    image_speed = 0.225
            }
            else
            {
                with (tb)
                {
                    image_speed = 0
                    image_index = 0
                }
            }
            with (tb)
                sprite_index = spr_troubleboys_hitch
            if (thisdialog.writer.stringno == 3)
            {
                with (tb)
                    sprite_index = spr_troubleboys_portabie
            }
        }
    }
    else
        con = 17
}
if (con == 17)
{
    with (tb)
    {
        image_speed = 0
        image_index = 0
        vspeed = 5
    }
    with (obj_mainchara)
        visible = false
    chara = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_actor)
    with (chara)
    {
        hspeed = -3
        sprite_index = spr_maincharar
        if (other.murder == 1)
            sprite_index = spr_maincharar_geno
    }
    con = 18.5
    alarm[4] = 5
}
if (con == 19.5)
{
    con = 18
    with (chara)
    {
        hspeed = 0
        image_speed = 0
    }
    alarm[4] = 20
}
if (con == 19)
{
    global.facing = 0
    with (chara)
        hspeed = 3
    con = 20
    alarm[4] = 5
}
if (con == 21)
{
    global.facing = 0
    obj_mainchara.x = chara.x
    obj_mainchara.y = chara.y
    obj_mainchara.visible = true
    with (chara)
        instance_destroy()
    camfollow = scr_marker(__view_get(0, 0), __view_get(1, 0), spr_event)
    with (camfollow)
    {
        scr_move_to_point_over_time(round(((obj_mainchara.x - (__view_get(2, 0) / 2)) + 10)), round(((obj_mainchara.y - (__view_get(3, 0) / 2)) + 10)), 29)
        visible = false
    }
    con = 22
    alarm[4] = 30
}
if (con == 22)
{
    __view_set(0, 0, round(camfollow.x))
    __view_set(1, 0, round(camfollow.y))
}
if (con > 17 && con < 23)
{
    with (tb)
        scr_depth()
}
if (con == 23)
{
    global.interact = 0
    with (camfollow)
        instance_destroy()
    with (tb)
        instance_destroy()
    with (obj_mainchara)
    {
        cutscene = false
        uncan = 0
    }
    __view_set(9, 0, 1584)
    con = 24
    global.mercy = 0
    global.flag[39] = 1
    instance_destroy()
}
if (con == 900)
{
    ossafe_ini_open("undertale.ini")
    ini_write_real("Misc", "T", 2)
    if (murder == 1)
        snd_play(snd_ominous)
    con = 901
    with (tb)
        visible = false
    alarm[4] = 30
}
if (con == 902)
{
    global.facing = 0
    obj_mainchara.visible = true
    camfollow = scr_marker(__view_get(0, 0), __view_get(1, 0), spr_event)
    with (camfollow)
    {
        scr_move_to_point_over_time(round(((obj_mainchara.x - (__view_get(2, 0) / 2)) + 10)), round(((obj_mainchara.y - (__view_get(3, 0) / 2)) + 10)), 29)
        visible = false
    }
    con = 22
    alarm[4] = 30
}
if (con == 500)
{
    with (camfollow)
        instance_destroy()
    premus = caster_loop(mus_troubleintro, 1, 1)
    global.msg[0] = "* Ha-HA^1! Look who fell for it!/"
    global.msg[1] = "* Thought you could just come&  in here and take the key^1,&  did ya?/"
    global.msg[2] = "* Not today^1!&* Not today I s-%%"
    thisdialog = scr_regulartext()
    con = 501
}
if (con == 501)
{
    if instance_exists(thisdialog)
    {
        if instance_exists(thisdialog.writer)
        {
            if (thisdialog.writer.halt == false)
            {
                with (tb)
                    image_speed = 0.225
            }
            else
            {
                with (tb)
                {
                    image_speed = 0
                    image_index = 0
                }
            }
        }
    }
    else
        con = 502
}
if (con == 502)
{
    with (obj_mainchara)
    {
        vspeed = -3
        image_speed = 0.25
    }
    con = 503
    alarm[4] = 8
}
if (con == 504)
{
    with (obj_mainchara)
    {
        vspeed = 0
        image_speed = 0
    }
    con = 505
    alarm[4] = 15
}
if (con == 506)
{
    global.msg[0] = "\\K0* Hey woah, woah, \\K1WOAH^1!\\K0&* Are you trying to mug me or&  something?/"
    global.msg[1] = "* Who's the criminal here^1?&* Me or you!?/"
    global.msg[2] = "\\K0* (\\K1I t-think we should leave&  right now...!\\K0)/"
    global.msg[3] = "\\K0* What^1? No^1!&* If they ARE a criminal^1, they&  must have alotta loot on them./"
    global.msg[4] = "* Heh heh heh^1, then we won't&  pass on this opportu-%%"
    thisdialog = scr_regulartext()
    con = 507
}
if (con == 507)
{
    if instance_exists(thisdialog)
    {
        if instance_exists(thisdialog.writer)
        {
            if (thisdialog.writer.halt == false)
            {
                with (tb)
                    image_speed = 0.225
            }
            else
            {
                with (tb)
                {
                    image_speed = 0
                    image_index = 0
                }
            }
            with (tb)
                sprite_index = spr_troubleboys_hitch
            if (thisdialog.writer.stringno == 2)
            {
                with (tb)
                    sprite_index = spr_troubleboys_portabie
            }
        }
    }
    else
        con = 13
}
