scr_depth()
if (timer > 0)
    timer--
else if (timer == 0)
{
    timer = -1
    con += 1
}
if (con == 1)
{
    if instance_exists(mydialoguer)
    {
        if (instance_exists(mydialoguer.writer) && mydialoguer.writer.stringno == 3)
            caster_free(global.currentsong)
    }
    else if (scr_murderlv() >= 2)
    {
        master = 1
        con = 3
    }
    else
    {
        con = 2
        timer = 30
        master = 1
        myinteract = 0
        global.interact = 1
        snd_play(snd_break2)
    }
}
else if (con == 3)
{
    con = 4
    timer = 32
    global.mercy = scr_murderlv() >= 2
    global.flag[446] = 1
    global.battlegroup = 31
    global.specialbattle = 1
    global.specialspare = 1
    instance_create(0, 0, obj_battler)
}
else if (con == 4 && timer == 1)
    global.flag[15] = 1
else if (con == 5)
{
    with (obj_mainchara)
        uncan = 0
    switch global.flag[446]
    {
        case 1:
            global.flag[15] = 1
            with (object_index)
            {
                con = 11
                timer = 30
            }
            break
        case 2:
            with (object_index)
            {
                if (!master)
                    instance_destroy()
            }
            global.flag[15] = 0
            con = 10
            break
        case 3:
            global.flag[15] = 1
            with (object_index)
            {
                con = 6
                timer = 30
            }
            break
    }

}
else if (con == 6 || con == 11)
    global.flag[15] = 0
else if (con == 7)
    con = 28
else if (con == 8)
{
    if master
    {
        con = 9
        timer = 30
    }
    else
        instance_destroy()
}
else if (con == 10)
{
    global.flag[15] = 0
    if (global.flag[446] == 2)
        instance_destroy()
    var pitch = 0.95
    if (scr_murderlv() >= 2 && global.flag[27] == 0)
        pitch = 0.4
    caster_loop(global.currentsong, 1, pitch)
    global.specialspare = 1
    global.specialbattle = 0
    global.interact = 0
    con = 999
}
else if (con == 12)
{
    global.interact = 1
    if (x < 265)
    {
        global.msg[0] = "* Look at 'em^1!&* Running away with their tail&  between their legs!/%%"
        mydialoguer = scr_regulartext()
        con = 13
    }
    else
        con = 0
}
else if (con == 13 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x >= 265)
        {
            global.msg[0] = "* Uh..^1.&* I don't think they have&  a tail^1, do they?/%%"
            mydialoguer = scr_regulartext()
            con = 14
        }
        else
            con = 0
    }
}
else if (con == 14 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x < 265)
        {
            global.msg[0] = "* That's not the point^1.&* Scram^1, kiddo^1!&  And don't come back!/%%"
            mydialoguer = scr_regulartext()
            con = 15
        }
        else
            con = 0
    }
}
else if (con == 15 && (!instance_exists(mydialoguer)))
{
    with (obj_mainchara)
    {
        other.chara = scr_marker(x, y, spr_maincharad_run)
        other.chara.visible = false
    }
    global.interact = 1
    timer = 30
    con = 16
}
else if (con == 17)
{
    global.facing = 0
    global.phasing = 1
    chara.visible = true
    chara.vspeed = (3 * global.runspeed)
    chara.image_speed = 0.5
    if (stage == 0)
    {
        snd_play(snd_escaped)
        stage = 1
    }
    with (obj_mainchara)
    {
        x = other.chara.x
        y = other.chara.y
        visible = false
    }
    if (chara.y > room_height && global.interact != 3)
        instance_create(chara.x, (chara.y + 15), obj_doorD)
}
else if (con == 20)
{
    caster_free(global.currentsong)
    global.interact = 1
    timer = 20
    con = 21
}
else if (con == 22)
{
    instance_create((x + 5), (y - 10), obj_cosmeticblcon)
    timer = 30
    con = 23
}
else if (con == 24)
{
    if (x < 265)
    {
        global.msg[0] = "* Look who's back!/%%"
        mydialoguer = scr_regulartext()
        master = 1
        con = 25
    }
    else
        con = 0
}
else if (con == 25 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x >= 265)
        {
            global.msg[0] = "* I guess they don't understand&  what \"scram\" means!/%%"
            mydialoguer = scr_regulartext()
            con = 26
        }
        else
            con = 0
    }
}
else if (con == 26 && (!instance_exists(mydialoguer)))
    con = 3
else if (con == 28)
{
    if (x < 265)
    {
        global.msg[0] = "* W-well^1!&* I guess that settles it!/%%"
        mydialoguer = scr_regulartext()
        con = 29
    }
    else
        con = 0
}
else if (con == 29 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x >= 265)
        {
            global.msg[0] = "* Yeah^1, uh^1, I guess you're&  part of the club^1,&  or something./%%"
            mydialoguer = scr_regulartext()
            con = 30
        }
        else
            con = 0
    }
}
else if (con == 30 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x < 265)
        {
            global.msg[0] = "* Just^1, uh^1, don't tell&  the other teens about&  this^1, okay?/%%"
            mydialoguer = scr_regulartext()
            con = 31
        }
        else
            con = 0
    }
}
else if (con == 31 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        if (x >= 265)
        {
            global.msg[0] = "* What he said^1!&* It'll ruin our reputation!/%%"
            mydialoguer = scr_regulartext()
            con = 32
        }
        else
            con = 0
    }
}
else if (con == 32 && (!instance_exists(mydialoguer)))
{
    global.interact = 1
    with (object_index)
    {
        timer = 10
        con = 33
    }
}
else if (con == 34)
{
    if (stage == 0)
    {
        snd_play(snd_escaped)
        stage = 1
    }
    if (y > 120)
        vspeed = -4
    else
    {
        vspeed = 0
        hspeed = -4
    }
    if ((x + sprite_width) < __view_get(0, 0))
        con = 8
    global.flag[15] = 0
    scr_npcdirspeed()
    image_speed = 0.25
}
if (vspeed == 0 && hspeed == 0)
{
    if (con > 12)
        myinteract = 3
    scr_npc_anim()
    if (con > 12)
        myinteract = 0
}
if (con == 999)
{
    if (global.interact == 0)
    {
        global.flag[15] = 0
        con = 0
    }
}
