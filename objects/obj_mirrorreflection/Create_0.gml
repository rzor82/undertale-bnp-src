flip = 0
flip2 = 1
flip_x = 1
flip_y = 1
flip_y2 = 0
horizon = 114
ceiling = 73
switch room
{
    case room_truelab_mirror:
        horizon -= 20
        ceiling -= 20
        break
    case 33:
        horizon -= 40
        ceiling -= 80
        depth = 1000001
        break
    case 35:
        horizon -= 60
        ceiling -= 80
        break
    case 141:
        horizon -= 40
        ceiling -= 80
        break
    case 303:
        horizon -= 40
        ceiling -= 800
        break
}

spr_facing = 0
draw_armor = 1
inwater = 0
mirror_state = 0
if (scr_murderlv() >= 2 || global.flag[221] == 1)
    mirror_state = 1
if ossafe_file_exists("system_information_963")
    mirror_state = 2
if (room == room_water_mirror)
{
    mirror_state = 3
    draw_armor = 0
}
fun = false
