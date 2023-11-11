myinteract = 0
image_speed = 0.1
if (room == room_ice_dog)
{
    scr_depth()
    caster_free(-3)
    global.currentsong = caster_load("music/dogroom.ogg")
    caster_loop(global.currentsong, 0.8, 1)
}
if (room == room_tundra_iceentrance)
{
    if (scr_enemynpc1() == 1 || scr_murderlv() >= 2)
        instance_destroy()
}
battlecon = 0
