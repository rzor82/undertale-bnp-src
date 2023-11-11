if (global.debug == true)
{
    global.flag[498] = 1
    if keyboard_check(vk_shift)
        global.flag[26] -= 1
    else
    {
        with (all)
        {
            if variable_instance_exists(id, "murder")
                murder = 1
        }
        global.flag[26] += 1
        global.flag[27] = 0
    }
    if (global.flag[26] < 0)
    {
        with (all)
        {
            if variable_instance_exists(id, "murder")
                murder = 0
        }
        global.flag[498] = 0
        global.flag[26] = 0
        global.flag[27] = 1
    }
    if (global.flag[26] > 16)
        global.flag[26] = 16
}
