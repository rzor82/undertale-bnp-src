var tmp;
if (!lock)
{
    var dir = 0
    if (keyboard_check_pressed(global.keybind[1]) || keyboard_check_pressed(global.keybind[2]))
        dir++
    if (keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[3]))
        dir--
    if (dir != 0)
    {
        var swap = noone
        for (var i = 0; i < 4; i++)
            tmp[i] = hearts[i]
        if (dir < 0)
        {
            swap = hearts[0]
            for (i = 0; i < 3; i++)
                hearts[i] = tmp[(i + 1)]
            hearts[3] = swap
        }
        else
        {
            swap = hearts[3]
            for (i = 1; i < 4; i++)
                hearts[i] = tmp[(i - 1)]
            hearts[0] = swap
        }
        for (i = 0; i < 4; i++)
        {
            with (hearts[i])
            {
                scr_getideal(other.positions[i, 0], other.positions[i, 1])
                index = i
            }
        }
        show_debug_message(hearts)
    }
    for (i = 0; i < 4; i++)
    {
        with (hearts[i])
            scr_moveideal(other.movediv)
    }
}
if (con == 1)
{
    targetalpha = 1
    snd_play(snd_spearappear)
    alarm[4] = (boss.didshield ? 15 : 60)
    lock = 0
    con = 2
}
else if (con == 2 && (!boss.didshield))
    targetalpha = 1
else if (con == 3)
{
    boss.didshield = 1
    if (!flashed)
    {
        flasher = scr_flash(0.05)
        with (flasher)
        {
            sprite_index = scr_create_shadow_ext(spr_heart, 0, c_white)
            custom = 1
        }
        flashed = 1
    }
    boss.flashphase = 2
    boss.flashalpha = 1
    snd_stop(mus_create)
    snd_play(mus_create)
    var pos = obj_heart.index
    var offset = choose(-1, 1)
    var freepos = (pos + offset)
    if (freepos > 3)
        freepos -= 4
    else if (freepos < 0)
        freepos += 4
    for (i = 0; i < 4; i++)
    {
        if (i == freepos)
            zones[i] = 0
        else
        {
            zonealpha[i] = 1
            zones[i] = 1
        }
    }
    alarm[4] = waittime
    con = 4
}
else if (con == 5)
{
    caster_play(lithit, 0.75, 1.1)
    caster_play(lithit2, 0.75, 1.1)
    for (i = 0; i < 4; i++)
    {
        if zones[i]
        {
            if (i == obj_heart.index && global.invc < 1)
            {
                gothit = 1
                var amt = irandom_range(5, 10)
                repeat amt
                {
                    with (instance_create(obj_heart.x, obj_heart.y, obj_mirrorshield_particle))
                        shieldamt = (other.shieldamt / amt)
                }
                scr_damagestandard_x()
                global.invc = (waittime + 5)
                if (waittime < 5 && eliminate)
                    global.invc = 0
            }
            zonealpha[i] = 1
            zones[i] = 2
        }
    }
    alarm[4] = waittime
    if (eliminate || (boss.shieldhp < boss.shieldmaxhp && times > 0))
        con = 2
    else
    {
        if (global.invc > 0)
            global.invc = 30
        alarm[4] = 30
        con = 6
    }
    if murder
    {
        steps--
        if (steps <= 0)
        {
            waittime--
            if gothit
                waittime++
            steps = global.firingrate
            if (eliminate && global.firingrate > 1)
                global.firingrate--
        }
        if (waittime < 13 && (!eliminate))
            waittime = 13
        if (waittime < 1)
            waittime = 1
    }
    gothit = 0
    times--
}
else if (con == 7)
{
    caster_free(lithit)
    caster_free(lithit2)
    lock = 1
    with (obj_heart)
        pink = 0
    with (obj_npc_marker)
        instance_destroy()
    with (obj_mirrorshield_particle)
    {
        hspeed = 0
        vspeed = 0
    }
    with (boss)
    {
        didshield = 1
        reset = true
    }
    global.turntimer = 1
    instance_destroy()
}
with (flasher)
{
    depth = (other.depth - 10)
    x = obj_heart.x
    y = obj_heart.y
}
