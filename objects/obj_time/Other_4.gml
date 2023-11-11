scr_preload_textures()
if (global.paused == false)
{
    if ((room >= room_tundra1 && room <= room_tundra_dock) || room == room_fogroom || room == room_fire_lavalake || room == room_fire_cliffview || room == room_fire_savepoint1 || room == room_fire_coreview2 || room == room_fire_precore || room == room_tundra_turnbeforeteenhangout || room == room_tundra_teenhangoutroom || room == room_tundra4A || room == room_tundra_lake || room == room_fire6 || room == room_fire6A || room == room_fire_lasers1 || room == room_fire7 || room == room_fire8 || room == room_fire9 || room == room_fire2 || room == room_fire1 || room == room_tundra_mkidintro || room == room_tundra2_alt)
    {
        if (!instance_exists(obj_snowgen))
            instance_create(0, 0, obj_snowgen)
        if (room == room_fire_lavalake || room == room_fire_cliffview || room == room_fire_savepoint1 || room == room_fire_coreview2 || room == room_fire_precore || room == room_fire6 || room == room_fire6A || room == room_fire_lasers1 || room == room_fire7 || room == room_fire8 || room == room_fire9 || room == room_fire2 || room == room_fire1)
        {
            with (obj_snowgen)
            {
                snow_col = 8421504
                limit = 20
                if (room == room_fire_precore && scr_murderlv() >= 12)
                {
                    wind = 15
                    shove = 1
                    limit = 200
                    instawind = 1
                }
                else
                    slowfall = 1
            }
        }
        else if ((room == room_tundra_town || room == room_tundra_town2) && scr_murderlv() >= 7)
        {
            with (obj_snowgen)
            {
                instawind = 1
                limit = 400
                wind = -5
                shove = 0
            }
        }
    }
}
