image_index = obj_mainchara.image_index
if (global.debug == true)
{
    if keyboard_check_pressed(vk_lalt)
    {
        if (mirror_state == 3)
            mirror_state = 0
        else
            mirror_state += 1
    }
}
