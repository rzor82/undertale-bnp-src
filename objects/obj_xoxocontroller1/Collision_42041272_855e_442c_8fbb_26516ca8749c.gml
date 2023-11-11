ii = image_index
if (room == room_tundra_xoxopuzz)
{
    if (instance_exists(obj_papyrus5) && fvic == 1)
    {
        global.plot = (obj_papyrus5.xplot + 1)
        obj_mainchara.cutscene = false
        obj_xoxo.image_index = 3
        if (obj_papyrus5.conversation < 9)
        {
            obj_papyrus5.conversation = 9
            sans = instance_create(620, 40, obj_sans_room)
        }
    }
    else if (global.plot <= 55)
    {
        if (instance_exists(obj_papyrus5) && instance_exists(OBJ_WRITER) == 0 && donealready == 0 && vic > 0)
        {
            global.typer = 19
            global.facechoice = 4
            global.faceemotion = 0
            global.interact = 1
            global.msg[0] = "\\E4OHO^1, THAT IS NOT&THE RIGHT ANSWER!!!/"
            global.msg[1] = "..^1.&\\E3... WELL^1, GO ON^1.&\\E0TRY IT AGAIN!/%%"
            if (hurryuppls > 0)
                global.msg[0] = "\\E0THAT'S ALRIGHT^1,&YOU CAN TRY AS&MUCH AS YOU LIKE./%%"
            if (hurryuppls > 10)
            {
                global.msg[0] = "\\E3SO YOU DON'T&KNOW WHAT YOU'RE&DOING.../"
                global.msg[1] = "\\E0THAT'S OKAY!!^1!&I DON'T KNOW&EITHER./%%"
            }
            donealready = 1
            mydialoguer = instance_create(0, 0, obj_dialoguer)
        }
        if (instance_exists(OBJ_WRITER) == 0)
        {
            if (donealready == 1)
                hurryuppls += 1
            donealready = 0
            if (vic > 0)
                global.flag[63] += 1
            global.interact = 0
            obj_xoxo.image_index = 0
            fvic = 0
            vic = 0
        }
    }
    image_index = 1
    alarm[2] = 3
}
if (room == room_tundra_xoxosmall)
{
    if (fvic == 1 && global.plot < 53)
    {
        global.plot = 53
        obj_xoxo.image_index = 3
    }
    else if (global.plot < 53)
    {
        obj_xoxo.image_index = 0
        fvic = 0
        vic = 0
    }
    image_index = 1
    alarm[2] = 3
}
if (room == room_tundra_iceentrance && global.phasing == 0)
{
    if (fvic == 1 && global.plot < 63)
    {
        global.plot = 63
        fb = instance_create((obj_specialdrophole.x + 3), obj_specialdrophole.y, obj_fakebridge)
        fb.justdoit = 1
        fb.alarm[3] = -1
        obj_xoxo.image_index = 3
    }
    else if (global.plot < 63)
    {
        obj_xoxo.image_index = 0
        fvic = 0
        vic = 0
    }
    image_index = 1
    alarm[2] = 3
}
if (ii == 0 && ii != image_index)
    snd_play(snd_switchpull_n)
