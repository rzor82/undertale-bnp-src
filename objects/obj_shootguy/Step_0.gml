buffer -= 1
restart -= 1
if (myinteract == 2 && global.interact == 0 && active)
{
    global.lastpce = (("Shooter Puzzle (" + room_get_name(room)) + ")")
    skipped = true
}
if (active == true && win == 0)
{
    if (buffer <= 0)
    {
        blt = 0
        if instance_exists(obj_shotguy)
            blt = 1
        if (control_check_pressed(0) && ammo > 0 && buffer <= 0)
        {
            ammo -= 1
            buffer = 4
            shots_fired += 1
            with (instance_create(x, y, obj_shotguy))
            {
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
        }
        if (keyboard_check_pressed(global.keybind[2]) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(0)
        }
        if (keyboard_check_pressed(global.keybind[0]) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(1)
        }
        if (keyboard_check_pressed(global.keybind[1]) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(2)
        }
        if (keyboard_check_pressed(global.keybind[3]) && blt == 0 && buffer <= 0)
        {
            buffer = 4
            event_user(3)
        }
        if (control_check_pressed(1) && buffer <= 0 && instance_exists(obj_shotguy) == 0)
        {
            if (room == room_fire_shootguy_5)
            {
                with (obj_speedrun_tracker)
                    puzzle_solve = 0
            }
            skipped = false
            shots_fired = 0
            active = false
            alarm[2] = 2
            alarm[1] = 12
            buffer = 15
            alarm[3] = 1
        }
        if (ammo == 0 && instance_exists(obj_shotguy) == 0 && buffer <= 0 && active == true)
        {
            if instance_exists(obj_targetguy)
            {
                if (obj_targetguy.defeat == 0)
                {
                    restart = 20
                    rstype = random(100)
                    buffer = 20
                    alarm[2] = 2
                    alarm[1] = 12
                    shots_fired = 0
                }
            }
        }
    }
}
if (myinteract == 1 && win == 0)
{
    ammo = 0
    buffer = 10
    alarm[5] = 1
    global.interact = 1
    myinteract = 2
    global.facing = 2
    active = true
}
snd = 0
if (win == 1 && active == true)
{
    wintimer += 1
    if (wintimer == 50)
        snd_play(snd_dumbvictory)
    if (wintimer > 100)
    {
        if (room == room_fire_shootguy_1)
            global.flag[375] = 1
        if (room == room_fire_shootguy_2)
            global.flag[374] = 1
        if (room == room_fire_shootguy_3)
            global.flag[399] = 1
        if (room == room_fire_shootguy_4)
            global.flag[400] = 1
        if (room == room_fire_shootguy_5)
        {
            if skipped
            {
                with (obj_speedrun_tracker)
                {
                    puzzle_solve = (other.shots_fired > other.idealammo ? 2 : 1)
                    puzzle_shots = other.shots_fired
                }
            }
            global.flag[418] = 1
        }
        if (room == room_fire_core2)
        {
            with (obj_rurusevent)
                con = 15
        }
        global.interact = 0
        wintimer = 0
        win = 2
        myinteract = 0
        global.facing = 0
        active = false
        scr_tempsave()
    }
}
