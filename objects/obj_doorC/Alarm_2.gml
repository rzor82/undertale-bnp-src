global.entrance = 4
instance_create(0, 0, obj_persistentfader)
if (room == room_water_firepuzzle)
    room_goto(room_water_mirror)
else if (room == room_ruins10)
    room_goto(room_ruins_sewer_tease)
else if (room == room_fire_boysnightout)
    room_goto(room_fire_spin)
else if (room == room_tundra_inn_1f)
    room_goto(room_tundra_inn_2f_real)
else if (room == room_tundra1)
{
    if (global.plot >= 35)
        room_goto(room_tundra2_alt)
    else
        room_goto(room_tundra2)
}
else if (room == room_tundra2_alt || room == room_tundra2)
    room_goto(room_tundra1)
else if (room == room_ruins17)
    room_goto(room_ruins_sewer1)
else if (room == room_tundra4)
    room_goto(room_tundra4A)
else if (room == room_fire_hh_entrance)
    room_goto(room_fire_hh_mainhub)
else if (room == room_tundra_spaghetti)
    room_goto(room_tundra_lake)
else if (room == room_tundra_teenhangoutroom)
    room_goto(room_tundra3A)
else if (room == room_ruins_home_walkway)
    room_goto(room_ruins18)
else if (room == room_fire_core_controlroom)
    room_goto(room_fire_core1)
else if (room == room_ruins_sewer2)
    room_goto(room_ruins_sewer3)
else if (room == room_fire_hh_mainhub)
    room_goto(room_fire_hh_shortcut)
else if (room == room_ruins_sewer3)
    room_goto(room_ruins_sewer4)
else if (room == room_tundra4A)
    room_goto(room_tundra_turnbeforeteenhangout)
else if (room == room_ruins_sewer_switchpuzz)
    room_goto(room_ruins_sewer_pretrouble)
else if (room == room_ruins_sewer_pretrouble)
    room_goto(room_ruins_sewer_switchpuzz)
else if (room == room_water_bhouse_splitpath)
    room_goto(room_water_bhouse_stairs)
else if (room == room_water_bhouse_cragview)
    room_goto(room_water_bhouse_splitpath)
else if (room == room_water_mushroom)
{
    with (obj_unfader)
        instance_destroy()
    global.facing = 2
    global.interact = 0
    obj_mainchara.x = obj_markerC.x
    obj_mainchara.y = obj_markerC.y
    obj_npc_room.warp_times++
    touched = false
    return;
}
else
    room_goto(room_next(room_next(room)))
