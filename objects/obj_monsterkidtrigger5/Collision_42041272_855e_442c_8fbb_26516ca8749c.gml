if (con == 0 && global.interact == 0 && global.flag[91] < 4 && scr_murderlv() < 8)
{
    global.interact = 1
    con = 1
    mkid.follow = 0
    global.flag[91] = 4
    if (obj_mainchara.y > 908)
        obj_mainchara.y = 908
    if (obj_mainchara.y < 864)
        obj_mainchara.y = 864
    global.facechoice = "A"
    global.typer = 5
    global.msg[0] = scr_gettext("obj_monsterkidtrigger5_91")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger5_92")
    scr_regulartext()
}
if (con == 1 && instance_exists(OBJ_WRITER) == 0)
{
    if (obj_mainchara.y > 908)
        obj_mainchara.y = 908
    if (obj_mainchara.y < 864)
        obj_mainchara.y = 864
    mkid.follow = 0
    global.interact = 0
    con = 2
}
