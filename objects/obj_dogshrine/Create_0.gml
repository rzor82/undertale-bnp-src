dogtimer = 0
image_speed = 0.1
x = 146
y = 49
if (caster_is_playing(global.currentsong) != 1)
{
    if (global.flag[294] >= 6)
    {
        global.currentsong = mus_dogshrine_2
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = mus_dogshrine_1
        caster_loop(global.currentsong, 1, 1)
    }
}
doglevel = global.flag[294]
if (doglevel == 1 && global.flag[295] == 1)
    global.flag[295] = 2
if (doglevel == 15)
    global.flag[295] = 6
if (global.flag[292] >= global.flag[293])
    global.flag[292] = 0
if (global.flag[294] == 0)
    global.flag[293] = 2
if (global.flag[294] == 1)
    global.flag[293] = 4
if (global.flag[294] == 2)
    global.flag[293] = 6
if (global.flag[294] == 3)
    global.flag[293] = 8
if (global.flag[294] == 4)
    global.flag[293] = 10
if (global.flag[294] == 5)
    global.flag[293] = 13
if (global.flag[294] == 6)
    global.flag[293] = 16
if (global.flag[294] == 7)
    global.flag[293] = 19
if (global.flag[294] == 8)
    global.flag[293] = 22
if (global.flag[294] == 9)
    global.flag[293] = 25
if (global.flag[294] == 10)
    global.flag[293] = 30
if (global.flag[294] == 11)
    global.flag[293] = 35
if (global.flag[294] == 12)
    global.flag[293] = 40
if (global.flag[294] == 13)
    global.flag[293] = 50
if (global.flag[294] == 14)
    global.flag[293] = 70
if (global.flag[294] == 15)
    global.flag[293] = 0
dogshrine = scr_marker(0, 0, spr_dogshrine)
with (dogshrine)
    depth = 900000
donationbox = scr_marker(137, 76, spr_ds_donationbox)
with (donationbox)
{
    depth = 860000
    mysolid = instance_create(x, (y - 5), obj_solidsmall)
    myint = instance_create((x + 8), (y - 5), obj_readable_room5)
    myint.image_xscale = 1.5
    mysolid.image_xscale = 2.2
    myint.dognumber = 1
}
if (doglevel >= 1)
{
    fairylights = scr_marker(46, 6, spr_ds_fairylights)
    with (fairylights)
        depth = 960000
}
if (doglevel >= 2)
{
    dango = scr_marker(226, 160, spr_ds_dango)
    with (dango)
    {
        scr_depth()
        mysolid = instance_create(x, (y + 8), obj_solidsmall)
        myint = instance_create(x, (y + 8), obj_readable_room5)
        myint.image_xscale = 0.8
        mysolid.image_xscale = 0.8
        myint.dognumber = 2
    }
}
if (doglevel >= 6)
{
    boombox = scr_marker(232, 80, spr_ds_boombox)
    with (boombox)
    {
        scr_depth()
        mysolid = instance_create(x, (y - 2), obj_solidsmall)
        myint = instance_create(x, (y - 2), obj_readable_room5)
        myint.image_xscale = 1.4
        mysolid.image_xscale = 1.4
        myint.dognumber = 3
    }
}
if (doglevel >= 7)
{
    cd = scr_marker(256, 112, spr_ds_cd)
    with (cd)
    {
        depth = 900000
        myint = instance_create(x, y, obj_readable_room5)
        myint.image_xscale = 0.5
        myint.image_yscale = 0.3
        myint.dognumber = 4
    }
}
if (doglevel >= 5)
{
    with (dogshrine)
        image_index = 1
}
if (doglevel >= 3)
{
    ad = scr_marker(48, 42, spr_ds_advertisement)
    with (ad)
    {
        scr_depth()
        image_speed = 0.2
        mysolid = instance_create((x + 22), (y + 58), obj_solidsmall)
        myint = instance_create((x + 22), (y + 58), obj_readable_room5)
        myint.image_yscale = 0.8
        mysolid.image_yscale = 0.8
        myint.dognumber = 5
    }
}
if (doglevel >= 4)
{
    photo1 = scr_marker(194, 160, spr_ds_papphoto)
    with (photo1)
    {
        scr_depth()
        mysolid = instance_create(x, (y + 8), obj_solidsmall)
        myint = instance_create(x, (y + 8), obj_readable_room5)
        myint.image_xscale = 0.8
        mysolid.image_xscale = 0.8
        myint.dognumber = 6
    }
}
if (doglevel >= 8)
{
    photo2 = scr_marker(108, 80, spr_ds_papphoto)
    with (photo2)
    {
        scr_depth()
        mysolid = instance_create(x, (y - 4), obj_solidsmall)
        myint = instance_create(x, (y - 4), obj_readable_room5)
        myint.image_xscale = 0.8
        mysolid.image_xscale = 0.8
        myint.dognumber = 7
    }
}
if (doglevel >= 9)
{
    rope1 = scr_marker(60, 150, spr_ds_rope)
    with (rope1)
    {
        depth = 900000
        myint = instance_create((x - 3), (y + 4), obj_readable_room5)
        myint.image_yscale = 0.6
        myint.dognumber = 8
    }
}
if (doglevel >= 10)
{
    with (dogshrine)
        image_index = 2
    with (donationbox)
        image_index = 1
}
if (doglevel >= 11)
{
    dogtap = scr_marker(257, 136, spr_ds_dogtap)
    with (dogtap)
    {
        scr_depth()
        mysolid = instance_create(x, (y + 13), obj_solidsmall)
        myint = instance_create(x, (y + 13), obj_readable_room5)
        myint.image_yscale = 0.8
        mysolid.image_yscale = 0.8
        myint.dognumber = 9
    }
}
if (doglevel >= 12)
{
    blueprint = scr_marker(88, 162, spr_ds_blueprints)
    with (blueprint)
    {
        depth = 900000
        myint = instance_create((x + 2), (y - 1), obj_readable_room5)
        myint.image_yscale = 0.6
        myint.image_xscale = 2
        myint.dognumber = 10
    }
}
if (doglevel >= 13)
{
    rope2 = scr_marker(52, 124, spr_ds_rope)
    with (rope2)
    {
        depth = 900000
        myint = instance_create((x - 3), (y + 4), obj_readable_room5)
        myint.image_yscale = 0.6
        myint.dognumber = 11
    }
}
if (doglevel >= 14)
{
    cert = scr_marker(193, 67, spr_ds_certification)
    with (cert)
    {
        scr_depth()
        mysolid = instance_create((x + 1), (y + 4), obj_solidsmall)
        myint = instance_create((x + 1), (y + 4), obj_readable_room5)
        myint.image_xscale = 1
        mysolid.image_xscale = 1
        myint.dognumber = 12
    }
}
if (doglevel >= 15)
{
    with (dogshrine)
        image_index = 3
    with (donationbox)
        image_index = 2
}
