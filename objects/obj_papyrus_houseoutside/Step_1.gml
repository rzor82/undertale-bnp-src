script_execute(scr_depth, 0, 0, 0, 0, 0)
if (fun == false)
{
    if (instance_exists(obj_face_anything_new) && global.facechoice == 4)
        image_index = obj_face_anything_new.image_index
    else if (speed == 0 && path_speed == 0)
        image_index = 0
}
if (speed == 0 && con == 0)
    scr_npc_watch(0)
if (con == 1 && instance_exists(OBJ_WRITER) == 0)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    global.currentsong = caster_load("music/papyrus.ogg")
    caster_loop(global.currentsong, 0.6, 1.05)
    con = 2
    solid = 0
    global.phase = 1
}
if (con > 0 && con < 16 && instance_exists(OBJ_WRITER) == 0)
{
    stepmake = 0
    crunchybunchy += 0.5
    if (crunchybunchy == 1)
        stepmake = 1
    if (crunchybunchy == 3)
        stepmake = 1
    if (crunchybunchy == 4)
        crunchybunchy = 0
    if (stepmake == 1)
        instance_create(x, y, obj_papyrussteps)
}
if (con == 2)
{
    if (obj_mainchara.bbox_top <= bbox_bottom && obj_mainchara.bbox_left < bbox_right)
    {
        obj_mainchara.facing = 0
        global.facing = 0
        obj_mainchara.image_speed = 0.25
        obj_mainchara.vspeed = 1
    }
    else
    {
        sprite_index = lsprite
        obj_mainchara.facing = 3
        global.facing = 3
        obj_mainchara.image_speed = 0
        obj_mainchara.vspeed = 0
        con = 3
        alarm[2] = 20
    }
}
if (con == 4)
{
    hspeed = -5
    sprite_index = lsprite
    image_speed = 0.5
    con = 4.5
    alarm[2] = 145
}
if (con == 4.5)
{
    if (obj_mainchara.bbox_left > bbox_right)
    {
        obj_mainchara.hspeed = -5
        obj_mainchara.image_speed = 0.5
    }
}
if (con > 4 && con < 8)
{
    if (x < (obj_mainchara.x - 5))
        depth = 14
}
if (con == 5.5)
{
    obj_mainchara.hspeed = 0
    obj_mainchara.image_index = 0
    obj_mainchara.image_speed = 0
    con = 5
    alarm[2] = 6
}
if (con == 6)
{
    hspeed = 0
    vspeed = 4
    sprite_index = dsprite
    obj_mainchara.hspeed = 0
    obj_mainchara.image_index = 0
    obj_mainchara.image_speed = 0
    obj_mainchara.facing = 0
    global.facing = 0
    con = 7
    alarm[2] = 8
}
if (con == 8)
{
    sprite_index = rsprite
    vspeed = 0
    hspeed = 5
    if (bbox_left > (obj_mainchara.bbox_right + 10))
    {
        obj_mainchara.hspeed = 5
        global.facing = 1
        obj_mainchara.facing = 1
        obj_mainchara.image_speed = 0.5
        con = 9
        alarm[2] = 145
    }
}
if (con == 10)
{
    hspeed = 0
    obj_mainchara.hspeed = 0
    sprite_index = utsprite
    obj_mainchara.image_speed = 0
    image_speed = 0
    obj_mainchara.facing = 2
    global.facing = 2
    con = 11
    alarm[2] = 15
}
if (con == 12)
{
    myinteract = 3
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus_houseoutside_303")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    move_towards_point((obj_paphouse_entrance.x + 5), (obj_paphouse_entrance.y - 2), 8)
    sprite_index = usprite
    image_speed = 0.25
    image_alpha -= 0.05
    if (image_alpha < 0.1)
    {
        if (murdererlv1() == 0)
            visible = false
        y -= 1500
    }
    con = 14
    alarm[2] = 7
}
if (con == 15)
{
    speed = 0
    global.currentsong = caster_load("music/town.ogg")
    caster_loop(global.currentsong, 1, 1)
    caster_play(mus_doorclose, 1, 1)
    global.flag[88] = 2
    obj_paphouse_entrance.dooract = 1
    con = 16
}
if (con == 16 && instance_exists(OBJ_WRITER) == 0)
{
    global.phasing = 0
    global.interact = 0
    instance_destroy()
}
