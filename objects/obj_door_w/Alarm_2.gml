global.entrance = 23
instance_create(0, 0, obj_persistentfader)
if (room == room_tundra_town)
    room_goto(room_tundra_grillby)
if (room == room_tundra_grillby)
    room_goto(room_tundra_town)
if (room == room_water_friendlyhub)
    room_goto(room_water_blookyard)
if (room == room_water_blookyard)
    room_goto(room_water_friendlyhub)
if (room == room_water_gersonshop)
    room_goto(room_water_shop)
if (room == room_fire7)
    room_goto(room_fire9)
if (room == room_fire9)
    room_goto(room_fire7)
if (room == room_water12)
    room_goto(room_water13)
if (room == room_water_onionsan)
    room_goto(room_water_mushroom)
if (room == room_water13)
    room_goto(room_water12)
if (room == ROOM_MONITOR)
    room_goto(room_fire6A)
