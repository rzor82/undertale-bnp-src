if (global.phasing == 0 && global.interact == 0)
{
    global.interact = 4
    global.phasing = 1
    alarm[0] = 10
    ns = 1
    instance_create(other.x, (other.y + 20), obj_cosmetichole)
    if (instance_number(obj_cosmetichole) > 10 && room == room_ruins10)
    {
        ns = 0
        snd_play(snd_hero)
        with (obj_cosmetichole)
            destroyme = 1
        global.interact = 0
        global.phasing = 0
        instance_destroy()
    }
    if (instance_number(obj_cosmetichole) >= 1000)
    {
        with (obj_cosmetichole)
            destroyme = 1
        instance_create(other.x, (other.y + 20), obj_cosmetichole)
    }
    if (ns == 1)
    {
        if (scr_murderlv() < 2 && global.flag[221] == 0 && random(1) < 0.1)
        {
            with (instance_create(other.x, other.y, obj_mainchara_spin))
                spin_time = 15
        }
        snd_play(snd_noise)
    }
}
