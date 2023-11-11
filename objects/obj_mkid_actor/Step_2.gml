event_inherited()
if (fun == false)
{
    if (con == 9)
    {
        if (global.interact == 0)
        {
            global.interact = 1
            scr_npc_watch(0)
            alarm[3] = 3
            con = 10
        }
    }
    if (con == 11)
    {
        global.facechoice = "A"
        global.typer = 5
        global.msc = 0
        global.msg[0] = scr_gettext("obj_mkid_actor_337")
        global.msg[1] = scr_gettext("obj_mkid_actor_338")
        global.msg[2] = scr_gettext("obj_mkid_actor_339")
        global.msg[3] = scr_gettext("obj_mkid_actor_340")
        global.msg[4] = scr_gettext("obj_mkid_actor_341")
        global.msg[5] = scr_gettext("obj_mkid_actor_342")
        global.msg[6] = scr_gettext("obj_mkid_actor_343")
        if (scr_murderlv() >= 8)
        {
            global.msg[4] = "\\E5* That got me thi%/"
            global.msg[5] = "\\E6* ..^1.&* ..^1.&* ..^1./"
            global.msg[6] = "\\E5* What did you say^1?&* Stop talking?/"
            global.msg[7] = "\\E6* Umm..^1. Why^1?&\\E0* Haha./"
            global.msg[8] = "\\E9* ..^2.&\\E6* Oh..^2.&\\E4* Okay..^1./%%"
        }
        w = instance_create(x, y, obj_dialoguer)
        w.side = 1
        con = 12
    }
    if (room == room_water3)
    {
        if (stallcon == 0 && obj_mainchara.x >= 140 && obj_mainchara.y <= 130)
        {
            if (global.interact == 0)
            {
                global.interact = 1
                scr_npc_watch(0)
                stallcon = 1
            }
        }
        if (stallcon == 1 && (!instance_exists(obj_dialoguer)))
        {
            global.facechoice = "A"
            global.typer = 5
            global.msc = 0
            global.msg[0] = "\\E6* Hmmm..^1./"
            global.msg[1] = "\\E3* Yo^1,\\E0 do you&  think I could go&  up ahead first?/"
            global.msg[2] = "\\E8* I wanna be the&  first one to see&  Undyne!!!/"
            global.msg[3] = "\\E3* I'll see you&  up ahead^1, \\E0dude./%%"
            instance_create(x, y, obj_dialoguer)
            stallcon = 2
        }
        if (stallcon == 2)
        {
            if (!instance_exists(obj_dialoguer))
            {
                follow = 2
                fun = true
                sprite_index = rsprite
                hspeed = 5
                image_speed = 0.25
                global.interact = 0
                global.flag[124] = 2
                global.flag[327] = 0
                stallcon = 99
            }
        }
        if (stallcon == 3)
        {
            if (!instance_exists(obj_dialoguer))
            {
                follow = -1
                sprite_index = usprite
                vspeed = -3
                image_speed = 0.25
                if (y <= 100)
                {
                    vspeed = 0
                    image_speed = 0
                    stallcon = 2
                }
            }
        }
        if (stallcon == 10)
        {
            global.flag[327] = 0
            instance_destroy()
        }
        if (stallcon == 99)
        {
            fun = true
            sprite_index = rsprite
            hspeed = 5
            image_speed = 0.25
        }
    }
    if (room == room_water1)
    {
        if (stallcon == 0 && obj_mainchara.x >= 140 && obj_mainchara.y <= 130)
        {
            if (global.interact == 0)
            {
                counter += 1
                if (counter >= 60)
                {
                    counter = 0
                    stallcon = 1
                }
            }
        }
        if (stallcon == 1 && (!instance_exists(obj_dialoguer)))
        {
            global.interact = 1
            if (global.facing == 3)
                global.facing = 1
            if (global.facing == 1)
                global.facing = 3
            global.facechoice = "A"
            global.typer = 5
            global.msc = 0
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_129")
            global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_130")
            global.msg[2] = "\\E0* That way just&  leads back to&  Snowdin.../"
            global.msg[3] = "\\E3* Come back when&  you're ready^1, haha!/%%"
            instance_create(x, y, obj_dialoguer)
            stallcon = 2
        }
        if (stallcon == 2)
        {
            if (!instance_exists(obj_dialoguer))
            {
                follow = 2
                dontdraw = 3
                global.facing = 1
                actor = instance_create(x, y, obj_sans_actor)
                actor.fun = true
                actor.sprite_index = rsprite
                actor.hspeed = 5
                actor.image_speed = 0.25
                global.interact = 0
                global.flag[124] = 1
                stallcon = 10
            }
        }
        if (stallcon == 3)
        {
            if (!instance_exists(obj_dialoguer))
            {
                follow = -1
                sprite_index = usprite
                vspeed = -3
                image_speed = 0.25
                if (y <= 100)
                {
                    vspeed = 0
                    image_speed = 0
                    stallcon = 2
                }
            }
        }
        if (stallcon == 10)
        {
            global.flag[327] = 0
            instance_destroy()
        }
    }
    if (room == room_water_waterfall2)
    {
        if (y > obj_echoflower.y && global.flag[91] < 3)
        {
            if (con < 8)
            {
                global.flag[91] = 3
                sprite = rsprite
                follow = -1
                con = 8
                alarm[3] = 25
            }
        }
    }
}
if (con == 12 && instance_exists(OBJ_WRITER) == 0)
{
    follow = 1
    con = 13
}
if (con == 13 && follow == 1)
{
    global.interact = 0
    scr_caterpillar_interpolate()
    con = 0
}
