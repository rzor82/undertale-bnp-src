if (con == 0)
{
    piano = scr_marker((room_width / 2), (room_height / 2), spr_tobdog_piano)
    with (piano)
    {
        image_xscale = 2
        image_yscale = 2
        image_speed = 0
        y -= (sprite_height / 2)
        x -= (sprite_width / 2)
    }
    alarm[4] = 90
    con = 1
}
else if (con == 2)
{
    dog = scr_marker(0, ((room_height / 2) + 3), spr_tobdogr)
    with (dog)
    {
        image_xscale = 2
        image_yscale = 2
        image_speed = 0.25
        x -= sprite_width
        hspeed = 3
        depth = -1
    }
    con = 3
}
else if (con == 3 && ((dog.x + dog.hspeed) + (dog.sprite_width / 2)) > ((room_width / 2) - 15))
{
    with (dog)
    {
        image_speed = 0
        image_index = 0
        hspeed = 0
    }
    alarm[4] = 150
    con = 4
}
else if (con == 5)
{
    with (dog)
    {
        var oldw = sprite_width
        var oldh = sprite_height
        sprite_index = spr_tobdog_pianosit
        y += ((oldh - sprite_height) * 1.75)
        x += ((oldw - sprite_width) / 2)
        y -= 1.5
    }
    comment = "HALF a pixel?!?!?!? WHAT!!!!!!"
    alarm[4] = 130
    con = 6
}
else if (con == 7)
{
    with (dog)
    {
        image_speed = 0.1
        sprite_index = spr_tobdog_pianoplay
    }
    if (songchoicechance == 0 || songchoicechance == 3)
        caster_play(mus_hometown, 1, 1)
    else if (songchoicechance == 1)
        caster_play(mus_homereprise, 1, 1)
    else if (songchoicechance == 2)
        caster_play(mus_deltalegend, 1, 1)
    con = 8
}
else if ((con == 8 && (!caster_is_playing(mus_hometown)) && songchoicechance == 0) || (con == 8 && (!caster_is_playing(mus_hometown)) && songchoicechance == 3) || (con == 8 && (!caster_is_playing(mus_homereprise)) && songchoicechance == 1) || (con == 8 && (!caster_is_playing(mus_deltalegend)) && songchoicechance == 2))
{
    with (dog)
    {
        image_speed = 0
        image_index = 0
    }
    alarm[4] = 30
    con = 9
}
else if (con == 10)
{
    dog.sprite_index = spr_tobdog_pianosit
    dog.y -= 2
    alarm[4] = 60
    con = 11
}
else if (con == 12)
{
    with (dog)
    {
        oldw = sprite_width
        oldh = sprite_height
        sprite_index = spr_tobdogr
        y += ((oldh - sprite_height) * 1.75)
        x += ((oldw - sprite_width) / 2)
        image_speed = 0.25
        hspeed = 3
    }
    con = 13
}
else if (con == 13 && dog.x > room_width)
{
    alarm[4] = 90
    con = 14
}
else if (con == 15)
{
    with (obj_npc_marker)
        instance_destroy()
    alarm[0] = 300
    con = 16
}
