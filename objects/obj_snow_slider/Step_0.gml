if (con == 0)
{
    if place_meeting(x, y, obj_mainchara)
    {
        with (obj_mainchara)
        {
            visible = false
            cutscene = true
            global.interact = 1
        }
        slidechara = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharal_slide)
        with (slidechara)
        {
            hspeed = -1
            vspeed = 1
        }
        camfollow = scr_marker(obj_mainchara.x, obj_mainchara.y, sprite_index)
        with (camfollow)
        {
            hspeed = -1
            vspeed = 1
            visible = false
        }
        con = 1
        slidesnd = caster_loop(snd_snow_slide, 1, 1)
        slidesndvol = 0.01
        slidesndpit = 0.5
        if (room == room_tundra_snowpuzz)
            alarm[0] = 35
    }
}
if (con == 1)
{
    if instance_exists(obj_shadowcam)
    {
        with (obj_shadowcam)
            instance_destroy()
    }
    with (slidechara)
    {
        if (hspeed > -3)
            hspeed -= 0.05
        if (vspeed < 3)
            vspeed += 0.05
    }
    with (camfollow)
    {
        if (hspeed > -3)
            hspeed -= 0.05
        if (vspeed < 3)
            vspeed += 0.05
    }
    if (slidesndvol < 1)
        slidesndvol += 0.1
    if (slidesndpit < 1)
        slidesndpit += 0.1
    caster_set_volume(slidesnd, slidesndvol)
    caster_set_pitch(slidesnd, slidesndpit)
}
if (con == 2)
{
    snd_play(snd_snow_trip)
    caster_free(slidesnd)
    with (slidechara)
    {
        sprite_index = spr_mainchara_lie_2
        image_xscale = -1
        y += 5
        x += 24
        vspeed = 0
        friction = 0.1
    }
    with (camfollow)
    {
        vspeed = -0.6
        friction = 0.1
    }
    con = 3
    alarm[0] = 60
}
if (con == 4)
{
    obj_mainchara.x = round((slidechara.x - 25))
    obj_mainchara.y = round((slidechara.y - 13))
    __view_set(0, 0, round(__view_get(0, 0)))
    __view_set(1, 0, round(__view_get(1, 0)))
    with (obj_mainchara)
    {
        cutscene = false
        visible = true
        global.interact = 0
    }
    with (slidechara)
        instance_destroy()
    with (camfollow)
        instance_destroy()
    con = 0
    global.facing = 3
}
