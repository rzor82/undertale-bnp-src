dogcheck = 1
if (global.currentroom < room_area1_room_of_fallen_stars)
    dogcheck = 0
else if (global.currentroom > room_icecave1 && global.currentroom < room_water13)
    dogcheck = 0
else if (global.currentroom == room_castle_trueexit)
    dogcheck = 0
else if (global.currentroom == room_outsideworld)
    dogcheck = 0
else if (global.currentroom == room_undertale_end)
    dogcheck = 0
else if (global.currentroom == room_tundra_sansroom)
    dogcheck = 0
else if (global.currentroom == room_tundra_sansroom_dark)
    dogcheck = 0
else if (global.currentroom == room_tundra_sansbasement)
    dogcheck = 0
if (global.currentroom == room_fire_spin || global.currentroom == room_water_candy || global.currentroom == room_water_mushroom || global.currentroom == room_water13 || global.currentroom == room_water_mirror)
    dogcheck = 1
if (dogcheck == 0)
{
    if (global.debug == true)
    {
        if room_exists(global.currentroom)
        {
            show_debug_message(("Entering dogchecked room " + room_get_name(global.currentroom)))
            dogcheck = 1
        }
        else
        {
            show_debug_message(("Failed to enter invalid room " + string(global.currentroom)))
            room_goto(room_of_dog)
        }
    }
    else
        room_goto(room_of_dog)
}
