if (global.debug == true && (!instance_exists(obj_battler)))
{
    if instance_exists(obj_battlegroup_input)
    {
        with (obj_battlegroup_input)
            instance_destroy()
        if (global.battlegroup == 0)
        {
            global.interact = 0
            return;
        }
        if (global.flag[16] == 1)
        {
            global.flag[15] = 0
            global.flag[16] = 0
        }
        instance_create(0, 0, obj_battler)
        if (global.battlegroup == 200)
            global.interact = 0
    }
    else if (global.interact == 0)
    {
        global.interact = 1
        instance_create(0, 0, obj_battlegroup_input)
    }
}
