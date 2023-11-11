if (room == room_tundra9 && global.interact == 0 && (!global.debugwarp))
    crossword = 1
else if (room == room_fire_walkandbranch2 && global.entrance == 24 && global.plot < 164)
    north_south = 1
else if (room == room_sanscorridor && global.entrance == 1 && global.plot < 201)
    sans = 1
if (global.debug == true)
    event_user(0)
