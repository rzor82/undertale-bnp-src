buffer = 0
ammo = 0
moved = 0
gridl = 120
gridr = 180
gridu = 60
gridd = 120
active = false
myinteract = 0
snd = 0
win = 0
wincon = 0
wintimer = 0
idealammo = 0
restart = false
rstype = 0
if (room == room_fire_shootguy_1 && global.flag[375] == 1)
    win = 1
if (room == room_fire_shootguy_2 && global.flag[374] == 1)
    win = 1
if (room == room_fire_shootguy_3 && global.flag[399] == 1)
    win = 1
if (room == room_fire_shootguy_4 && global.flag[400] == 1)
    win = 1
if (room == room_fire_shootguy_5 && global.flag[418] == 1)
    win = 1
if (room == room_fire_shootguy_3)
{
    gridu = 40
    gridl = 120
    gridr = 220
    gridd = 120
}
if (room == room_fire_shootguy_4)
{
    gridu = 20
    gridl = 120
    gridr = 220
    gridd = 120
}
if (room == room_fire_core2)
{
    gridl = x
    gridr = (x + sprite_width)
    gridd = y
    if instance_exists(obj_targetguy)
        gridu = (obj_targetguy.y + obj_targetguy.sprite_height)
    else
        gridu = __view_get(1, 0)
}
alarm[1] = 1
shots_fired = 0
skipped = false
