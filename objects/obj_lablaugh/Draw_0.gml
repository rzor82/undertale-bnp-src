if (image_index > 19)
{
    sprite_index = spr_tv_floweyx_laugh_o
    image_speed = 0.25
    image_index = 0
}
if (con == -2 && obj_mainchara.moving)
{
    global.interact = 1
    with (obj_doorparent)
    {
        alarm[2] = -1
        touched = false
    }
    with (obj_mainchara)
    {
        x = xprevious
        y = yprevious
    }
    with (obj_unfader)
        instance_destroy()
    with (obj_soulvision)
    {
        draw_override = 0
        darken = false
        alpha = 1
        fade = 0
    }
    con = -1
    alarm[4] = 5
}
if (spook && con == 0)
{
    audio_sound_gain(global.currentsong, 0, 0)
    snd_play(snd_b)
    caster_play(mus_sfx_yowl, 0.8, 1)
    with (obj_soulvision)
        darken = true
    image_alpha = 1
    image_speed = 1
    alarm[4] = 30
    con = 1
}
if (con == 1)
{
    with (obj_soulvision)
        other.depth = (depth - 1)
}
if (con == 2)
{
    image_speed = 0
    if (image_alpha < 0.02)
    {
        image_alpha = 0
        alarm[4] = 30
        con = 3
    }
    else
        image_alpha -= 0.02
    if (image_alpha < 0.25 && audio_sound_get_gain(global.currentsong) == 0)
        audio_sound_gain(global.currentsong, 1, 250)
    with (obj_soulvision)
    {
        fade = 0
        alpha = (max_alpha * other.image_alpha)
    }
}
if (con == 4)
{
    global.flag[478] += 1
    global.flag[479] = 0
    global.interact = 0
    spook = 0
    con = 0
    instance_destroy()
}
draw_sprite_ext(spr_exc, 0, obj_mainchara.x, (obj_mainchara.y - 16), 1, 1, 0, c_white, image_alpha)
if (con == 2)
{
    cc = ((1 - image_alpha) / 0.02)
    image_alpha /= 2
    scr_fx_waver(0.1, cc)
    scr_fx_waver(0.1, (-cc))
    image_alpha *= 2
}
else
{
    image_xscale = 1
    image_yscale = 1
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
