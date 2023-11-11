event_user(0)
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == room_area1_room_of_fallen_stars)
    {
        global.currentsong = caster_load("music/starroom.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
    else if (global.flag[221] == 0)
    {
        comment = "should be the md5 of the original ruins"
        if (md5_file("mus_ruins.ogg") == "fd5e0134b74c8b891b2f8103a1e5792b")
            pitch = (global.flag[45] == 4 ? 0.63 : 1)
        else
            pitch = (global.flag[45] == 4 ? 0.6 : 0.94)
        global.currentsong = caster_load("music/ruins.ogg")
        caster_loop(global.currentsong, 1, pitch)
    }
    else
    {
        againstupidUTMTisntlettingmedothisprogrammingthanks = 0
        if (global.plot > 24)
        {
            global.currentsong = caster_load("music/ruins.ogg")
            caster_loop(global.currentsong, 1, 0.25)
        }
        else
        {
            global.currentsong = caster_load("music/toomuch.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
    }
}
