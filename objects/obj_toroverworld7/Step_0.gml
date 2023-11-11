script_execute(scr_depth, 0, 0, 0, 0, 0)
if (instance_exists(obj_dialoguer) == 0 && conversation == 1)
{
    global.interact = 0
    conversation = 2
    myinteract = 0
    path_start(path_walkright, 4, path_action_continue, 0)
    instance_create(5, 0, obj_plotwall3)
    image_speed = 0.3
    global.plot = 8.5
    global.currentsong = caster_load("music/tension.ogg")
    caster_loop(global.currentsong, 1, 1)
}
if (conversation == 2)
{
    if (x > 400)
        image_alpha -= 0.08
    if (image_alpha < 0.1)
        instance_destroy()
}
scr_npcdir(0)
