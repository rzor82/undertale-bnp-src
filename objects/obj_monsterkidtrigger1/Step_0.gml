if (old == 1)
{
    if (conversation == 1)
    {
        t = 0
        mkid = obj_townnpc_monsterkid1
        if (obj_mainchara.x > (mkid.x + 40))
            t = 1
        if (obj_mainchara.x < (mkid.x - 40))
            t = 2
        if (t == 1)
        {
            mkid.hspeed = 3
            mkid.sprite_index = mkid.rsprite
            mkid.image_speed = 0.2
        }
        if (t == 2)
        {
            if (mkid.x > (mkid.xstart - 40))
            {
                mkid.hspeed = -3
                mkid.sprite_index = mkid.lsprite
                mkid.image_speed = 0.2
            }
            else
                t = 0
        }
        if (t == 0)
        {
            if (mkid.sprite_index == mkid.rsprite)
                mkid.image_index = 0
            mkid.hspeed = 0
            mkid.image_speed = 0
            mkid.sprite_index = mkid.dtsprite
            if (obj_mainchara.y < mkid.y)
                mkid.sprite_index = mkid.utsprite
            if ((obj_mainchara.x - mkid.x) > 16)
            {
                mkid.sprite_index = mkid.rtsprite
                mkid.con = 1
            }
            if ((obj_mainchara.x - mkid.x) < -10)
            {
                mkid.sprite_index = mkid.ltsprite
                mkid.con = 2
            }
            if (mkid.myinteract == 3)
                mkid.image_speed = 0.2
        }
    }
}
else if (conversation == 1)
{
    global.interact = 1
    conversation = 2
}
if (conversation == 2)
{
    obj_townnpc_monsterkid1.vspeed = -2.5
    obj_townnpc_monsterkid1.fun = true
    obj_townnpc_monsterkid1.sprite_index = obj_townnpc_monsterkid1.usprite
    obj_townnpc_monsterkid1.image_speed = 0.2
    conversation = 3
}
if (conversation == 3)
{
    if (obj_townnpc_monsterkid1.y <= obj_mainchara.y)
    {
        obj_townnpc_monsterkid1.vspeed = 0
        obj_townnpc_monsterkid1.fun = true
        obj_townnpc_monsterkid1.sprite_index = obj_townnpc_monsterkid1.rsprite
        global.facing = 3
        conversation = 4
    }
}
if (conversation == 4)
{
    if (obj_townnpc_monsterkid1.talkedto == 0)
        talkedto = 0
    else
        talkedto = 1
    conversation = 5
}
if (conversation == 5)
{
    obj_townnpc_monsterkid1.fun = false
    global.msc = 0
    global.typer = 5
    global.facechoice = "A"
    global.msg[0] = "\\FA* Hey^1, don't go&  without me^1, dude^1!/%%"
    if (talkedto == 0 && global.flag[124] == 0)
    {
        global.msg[0] = "\\FA%"
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_122")
        global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_123")
        global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_124")
        global.msg[4] = "%%"
    }
    instance_create(0, 0, obj_dialoguer)
    conversation = 6
}
if (conversation == 6 && (!instance_exists(OBJ_WRITER)))
{
    obj_townnpc_monsterkid1.hspeed = 2.5
    obj_townnpc_monsterkid1.fun = true
    obj_townnpc_monsterkid1.sprite_index = obj_townnpc_monsterkid1.rsprite
    obj_townnpc_monsterkid1.image_speed = 0.2
    obj_townnpc_monsterkid1.solid = 0
    conversation = 7
}
if (conversation == 7)
{
    if (obj_townnpc_monsterkid1.x >= obj_mainchara.x)
    {
        obj_townnpc_monsterkid1.hspeed = 0
        obj_townnpc_monsterkid1.sprite_index = obj_townnpc_monsterkid1.lsprite
        obj_townnpc_monsterkid1.image_speed = 0
        conversation = 8
    }
}
if (conversation == 8 && (!instance_exists(OBJ_WRITER)))
{
    obj_townnpc_monsterkid1.fun = false
    global.msc = 0
    global.facechoice = "A"
    global.typer = 5
    global.msg[0] = "\\FA%"
    global.msg[1] = scr_gettext("obj_monsterkidtrigger3_201")
    global.typer = 5
    global.interact = 1
    instance_create(0, 0, obj_dialoguer)
    conversation = 9
}
if (conversation == 9 && (!instance_exists(OBJ_WRITER)))
{
    global.flag[327] = 1
    instance_create(obj_townnpc_monsterkid1.x, obj_townnpc_monsterkid1.y, obj_mkid_actor)
    with (obj_townnpc_monsterkid1)
        instance_destroy()
    global.interact = 0
    conversation = 10
}
