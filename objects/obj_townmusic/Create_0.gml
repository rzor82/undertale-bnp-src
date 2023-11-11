event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1 && room != room_tundra_qcshop_room)
{
    global.currentsong = caster_load("music/town.ogg")
    caster_loop(global.currentsong, 1, 1)
    if (scr_murderlv() >= 6 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.25)
    if (scr_murderlv() >= 6 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.25)
}
if (caster_is_playing(global.currentsong) != 1 && room == room_tundra_qcshop_room)
{
    vol = 0.8
    global.currentsong = caster_load("music/shop.ogg")
    caster_loop(global.currentsong, vol, 1)
    if (scr_murderlv() >= 6 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.25)
}
