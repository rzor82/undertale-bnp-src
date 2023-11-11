bg_siner = 0
doglevel = global.flag[294]
if (caster_is_playing(global.currentsong) != 1 && global.flag[7] == 0)
{
    global.currentsong = mus_wind
    caster_loop(global.currentsong, 0.5, 0.5)
}
door = instance_create(135, 18, obj_dogshrine_door)
door.depth = 910000
op[0] = spr_ds2_shrine_broken1
ox[0] = 52
oy[0] = 17
op[1] = spr_ds2_lights
ox[1] = 50
oy[1] = 8
op[2] = spr_ds2_portrait1
ox[2] = 90
oy[2] = 78
op[3] = spr_ds2_certificate
ox[3] = 204
oy[3] = 70
op[4] = spr_ds2_boombox
ox[4] = 236
oy[4] = 82
op[5] = spr_ds_donationbox_trash
ox[5] = 185
oy[5] = 124
op[6] = spr_ds2_mascot1
ox[6] = 56
oy[6] = 98
op[7] = spr_ds2_rope
ox[7] = 46
oy[7] = 126
op[8] = spr_ds2_rope
ox[8] = 63
oy[8] = 142
op[9] = spr_ds2_blueprint
ox[9] = 65
oy[9] = 166
op[10] = spr_ds2_portrait2
ox[10] = 198
oy[10] = 158
op[11] = spr_ds2_dango
ox[11] = 230
oy[11] = 162
op[12] = spr_ds2_dogtap
ox[12] = 260
oy[12] = 130
op[13] = spr_ds2_cd
ox[13] = 257
oy[13] = 109
if (doglevel == 0)
{
    op[0] = spr_ds2_shrine_broken1
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[10] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
    ox[6] -= 400
    ox[1] -= 400
    ox[11] -= 400
}
else if (doglevel == 1)
{
    op[0] = spr_ds2_shrine_broken1
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[10] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
    ox[6] -= 400
    ox[11] -= 400
}
else if (doglevel == 2)
{
    op[0] = spr_ds2_shrine_broken1
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[10] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
    ox[6] -= 400
}
else if (doglevel == 3)
{
    op[0] = spr_ds2_shrine_broken1
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[10] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
}
else if (doglevel == 4)
{
    op[0] = spr_ds2_shrine_broken1
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
}
else if (doglevel == 5)
{
    op[0] = spr_ds2_shrine_broken2
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[13] -= 400
    ox[4] -= 400
    ox[2] -= 400
}
else if (doglevel == 6)
{
    op[0] = spr_ds2_shrine_broken2
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[13] -= 400
    ox[2] -= 400
}
else if (doglevel == 7)
{
    op[0] = spr_ds2_shrine_broken2
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
    ox[2] -= 400
}
else if (doglevel == 8)
{
    op[0] = spr_ds2_shrine_broken2
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
    ox[7] -= 400
}
else if (doglevel == 9)
{
    op[0] = spr_ds2_shrine_broken2
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
}
else if (doglevel == 10)
{
    op[5] = spr_ds2_goldbox
    op[0] = spr_ds2_shrine_broken3
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
    ox[12] -= 400
}
else if (doglevel == 11)
{
    op[5] = spr_ds2_goldbox
    op[0] = spr_ds2_shrine_broken3
    ox[3] -= 400
    ox[8] -= 400
    ox[9] -= 400
}
else if (doglevel == 12)
{
    op[5] = spr_ds2_goldbox
    op[0] = spr_ds2_shrine_broken3
    ox[3] -= 400
    ox[8] -= 400
}
else if (doglevel == 13)
{
    op[5] = spr_ds2_goldbox
    op[0] = spr_ds2_shrine_broken3
    ox[3] -= 400
}
else if (doglevel == 15)
{
    op[5] = spr_ds2_goldbox_complete
    op[0] = spr_ds2_shrine
}
comment = "don't even ask. please."
for (i = 0; i < 2; i += 1)
{
    oo[i] = scr_marker(ox[i], oy[i], op[i])
    with (oo[i])
        depth = 900000
}
for (i = 2; i < 14; i += 1)
{
    oo[i] = instance_create(ox[i], oy[i], obj_sign_room)
    oo[i].sprite_index = op[i]
    with (oo[i])
        scr_depth()
}
