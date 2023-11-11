if (room == room_water5)
{
    if (global.plot < 107)
    {
        global.plot = 107
        instance_create(40, 340, obj_stalkerflowey)
    }
}
if (room == room_water19)
{
    if (global.plot < 119)
    {
        global.plot = 119
        instance_create(140, 420, obj_stalkerflowey)
        obj_echoflower.xxx = 1
    }
}
if (room == room_sanscorridor)
{
    if instance_exists(obj_asgore_actor)
    {
        with (obj_asgore_actor)
        {
            global.flag[87] = 50
            solid = 0
            hspeed = 3
            image_speed = 0.2
        }
    }
}
if (room == room_fire_hotelfront_1)
    global.flag[257] = 2
if (room == room_castle_throneroom)
{
    global.plot = 207
    instance_create(150, 450, obj_stalkerflowey)
}
if (room == room_water_friendlyhub)
{
    if (global.flag[94] > 0 && global.flag[95] == 0 && global.interact == 0)
    {
        global.interact = 1
        global.battlegroup = 46
        instance_create(0, 0, obj_battler)
    }
    else
        return;
}
if (room == room_fire_cookingshow && global.interact == 0)
{
    global.interact = 1
    obj_cookshowevent.con = 50
}
instance_destroy()
