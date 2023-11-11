check = 0
if (room == room_water_blookhouse)
{
    event_user(2)
    if (global.flag[94] == 0)
        alarm[0] = 15
    check = 1
}
if (room == room_water_blookyard || room == ROOM_MONITOR || room == room_water_friendlyhub || room == room_battle)
    check = 1
if (check == 0)
    event_user(1)
