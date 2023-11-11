if (array_length_1d(managerarr) > i && instance_exists(obj_snowstep))
{
    managerarr[i].alarm[0] = 1
    i++
}
else if (!instance_exists(obj_snowstep))
    instance_destroy()
alarm[0] = 20
