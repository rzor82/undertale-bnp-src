global.msg[0] = "* what the fuck./%%"
if (t == 0 && global.interact == 0)
{
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    t = 1
    if (global.flag[368] == 1)
        donotcall = 1
    if (room == room_fire_apron)
    {
        global.msc = 754
        if (global.flag[409] == 1)
            donotcall = 1
        global.flag[409] = 1
    }
    if (room == room_fire_boysnightout && ax == 0)
    {
        if (global.flag[369] < 25)
        {
            if (global.flag[369] < 24 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_112")
                global.flag[369] = 24
            }
            if (global.flag[369] < 25 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_120")
                global.flag[369] = 25
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_mewmew2 && ax == 0)
    {
        if (global.flag[369] < 23)
        {
            if (global.flag[369] < 21 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_142")
                global.msg[1] = scr_gettext("obj_notify_room_143")
                global.flag[369] = 21
            }
            if (global.flag[369] < 22 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_151")
                global.flag[369] = 22
            }
            if (global.flag[369] < 23 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_159")
                global.msg[1] = scr_gettext("obj_notify_room_160")
                global.flag[369] = 23
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_rpuzzle && ax == 0)
    {
        if (global.flag[369] < 20)
        {
            global.msg[0] = scr_gettext("obj_notify_room_178")
            global.flag[369] = 20
        }
        else
            donotcall = 1
    }
    if (room == room_fire_walkandbranch && ax == 0)
    {
        if (global.flag[369] < 19)
        {
            if (global.flag[369] < 16 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_197")
                global.msg[1] = scr_gettext("obj_notify_room_198")
                global.flag[369] = 16
            }
            if (global.flag[369] < 17 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_206")
                global.msg[1] = scr_gettext("obj_notify_room_207")
                global.msg[2] = scr_gettext("obj_notify_room_208")
                global.msg[3] = scr_gettext("obj_notify_room_209")
                global.flag[369] = 17
            }
            if (global.flag[369] < 18 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_217")
                global.flag[369] = 18
            }
            if (global.flag[369] < 19 && ax == 0)
            {
                if (global.flag[67] == 1)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_225")
                global.flag[369] = 19
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_turn)
    {
        if (global.flag[369] < 13)
        {
            global.msg[0] = scr_gettext("obj_notify_room_243")
            global.flag[369] = 13
        }
        else
            donotcall = 1
    }
    if (room == room_fire9 && ax == 0)
    {
        if (global.flag[369] < 12)
        {
            ax = 1
            global.msg[0] = scr_gettext("obj_notify_room_258")
            global.flag[369] = 12
        }
        else
            donotcall = 1
    }
    if (room == room_fire7 && ax == 0)
    {
        if (global.flag[369] < 11)
        {
            if (global.flag[369] < 10)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_279")
                global.flag[369] = 10
            }
            else
            {
                global.msg[0] = scr_gettext("obj_notify_room_284")
                global.msg[1] = scr_gettext("obj_notify_room_285")
                global.flag[369] = 11
                ax = 1
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_lasers1 && ax == 0)
    {
        if (global.flag[369] < 9)
        {
            if (global.flag[369] < 8)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_307")
                global.msg[1] = scr_gettext("obj_notify_room_308")
                global.flag[369] = 8
            }
            else
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_314")
                global.flag[369] = 9
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire6 && ax == 0)
    {
        if (global.flag[369] < 7)
        {
            if (global.flag[369] < 6)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_336")
                global.flag[369] = 6
            }
            else
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_342")
                global.msg[1] = scr_gettext("obj_notify_room_343")
                global.flag[369] = 7
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire3 && global.flag[369] > 3)
        donotcall = 1
    if (room == room_fire5 && global.flag[369] > 4)
        donotcall = 1
    if (room == room_fire5 && global.flag[369] == 4)
    {
        global.msg[0] = scr_gettext("obj_notify_room_372")
        global.flag[369] = 5
    }
    if (room == room_fire3 && global.flag[369] == 3)
    {
        global.msg[0] = scr_gettext("obj_notify_room_378")
        global.flag[369] = 4
    }
    if (room == room_fire3 && global.flag[369] == 2)
    {
        global.msg[0] = scr_gettext("obj_notify_room_385")
        global.flag[369] = 3
    }
    if (room == room_fire3 && global.flag[369] < 2)
    {
        global.msg[0] = scr_gettext("obj_notify_room_391")
        global.flag[369] = 2
    }
    if (room == room_water12 && global.flag[354] < 1)
    {
        global.msg[0] = scr_gettext("obj_notify_room_398")
        global.flag[354] = 1
        instance_create(380, 40, obj_stalkerflowey)
        global.msc = 632
        if (global.flag[368] == 1)
            donotcall = 1
    }
    if (donotcall == 0)
        snd_play(snd_textnoise)
    if (donotcall == 0)
    {
        mb = instance_create(obj_mainchara.x, (obj_mainchara.y - 10), obj_musblcon)
        instance_create(0, 0, obj_dialoguer)
        global.interact = 1
    }
}
