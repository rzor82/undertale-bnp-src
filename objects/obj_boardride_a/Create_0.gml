riddenon = 0
if (room == room_water7 && global.plot > 108)
{
    instance_create(x, y, obj_solidsmall)
    instance_destroy()
}
if (room == room_water7 && riddenon > 0)
{
    instance_create(x, y, obj_solidsmall)
    instance_destroy()
}
interacted = 0
active = true
finalx = 1000
