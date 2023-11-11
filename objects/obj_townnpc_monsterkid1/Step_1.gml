script_execute(scr_depth, 0, 0, 0, 0, 0)
if (fun == false)
{
    if (tempcon == 0)
        script_execute(scr_npcdir, 2)
    scr_npc_anim()
    if (instance_exists(obj_face_anything_new) && global.facechoice == "A")
        image_index = obj_face_anything_new.image_index
    if (speed == 0 && path_speed == 0 && (!instance_exists(obj_dialoguer)))
        image_index = 0
    if (room != room_water_waterfall4 && room != room_water5 && room != room_water_nicecream && tempcon == 0)
        scr_npc_watch(0)
}
if (room == room_water5)
{
    if (tempcon > 1)
    {
        scr_npc_watch(0)
        dsprite = spr_mkid_d
        usprite = spr_mkid_u
        lsprite = spr_mkid_l
        rsprite = spr_mkid_r
        dtsprite = spr_mkid_dt
        utsprite = spr_mkid_ut
        ltsprite = spr_mkid_lt
        rtsprite = spr_mkid_rt
    }
    if (tempcon < 0 && tempcon > 2)
        global.interact = 1
    if (tempcon == 1 && instance_exists(OBJ_WRITER) == 0)
    {
        global.facechoice = "A"
        global.typer = 5
        global.msc = 0
        global.msg[0] = "\\K0\\E0* \\K1YO!!^1!\\K0&* Do you think&  \\K1\\E8UNDYNE\\K0 \\E0did it???/%%"
        instance_create(0, 0, obj_dialoguer)
        tempcon = 2
    }
    if instance_exists(OBJ_WRITER)
        global.interact = 1
    if (tempcon == 2 && instance_exists(OBJ_WRITER) == 0)
    {
        global.interact = 0
        tempcon = 3
    }
    if (solvedpuzzle == 1)
        tempcon = 3
}
if (room == room_water13)
{
    if instance_exists(obj_waterboardpuzzle1)
    {
        if (obj_waterboardpuzzle1.won == 90 && tempcon == 0 && obj_mainchara.y > 419 && obj_mainchara.y < 461)
            tempcon = 1
        if (obj_waterboardpuzzle1.won == 90 && (obj_mainchara.y < 419 || obj_mainchara.y > 461) && tempcon == 0 && x == 120)
        {
            if (failedtext == 0 || failedtext == 3)
                failedtext = 1
            if (failedtext > 0)
                global.interact = 1
            if (failedtext == 1 && instance_exists(OBJ_WRITER) == 0)
            {
                givenhint += 1
                global.facechoice = "A"
                global.typer = 5
                global.msc = 0
                global.msg[0] = "\\E0* Yo^1, I don't think&  that's the right&  answer^1, dude.../%%"
                if (givenhint >= 10)
                    global.msg[0] = "* Uhh..^1.&* Do you want me&  to do it^1? Haha./%%"
                instance_create(0, 0, obj_dialoguer)
                failedtext = 2
            }
            if (failedtext == 2 && instance_exists(OBJ_WRITER) == 0)
            {
                if instance_exists(obj_waterboard)
                {
                    with (obj_bellblossom)
                    {
                        image_speed = 0.2
                        global.interact = 1
                        obj_waterboard.image_index = 0
                        con = 1
                        alarm[4] = 15
                    }
                }
                else
                {
                    with (obj_bellblossom)
                    {
                        obj_waterboard.image_index = 0
                        image_speed = 0.2
                        global.interact = 1
                        con = 20
                        alarm[4] = 15
                    }
                }
                failedtext = 3
            }
            if (failedtext == 3 && instance_exists(OBJ_WRITER) == 0)
            {
                global.facechoice = "A"
                global.typer = 5
                global.msc = 0
                global.msg[0] = "* Try again^1, haha./%%"
                instance_create(0, 0, obj_dialoguer)
                failedtext = 4
            }
            if (failedtext == 4 && instance_exists(OBJ_WRITER) == 0)
            {
                global.interact = 0
                failedtext = 0
            }
        }
    }
    if (tempcon == 1 && instance_exists(OBJ_WRITER) == 0)
    {
        global.interact = 1
        scr_npc_watch(0)
        dsprite = spr_mkid_dt
        global.facechoice = "A"
        global.typer = 5
        global.msc = 0
        global.msg[0] = "\\E0* Yo^1!&* You solved the&  puzzle again^1!/"
        if (givenhint == 0)
            global.msg[1] = "* (I didn't even need&  to help you!)/"
        if (givenhint >= 1 && givenhint < 10)
            global.msg[1] = "* (I even helped&  a little this time!)/"
        if (givenhint >= 10)
            global.msg[1] = "* (I thought that was&  going to take forever!)/"
        global.msg[2] = "* Thanks^1, dude./%%"
        instance_create(0, 0, obj_dialoguer)
        tempcon = 2
    }
    if (tempcon == 2 && instance_exists(OBJ_WRITER) == 0)
    {
        if (obj_mainchara.x > 125)
        {
            obj_mainchara.fun = true
            obj_mainchara.image_speed = 0.2
            obj_mainchara.x -= 2
        }
        else
        {
            obj_mainchara.image_speed = 0
            obj_mainchara.image_index = 0
        }
        fun = true
        image_speed = 0.334
        sprite_index = spr_mkid_d
        if (y < 420)
            vspeed = 3
        else
        {
            vspeed = 0
            tempcon = 3
        }
    }
    if (tempcon == 3)
    {
        sprite_index = spr_mkid_r
        if (x < 275)
            hspeed = 3
        else
        {
            hspeed = 0
            tempcon = 4
        }
    }
    if (tempcon == 4 && instance_exists(OBJ_WRITER) == 0)
    {
        image_speed = 0.21
        sprite_index = spr_mkid_lt
        global.facechoice = "A"
        global.typer = 5
        global.msc = 0
        global.msg[0] = "\\E0* I'll catch you later^1.&* See ya^1, dude!/%%"
        instance_create(0, 0, obj_dialoguer)
        tempcon = 5
    }
    if (tempcon == 5 && instance_exists(OBJ_WRITER) == 0)
    {
        global.flag[101] = 1
        fun = false
        solid = 0
        obj_mainchara.fun = false
        sprite_index = spr_mkid_r
        global.interact = 0
        image_speed = 0.334
        hspeed = 5
        if (x > 320)
        {
            tempcon = 0
            instance_destroy()
        }
    }
}
