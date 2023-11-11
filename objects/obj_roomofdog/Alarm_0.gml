caster_free(-3)
visible = true
type = 7
if (global.pirate == 0)
    type = floor(random(8))
image_xscale = 2
image_yscale = 2
if (type == 7)
{
    x = (room_width / 2)
    y = (room_height / 2)
    sprite_index = spr_tobdog_sleep_trash
    sleeptype = choose(0, 1, 2, 3)
    if (sleeptype == 0 || sleeptype == 2)
        thissong = caster_load("music/sigh_of_dog.ogg")
    if (sleeptype == 1 || sleeptype == 3)
        thissong = caster_load("music/mus_dogtarune.ogg")
    caster_loop(thissong, 1, (0.8 + random(0.2)))
    image_speed = 0.05
}
else
{
    x = ((room_width / 2) - (sprite_width / 2))
    y = ((room_height / 2) - (sprite_height / 2))
    thissong = caster_load("music/dance_of_dog.ogg")
    caster_loop(thissong, 1, (0.95 + random(0.1)))
    image_speed = 0.15
}
