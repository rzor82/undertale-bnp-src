global.interact = 3
instance_create(0, 0, obj_unfader)
if (room == room_water11 && global.flag[7] == 0)
    instance_create(0, 0, obj_musfadeout)
if (touched == false)
{
    alarm[2] = 14
    touched = true
}
