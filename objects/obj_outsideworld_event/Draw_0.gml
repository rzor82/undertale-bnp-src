if (con == 1)
{
    global.interact = 1
    blk -= 0.01
    if (blk == 1)
        caster_loop(global.currentsong, 0.9, 0.9)
    draw_set_alpha(blk)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 999, 999)
    draw_set_alpha(1)
    if (blk <= 0)
    {
        con = 2
        alarm[4] = 50
    }
}
if (con > 0)
{
    if (altblk < 1)
        altblk += 0.01
}
draw_sprite_ext(tor.sprite_index, tor.image_index, tor.x, (tor.y + 130), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(tor.sprite_index, tor.image_index, tor.x, tor.y, 1, 1, 0, thisblend, altblk)
draw_sprite_ext(asg.sprite_index, asg.image_index, asg.x, (asg.y + 145), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(asg.sprite_index, asg.image_index, asg.x, asg.y, 1, 1, 0, thisblend, altblk)
draw_sprite_ext(pap.sprite_index, pap.image_index, pap.x, (pap.y + 100), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(pap.sprite_index, pap.image_index, pap.x, pap.y, 1, 1, 0, thisblend, altblk)
draw_sprite_ext(sans.sprite_index, sans.image_index, sans.x, (sans.y + 70), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(sans.sprite_index, sans.image_index, sans.x, sans.y, 1, 1, 0, thisblend, altblk)
draw_sprite_ext(und.sprite_index, und.image_index, und.x, (und.y + 130), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(und.sprite_index, und.image_index, und.x, und.y, 1, 1, 0, thisblend, altblk)
draw_sprite_ext(al.sprite_index, al.image_index, al.x, (al.y + 70), 1, -1.5, 0, c_black, 0.75)
draw_sprite_ext(al.sprite_index, al.image_index, al.x, al.y, 1, 1, 0, thisblend, altblk)
if (mc.visible == true && obj_mainchara.visible == false)
{
    draw_sprite_ext(mc.sprite_index, mc.image_index, mc.x, (mc.y + 75), 1, -1.5, 0, c_black, 0.75)
    draw_sprite_ext(mc.sprite_index, mc.image_index, mc.x, mc.y, 1, 1, 0, thisblend, altblk)
}
if (obj_mainchara.visible == true)
{
    mc.visible = false
    draw_sprite_ext(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, (obj_mainchara.y + 75), 1, -1.5, 0, c_black, 0.75)
    draw_sprite_ext(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, obj_mainchara.y, 1, 1, 0, thisblend, altblk)
}
if (instance_exists(obj_sans_actor) && con >= 220)
{
    draw_sprite_ext(floe.sprite_index, floe.image_index, floe.x, (floe.y + 60), 1, -1.5, 0, c_black, 0.75)
    draw_sprite_ext(floe.sprite_index, floe.image_index, floe.x, floe.y, 1, 1, 0, thisblend, altblk)
}
if (con == 3)
{
    global.msc = 814
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 0
    instance_create(0, 0, obj_dialoguer)
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    pap.thisy = pap.y
    con = 5
    alarm[4] = 3
}
if (con == 5)
{
    pap.sprite_index = spr_papyrus_d
    pap.y += 5
    pap.image_speed = 0.334
}
if (con == 6)
{
    pap.sprite_index = spr_papyrus_r
    pap.x += 7
    if (pap.x > room_width)
    {
        con = 7
        alarm[4] = 30
    }
}
if (con == 8)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_158")
    global.msg[1] = scr_gettext("obj_outsideworld_event_159")
    global.msg[2] = scr_gettext("obj_outsideworld_event_160")
    instance_create(0, 0, obj_dialoguer)
    con = 9
}
if (con == 9 && instance_exists(OBJ_WRITER) == 0)
{
    sans.y += 2
    sans.sprite_index = spr_sans_d
    sans.image_speed = 0.2
    if (sans.y > room_height)
    {
        con = 10
        alarm[4] = 20
    }
}
if (con == 11)
{
    global.msc = 0
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msg[0] = scr_gettext("obj_outsideworld_event_183")
    global.msg[1] = scr_gettext("obj_outsideworld_event_184")
    instance_create(0, 0, obj_dialoguer)
    con = 12
}
if (con == 12 && instance_exists(OBJ_WRITER) == 0)
{
    con = 13
    alarm[4] = 3
}
if (con == 13)
{
    und.sprite_index = spr_undyne_d
    und.y += 5
    und.image_speed = 0.334
}
if (con == 14)
{
    und.sprite_index = spr_undyne_r
    und.x += 7
    if (und.x > (room_width + 17))
    {
        con = 15
        alarm[4] = 15
    }
}
if (con == 16)
{
    global.msc = 0
    global.typer = 47
    global.facechoice = 6
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_219")
    instance_create(0, 0, obj_dialoguer)
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == 0)
{
    con = 18
    alarm[4] = 3
}
if (con == 18)
{
    al.sprite_index = spr_alphys_d
    al.y += 5
    al.image_speed = 0.334
}
if (con == 19)
{
    al.sprite_index = spr_alphys_r
    al.x += 7
    if (al.x > room_width)
    {
        con = 20
        alarm[4] = 95
    }
}
if (con == 21)
{
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_outsideworld_event_255")
    instance_create(0, 0, obj_dialoguer)
    con = 22
}
if (con == 22 && instance_exists(OBJ_WRITER) == 0)
{
    con = 23
    alarm[4] = 120
}
if (con == 24)
{
    asg.sprite_index = spr_asgore_l
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_outsideworld_event_273")
    scr_torface(1, 9)
    global.msg[2] = scr_gettext("obj_outsideworld_event_275")
    scr_asgface(3, 0)
    global.msg[4] = scr_gettext("obj_outsideworld_event_277")
    instance_create(0, 0, obj_dialoguer)
    con = 25
}
if (con == 25 && instance_exists(OBJ_WRITER) == 0)
{
    asg.sprite_index = spr_asgore_r
    asg.image_speed = 0.25
    asg.x += 5
    if (asg.x > room_width)
    {
        con = 26
        alarm[4] = 20
    }
}
if (con == 27)
{
    tor.sprite_index = spr_toriel_r
    con = 28
    alarm[4] = 60
}
if (con == 29)
{
    tor.sprite_index = spr_toriel_r
    con = 30
    global.msc = 0
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_309")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 30 && instance_exists(OBJ_WRITER) == 0)
{
    con = 31
    tor.sprite_index = spr_toriel_u
    con = 32
    alarm[4] = 90
}
if (con == 33)
{
    tor.sprite_index = spr_toriel_l
    alarm[4] = 50
    con = 34
}
if (con == 35)
{
    mc.sprite_index = spr_maincharar
    global.typer = 4
    global.msc = 820
    instance_create(0, 0, obj_dialoguer)
    con = 36
}
if (con == 100 && instance_exists(OBJ_WRITER) == 0)
{
    global.flag[512] = 0
    global.msc = 0
    global.facechoice = 1
    global.faceemotion = 8
    global.typer = 4
    global.msg[0] = scr_gettext("obj_outsideworld_event_344")
    global.msg[1] = scr_gettext("obj_outsideworld_event_345")
    global.msg[2] = scr_gettext("obj_outsideworld_event_346")
    global.msg[3] = scr_gettext("obj_outsideworld_event_347")
    global.msg[4] = scr_gettext("obj_outsideworld_event_348")
    global.msg[5] = scr_gettext("obj_outsideworld_event_349")
    global.msg[6] = scr_gettext("obj_outsideworld_event_350")
    global.msg[7] = scr_gettext("obj_outsideworld_event_351")
    global.msg[8] = scr_gettext("obj_outsideworld_event_352")
    global.msg[9] = scr_gettext("obj_outsideworld_event_353")
    global.msg[10] = scr_gettext("obj_outsideworld_event_354")
    instance_create(0, 0, obj_dialoguer)
    con = 101
}
if (con == 101 && instance_exists(OBJ_WRITER) == 0)
{
    tor.x -= 16
    tor.sprite_index = spr_toriel_handhold_r
    mc.visible = false
    con = 102
    alarm[4] = 40
}
if (con == 103)
{
    global.msg[0] = scr_gettext("obj_outsideworld_event_372")
    stayedwithher = 1
    con = 104
    instance_create(0, 0, obj_dialoguer)
}
if (con == 104 && instance_exists(OBJ_WRITER) == 0)
{
    tor.x += 2
    tor.image_speed = 0.125
    if (tor.x > (room_width + 100))
        con = 105
}
if (con == 105 && G7 == 0)
{
    blk += 0.01
    vol = caster_get_volume(global.currentsong)
    vol -= 0.01
    caster_set_volume(global.currentsong, vol)
    draw_set_alpha(blk)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 999, 999)
    draw_set_alpha(1)
    if (blk >= 1.6)
    {
        caster_free(-3)
        do_room_goto = true
    }
}
if (con == 105 && G7 > 0)
{
    con = 219
    alarm[4] = 50
}
if (con == 200 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.facechoice = 1
    global.faceemotion = 2
    global.typer = 4
    global.msg[0] = scr_gettext("obj_outsideworld_event_413")
    global.msg[1] = scr_gettext("obj_outsideworld_event_414")
    global.msg[2] = scr_gettext("obj_outsideworld_event_415")
    global.msg[3] = scr_gettext("obj_outsideworld_event_416")
    instance_create(0, 0, obj_dialoguer)
    con = 201
}
if (con == 201 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        tor.sprite_index = spr_toriel_u
    if (OBJ_WRITER.stringno == 3)
        tor.sprite_index = spr_toriel_l
}
if (con == 201 && instance_exists(OBJ_WRITER) == 0)
{
    tor.sprite_index = spr_toriel_u
    con = 203
    alarm[4] = 15
}
if (con == 204)
{
    tor.sprite_index = spr_toriel_r
    con = 205
    alarm[4] = 15
}
if (con == 206)
{
    alarm[4] = 27
    con = 207
}
if (con == 207)
{
    tor.x += 1
    tor.image_speed = 0.1
}
if (con == 208)
{
    tor.image_speed = 0
    tor.image_index = 0
    con = 209
    alarm[4] = 90
}
if (con == 210)
{
    tor.sprite_index = spr_toriel_l
    con = 211
    alarm[4] = 50
}
if (con == 212)
{
    global.flag[512] = 1
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_478")
    global.msg[1] = scr_gettext("obj_outsideworld_event_479")
    instance_create(0, 0, obj_dialoguer)
    con = 213
}
if (con == 213 && instance_exists(OBJ_WRITER) == 0)
{
    tor.sprite_index = spr_toriel_l
    con = 214
    alarm[4] = 60
}
if (con == 215)
{
    tor.sprite_index = spr_toriel_r
    con = 216
    alarm[4] = 80
}
if (con == 217)
{
    mc.sprite_index = spr_maincharau
    tor.x += 3
    tor.image_speed = 0.25
    if (tor.x >= (room_width + 100))
        con = 105
}
if (con == 220)
{
    floe = instance_create(90, 100, obj_sans_actor)
    floe.fun = true
    floe.image_blend = thisblend
    floe.sprite_index = spr_floweyrise_back
    floe.image_speed = 0.5
    con = 221
}
if (con == 221)
{
    con = 222
    alarm[4] = 80
}
if (con == 222)
{
    if (floe.image_index == 5)
    {
        floe.sprite_index = spr_floweyback
        floe.image_speed = 0
    }
}
if (con == 223)
{
    floe.sprite_index = spr_floweyback
    if (stayedwithher == 1)
    {
        floe.sprite_index = spr_floweydiag_r_back
        con = 224
        alarm[4] = 60
    }
    else
        con = 225
}
if (con == 225)
{
    blk += 0.01
    vol = caster_get_volume(global.currentsong)
    vol -= 0.01
    caster_set_volume(global.currentsong, vol)
    draw_set_alpha(blk)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 999, 999)
    draw_set_alpha(1)
    if (blk >= 1.6)
    {
        caster_free(-3)
        do_room_goto = true
    }
}
