heartexist = instance_exists(obj_heart)
if ((!heartexist) || obj_heart.specialscene == 0)
{
    global.myfight = -9998
    global.mnfight = -9998
    with (obj_battlecontroller)
        process_next_frame = 1
}
if (scr_monstersum() == 0)
    return;
