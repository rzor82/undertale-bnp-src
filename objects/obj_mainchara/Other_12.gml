if (global.interact == 0 && global.flag[17] == 0 && ((!instance_exists(obj_snowgen)) || (!obj_snowgen.shove)))
{
    with (obj_overworldcontroller)
        exit_buffer = 1
    global.pca = instance_exists(obj_dialoguer)
    snd_play(snd_squeak)
    global.interact = 5
    global.menuno = 0
    global.menusurfx = -320
    global.menusurfy = 0
    global.menuoutx = -320
    global.menuouty = 0
    control_clear(2)
}
