script_execute(scr_depth, 0, 0, 0, 0, 0)
if (instance_exists(obj_dialoguer) == 0 && conversation == 1)
{
    path_start(path_goofyrock, 1, path_action_stop, 0)
    alarm[1] = 11
    global.interact = 1
    conversation += 1
    if (obj_mainchara.x > (x + 15))
        obj_mainchara.hspeed = 1
}
if (instance_exists(obj_dialoguer) == 0 && conversation == 4)
{
    path_speed = 1
    alarm[1] = 11
    global.interact = 1
    conversation += 1
    if (obj_mainchara.depth > depth)
        obj_mainchara.vspeed = -1
}
if (instance_exists(obj_dialoguer) == 0 && conversation == 7)
{
    path_speed = 1
    alarm[1] = 61
    global.interact = 1
    conversation += 1
    if (obj_mainchara.depth < depth)
        obj_mainchara.vspeed = 1
    alarm[2] = 11
}
if (instance_exists(obj_dialoguer) == 0 && conversation == 10.5)
{
    with (obj_spikes_room)
        image_index = 0
    path_speed = 2
    alarm[1] = 11
    conversation += 0.5
}
if (instance_exists(obj_dialoguer) == 0 && conversation == 13)
{
    path_speed = 1
    alarm[1] = 21
    global.interact = 1
    conversation += 1
    if (obj_mainchara.x > (x + 15))
        obj_mainchara.hspeed = 1
}
if (conversation == 15)
    x = 280
if (instance_exists(obj_dialoguer) && (instance_exists(obj_battleblcon) || instance_exists(obj_battler)))
{
    with (obj_speedrun_tracker)
        rock = 1
}
