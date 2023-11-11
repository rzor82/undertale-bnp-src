if (global.tloss >= 1)
{
    caster_free(-3)
    visible = true
    image_xscale = 4
    image_yscale = 4
    x = ((room_width / 2) - (sprite_width / 2))
    y = ((room_height / 2) - (sprite_height / 2))
    mypitch = (0.95 + random(0.1))
    myspeed = 0.15
    thissong = caster_load("music/dance_of_dog.ogg")
    caster_loop(thissong, 1, mypitch)
    noise = caster_load("music/f_noise.ogg")
    image_speed = myspeed
    alarm[4] = 1
}
else
{
    caster_free(-3)
    visible = true
    image_xscale = 4
    image_yscale = 4
    x = ((room_width / 2) - (sprite_width / 2))
    y = ((room_height / 2) - (sprite_height / 2))
    mypitch = (0.95 + random(0.1))
    myspeed = 0.15
    thissong = caster_load("music/dance_of_dog.ogg")
    caster_loop(thissong, 1, mypitch)
    noise = caster_load("music/f_noise.ogg")
    image_speed = myspeed
    alarm[4] = 270
}
