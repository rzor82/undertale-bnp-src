myinteract = 0
climber = -4
bottom = -1
release = 0
buffer = 0
warp = 1
lock = 0
if ((room == room_ruins_sewer_end && global.entrance == 1) || (room == room_ruins_sewer3 && global.entrance == 2 && x > 200) || (room == room_ruins_sewer3 && global.entrance == 1 && x < 200) || (room == room_ruins_sewer_switchpuzz && global.entrance == 1) || (room == room_fire_hh_lower && global.entrance == 1))
{
    myinteract = 1
    warp = 0
}
