xx = __view_get(0, view_current)
yy = __view_get(1, view_current)
mode = 0
mychoicex = (xx + 20)
mychoicey = (yy + 223)
if (room == room_area1_meetflowey || room == room_tundra_paproom)
{
    mychoicex = (xx + 154)
    mychoicey = (yy + 156)
}
if (room == room_water_undynefinal)
{
    mychoicex = (xx + 154)
    mychoicey = (yy + 110)
}
spdr = (distance_to_point(mychoicex, mychoicey) / 17)
move_towards_point(mychoicex, mychoicey, spdr)
if (global.flag[16] == 1 || global.ambush == 1)
{
    mychoicex = (xx + 154)
    mychoicey = (yy + 156)
    spdr = (distance_to_point(mychoicex, mychoicey) / 8)
    move_towards_point(mychoicex, mychoicey, spdr)
}
