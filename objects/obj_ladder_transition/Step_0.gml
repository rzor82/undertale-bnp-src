if (myinteract == 1)
{
    with (obj_ladder_interactable)
        lock = 1
    event_user(0)
    global.interact = 3
    snd_play(snd_escaped)
    instance_create(0, 0, obj_unfader)
    myinteract = 2
    alarm[4] = 14
}
