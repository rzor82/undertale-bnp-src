if (conversation == 2 && instance_exists(obj_dialoguer) == 0)
{
    global.interact = 3
    obj_mainchara.y = 128
    obj_mainchara.visible = false
    obj_toroverworld3.sprite_index = spr_toriel_handhold_l
    obj_toroverworld3.lsprite = spr_toriel_handhold_l
    if (scr_murderlv() >= 2 || global.flag[221] == 1)
        gdraw = 1
    if (gdraw == 1)
    {
        obj_toroverworld3.sprite_index = spr_toriel_handhold_geno_l
        obj_toroverworld3.lsprite = spr_toriel_handhold_geno_l
    }
    with (obj_mainchara)
        path_start(path_torielwalkbasement2, 5, path_action_stop, 0)
    with (obj_toroverworld3)
        path_start(path_torielwalkbasement2, 5, path_action_stop, 0)
    conversation = 3
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 1 && obj_toroverworld3.path_position == 1)
    {
        global.interact = 1
        myinteract = 3
        global.typer = 4
        global.facechoice = 1
        global.faceemotion = 2
        global.flag[44] += 1
        global.flag[45] = 1
        global.msc = 0
        if (global.flag[44] == 1)
            global.msg[0] = scr_gettext("obj_torieltrigger8_77")
        if (global.flag[44] == 2)
            global.msg[0] = scr_gettext("obj_torieltrigger8_78")
        if (global.flag[44] == 3)
            global.msg[0] = scr_gettext("obj_torieltrigger8_79")
        if (global.flag[44] == 4)
            global.msg[0] = scr_gettext("obj_torieltrigger8_80")
        if (global.flag[44] == 5)
            global.msg[0] = scr_gettext("obj_torieltrigger8_81")
        if (global.flag[44] == 6)
            global.msg[0] = scr_gettext("obj_torieltrigger8_82")
        if (global.flag[44] == 7)
            global.msg[0] = scr_gettext("obj_torieltrigger8_83")
        if (global.flag[44] == 8)
            global.msg[0] = scr_gettext("obj_torieltrigger8_84")
        if (global.flag[44] == 9)
            global.msg[0] = scr_gettext("obj_torieltrigger8_85")
        if (global.flag[44] > 9)
            global.msg[0] = scr_gettext("obj_torieltrigger8_86")
        if (global.plot < 19)
        {
            global.flag[44] = 0
            global.msg[0] = scr_gettext("obj_torieltrigger8_90")
            global.msg[1] = scr_gettext("obj_torieltrigger8_91")
        }
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 2
    }
}
