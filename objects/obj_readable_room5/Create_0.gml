myinteract = 0
read = 0
if (room == room_fire_cookingshow)
{
    if (global.plot < 135)
        instance_destroy()
}
if (room == room_water5 && global.entrance != 19)
    instance_destroy()
