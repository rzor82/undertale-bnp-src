if (myinteract == 1)
{
    myinteract = 2
    if (con == 0)
        con = 1
}
if (con == 1)
{
    if (global.flag[392] == 2)
        global.msg[0] = "* Sorry kid^1, I'm out of G./%%"
    else if (global.flag[392] == 1)
        global.msg[0] = "* Only one attempt per person./%%"
    else if (global.flag[392] == 0)
        global.msg[0] = "* Wanna play a game?& &         Yes         No \\C"
    else
        global.msg[0] = "* Congrats^1, you broke it./%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Do you think humans&  will like riding on&  the spin machine...?/"
        if (global.flag[392] == 2)
            global.msg[1] = "* Yeah^1, I think they'll&  really like it!/%%"
        else if (global.flag[392] == 1)
            global.msg[1] = "* Well^1, maybe^1.&* I feel they won't&  give it their all.../%%"
        else if (global.flag[392] == 0)
            global.msg[1] = "* No^1, I don't think so./%%"
        else
            global.msg[1] = "* Well^1, guess it's not&  something I should be&  worrying about^1, huh?/%%"
    }
    scr_regulartext()
    con = 2
}
else if (con == 2 && global.flag[392] != 0)
{
    if (!instance_exists(obj_dialoguer))
    {
        global.interact = 0
        myinteract = 0
        con = 0
    }
}
else if (con == 2 && instance_exists(obj_choicer) && obj_choicer.choiced)
{
    with (obj_dialoguer)
        instance_destroy()
    with (obj_choicer)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    if (global.choice == 0)
    {
        global.msg[0] = "* Great^1! Hop on!/%%"
        con = 4
    }
    else
    {
        global.msg[0] = "* Well^1, feel free to come&  back if you change your mind!/%%"
        con = 3
    }
    scr_regulartext()
}
else if (con == 3 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    myinteract = 0
    con = 0
}
else if (con == 4 && (!instance_exists(obj_dialoguer)))
{
    with (obj_launchpad)
    {
        myinteract = 2
        locked = true
        solid = 0
    }
    fade = 1
    con = 5
}
else if (con == 5 && black.image_alpha >= 1)
{
    global.facing = 0
    global.phasing = 1
    with (obj_mainchara)
    {
        x = (obj_launchpad.x + ((obj_launchpad.sprite_width - sprite_width) / 2))
        y = (obj_launchpad.y - 15)
    }
    with (obj_launchpad)
    {
        launch_velocity = -10
        ceiling = (((-room_height) / 2) - 100)
        con = 3
    }
    fade = 2
    con = 6
}
else if (con == 6)
{
    obj_launchpad.spin.image_speed = 0
    if (black.image_alpha <= 0)
    {
        global.msg[0] = "* Here we go!/%%"
        scr_regulartext()
        fade = 0
        con = 7
    }
}
else if (con == 7)
{
    obj_launchpad.spin.image_speed = 0
    if (!instance_exists(obj_dialoguer))
        con = 8
}
else if (con == 8)
{
    caster_free(-3)
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "3..^2.&2..^2.&1..^2.%%%"
    instance_create(100, (__view_get(1, 0) + 30), OBJ_WRITER)
    con = 9
}
else if (con == 9 && (!instance_exists(OBJ_WRITER)))
{
    with (obj_launchpad)
    {
        floory += (((obj_mainchara.bbox_top - obj_mainchara.y) * 2) - 1)
        force_launch = 1
    }
    with (black)
        instance_destroy()
    alarm[4] = 10
    con = 10
}
else if (con > 9 && con < 13)
{
    if (con == 11)
    {
        caster_play(mus_minigame, 1, 0.93)
        con = 12
    }
    if (obj_launchpad.con == 0)
        con = 13
    else
    {
        with (obj_npc_marker)
        {
            if (sprite_index == spr_menugoldbttn && collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara_spin, 0, 0))
            {
                other.collected++
                snd_play(snd_coin)
                instance_destroy()
            }
        }
    }
}
else if (con == 13)
{
    if (collected > 0)
        snd_play(snd_dumbvictory)
    alarm[4] = 30
    con = 14
}
else if (con == 15)
{
    caster_free(mus_minigame)
    if (collected >= num_coins)
        global.flag[392] = 2
    else
        global.flag[392] = 1
    global.gold += collected
    if (collected > 0)
        global.msg[0] = (("* Here's your GOLD^1!&* (You got " + string(collected)) + "G.)/%%")
    else
        global.msg[0] = "* Wow^1, you suck at this./%%"
    scr_regulartext()
    con = 16
}
else if (con == 16 && (!instance_exists(obj_dialoguer)))
{
    caster_loop(global.currentsong, 1, 1)
    con = 3
}
if (con > 0)
    global.interact = 1
for (i = 0; i < array_length_1d(coins); i++)
{
    with (coins[i])
    {
        if (global.flag[392] == 0)
            image_alpha = (0.5 + (abs(cos(other.siner)) / 2))
        else if (image_alpha > 0)
            image_alpha -= 0.025
        else
            instance_destroy()
    }
}
if (global.flag[392] == 0)
    siner += 0.05
