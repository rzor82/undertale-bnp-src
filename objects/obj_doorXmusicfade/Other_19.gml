global.entrance = 24
global.interact = 3
instance_create(0, 0, obj_unfader)
if (global.flag[7] == 0)
    instance_create(0, 0, obj_musfadeout)
if (touched == false)
{
    alarm[2] = 13
    touched = true
}
