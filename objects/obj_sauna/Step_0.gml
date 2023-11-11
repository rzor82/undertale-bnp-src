if (myinteract == 1)
{
    if (con > 0)
        myinteract = 0
    else
    {
        myinteract = 2
        con = 1
    }
}
else if (con == 0)
{
    if (alpha > 0)
        alpha -= 0.1
    else
        alpha = 0
}
else if (con == 1)
{
    if (global.flag[227] == 0)
    {
        global.msg[0] = "* (You are not following&  the dress code.)/%%"
        scr_regulartext()
        con = 3
    }
    else
    {
        var centerx = (x + (sprite_width / 2))
        var centery = (y + (sprite_height / 2))
        with (instance_create(centerx, (centery + 8), obj_mainchara_sit))
        {
            sprite_index = spr_mainchara_cozy_sit_inpool
            scr_depth()
            for (i = 0; i < 8; i++)
            {
                pp = instance_create(((x - 4) + i), (y + irandom(-2)), obj_normalplink)
                pp.depth = (other.depth - 1)
                pp.sprite_index = spr_pixwht
            }
        }
        snd_play(snd_smol_sploosh)
        obj_mainchara.visible = false
        buffer = 10
        con = 2
    }
}
else if (con == 2)
{
    if (alpha < 0.4)
        alpha += 0.002
    else
        con = 4
    obj_mainchara.x = (x + 20)
    obj_mainchara.y = (y - 30)
    var moving = (obj_time.up || obj_time.down || obj_time.left || obj_time.right)
    if (buffer == 0 && moving)
    {
        with (obj_mainchara_sit)
            instance_destroy()
        obj_mainchara.visible = true
        snd_play(snd_splash)
        myinteract = 0
    }
}
else if (con == 3 && (!instance_exists(obj_dialoguer)))
    myinteract = 0
else if (con == 4)
{
    snd_play(snd_power)
    var prevhp = global.hp
    if (global.hp < global.maxhp)
        global.hp = global.maxhp
    if (global.hp == 36)
        global.hp = 38
    if (global.hp == 32)
        global.hp = 36
    if (global.hp == 28)
        global.hp = 34
    if (global.hp == 24)
        global.hp = 32
    if (global.hp == 20)
        global.hp = 30
    var hpinc = (global.hp - prevhp)
    if (hpinc > 0)
        global.msg[0] = (("* (Relaxing in the warm pool made&  you feel alive again.^1)&* (HP increased by " + string(hpinc)) + "!)/%%")
    else
        global.msg[0] = "* (Relaxing in the warm pool made&  you feel alive again.^1)&* (HP fully restored.)/%%"
    scr_regulartext()
    con = 5
}
else if (con == 5 && (!instance_exists(obj_dialoguer)))
{
    with (obj_mainchara_sit)
        instance_destroy()
    obj_mainchara.visible = true
    snd_play(snd_splash)
    myinteract = 0
}
if (myinteract > 0)
    global.interact = 1
else if (con > 0)
{
    global.interact = 0
    con = 0
}
if (buffer > 0)
    buffer--
else
    buffer = 0
