global.interact = 3
instance_create(0, 0, obj_musfadeout)
instance_create(0, 0, obj_unfader)
if (touched == false)
{
    alarm[2] = 13
    touched = true
}
