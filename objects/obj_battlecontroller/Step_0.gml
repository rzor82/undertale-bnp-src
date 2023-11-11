script_execute(SCR_BORDERSETUP, 0, 0, 0, 0, 0)
if (global.ambush > 0)
{
    if (global.mnfight == 3)
    {
        global.msg[0] = newmessage
        obj_heart.x = -400
    }
    if (global.mnfight == 0 && global.myfight == 0)
        obj_heart.specialscene = 0
    if ((!caster_is_playing(global.batmusic)) && (global.batmusic == mus_prebattle1 || global.batmusic == mus_prebattle2 || global.batmusic == mus_prebattle3))
    {
        caster_free(global.batmusic)
        if (global.batmusic == mus_prebattle1)
            global.batmusic = caster_load("music/battle1.ogg")
        if (global.batmusic == mus_prebattle2)
            global.batmusic = caster_load("music/battle2.ogg")
        if (global.batmusic == mus_prebattle3)
            global.batmusic = caster_load("music/battle3.ogg")
        caster_loop(global.batmusic, 0.8, 1)
        global.ambush = 2
        global.turntimer = 0
    }
}
var processed_actions = 0
if process_next_frame
{
    scr_do_actions()
    processed_actions = 1
    process_next_frame = 0
}
ceil(global.en)
if (global.bmenuno == 0)
{
    if (global.currentparty == 0 && global.hp <= 0)
        global.currentparty++
}
currentplace = global.bmenuno
if (global.monster[0] == false)
{
    if (global.monster[1] == false)
    {
        if (global.monster[2] == false)
        {
            if (won == 0)
            {
                global.specialspare = 0
                global.ambush = 0
                won = 1
                global.goldreward[3] += (floor(((global.en * 2.5) / 15)) * global.chapter)
                if (global.hp == 0)
                    global.hp = 1
                global.xp += global.xpreward[3]
                global.gold += global.goldreward[3]
                tlvl = global.lv
                script_execute(scr_levelup)
                if (global.flag[15] == 0)
                {
                    caster_free(global.batmusicintro)
                    caster_free(global.batmusic)
                    mainloop = 1
                }
                global.msg[0] = scr_gettext("obj_battlecontroller_286", string(global.xpreward[3]), string(global.goldreward[3]))
                if invalid_battlegroup
                {
                    global.msg[0] = ("* Invalid Battlegroup: " + string(global.battlegroup))
                    if (global.battlegroup == 666)
                    {
                        caster_free(global.currentsong)
                        global.currentsong = mus_st_him
                        caster_loop(global.currentsong, 1, 1)
                        global.msg[0] += "^1.^1.^1.^1?"
                    }
                }
                if (tlvl != global.lv)
                {
                    if (scr_murderlv() >= 2)
                    {
                        switch strongermsg
                        {
                            case 0:
                                global.msg[0] += "&* You became stronger."
                                break
                            case 1:
                                global.msg[0] += "&* Your hands go numb."
                                break
                            case 2:
                                global.msg[0] += "&* The cycle continues."
                                break
                            case 3:
                                global.msg[0] += "&* You keep moving."
                                break
                            case 4:
                                global.msg[0] += "&* You feel nothing."
                                break
                            case 5:
                                global.msg[0] += "&* On to the next encounter."
                                break
                            case 6:
                                global.msg[0] += "&* It begins again."
                                break
                            default:
                                global.msg[0] += scr_gettext("obj_battlecontroller_287")
                                break
                        }

                        strongersfx = snd_stronger
                        caster_play(strongersfx, 0.7, 2)
                    }
                    else
                    {
                        global.msg[0] += scr_gettext("obj_battlecontroller_287")
                        snd_play(snd_levelup)
                    }
                    global.hp = global.maxhp
                }
                global.msg[0] += "/%"
                message = global.msg[0]
                if (scr_murderlv() >= 12)
                {
                    altmessage = string_replace(message, "You ", "I ")
                    altmessage2 = string_replace(altmessage, "Your", "My")
                    altmessage3 = string_replace(altmessage2, "YOU ", "I ")
                    altmessage4 = string_replace(altmessage3, "You ", "I ")
                    global.msg[0] = altmessage4
                }
                if (global.extraintro == 2)
                {
                    global.typer = 148
                    audio_stop_sound(mus_battle1)
                    audio_stop_sound(mus_battle2)
                    audio_stop_sound(mus_battle3)
                    audio_stop_sound(mus_prebattle1)
                    audio_stop_sound(mus_prebattle2)
                    audio_stop_sound(mus_prebattle3)
                    caster_free(global.currentsong)
                    global.currentsong = caster_load("music/toomuch.ogg")
                    caster_loop(global.currentsong, 1, 1)
                    if (global.flag[200] > 0)
                        global.flag[(global.flag[200] + 19)] = 1
                    else
                        global.flag[221] = 1
                    global.msg[0] = global.msg[2]
                    global.myfight = 0
                    global.mnfight = 2
                    with (obj_heart)
                    {
                        specialscene = 1
                        x = -200
                    }
                }
                global.msc = 0
                var writer = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                writer.writingxend += 20
                return;
            }
        }
    }
}
global.inv = 30
if instance_exists(obj_undyne_ex)
    global.inv = (30 - global.lv)
if (instance_exists(obj_spiderb) && global.armor != 44)
    global.inv += 20
if (global.armor == 44)
    global.inv += 30
if (global.armor == 64)
    global.inv += 15
if (global.weapon == 45)
    global.inv += 15
if (global.inv < 15)
    global.inv = 15
if (global.armor == 46 || global.armor == 64)
{
    if (global.mnfight == 0 && global.myfight == 0)
    {
        if (((global.turn + 1) % 2) == 0)
        {
            if (healed == 0)
            {
                healed = 1
                if (global.hp < global.maxhp)
                    global.hp += 1
                snd_play(snd_power)
            }
        }
    }
    else
        healed = 0
}
if (global.mnfight == 0 && global.myfight == 0)
{
    global.typer = 1
    if (active == true)
    {
        if (control_check_pressed(1) == 0)
        {
            if control_check_pressed(0)
            {
                if (global.bmenuno == 0)
                {
                    global.tmsg = global.msg[0]
                    global.talked = -1
                    global.bmenucoord[2] = 0
                    prtymem = scr_get_current_party()
                    global.bmenuno = (global.bmenucoord[0] + 1)
                    if instance_exists(obj_talkbt)
                    {
                        if (obj_talkbt.spec == 1)
                        {
                            if (global.bmenuno == 2)
                            {
                                global.rmsg = global.msg[0]
                                global.mytarget = 0
                                with (OBJ_WRITER)
                                    halt = 3
                                with (OBJ_INSTAWRITER)
                                    halt = 3
                                global.bmenuno = 10
                                global.partychoices[0] = 0
                                global.partychoices[1] = 0
                                global.partychoices[2] = 0
                                global.partychoices[3] = 0
                                global.partychoices[4] = 0
                                global.partychoices[5] = 0
                                global.msc = (1000 + global.monstertype[global.mytarget])
                                instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                                control_clear(0)
                                SCR_TEXT(global.msc)
                                if (global.choices[global.bmenucoord[2]] == 0)
                                    global.bmenucoord[2] = 0
                            }
                        }
                    }
                    if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11 || global.bmenuno == 5)
                    {
                        global.msc = 3
                        if (global.monster[global.bmenucoord[1]] == false)
                            global.bmenucoord[1] += 1
                        if (global.monster[global.bmenucoord[1]] == false)
                            global.bmenucoord[1] += 1
                        if (global.monster[0] == false && global.monster[2] == false)
                            global.bmenucoord[1] = 1
                        if (global.bmenucoord[1] > 2)
                        {
                            global.bmenucoord[1] = 0
                            if (global.monster[0] == false)
                                global.bmenucoord[1] = 1
                            if (global.monster[1] == false)
                                global.bmenucoord[1] = 2
                            if (global.monster[2] == false)
                                global.bmenucoord[1] = 0
                        }
                    }
                    if (global.bmenuno == 3)
                    {
                        if (global.item[0] != 0)
                        {
                            global.bmenucoord[3] = 0
                            script_execute(scr_itemnameb)
                            if global.newmenu
                            {
                                global.msc = 0
                                global.msg[0] = " "
                                global.msg[1] = "%%%"
                            }
                            else
                            {
                                var pad = " "
                                for (var i = 0; i < 8; i++)
                                {
                                    var len = 9
                                    if ((i % 2) == 0)
                                        len = 10
                                    while (string_length(global.itemnameb[i]) < len)
                                        global.itemnameb[i] += pad
                                }
                                global.msc = 9
                            }
                        }
                        else
                            global.bmenuno = 0
                    }
                    if (global.bmenuno == 4)
                        global.msc = 7
                    snd_play(snd_select)
                    with (OBJ_WRITER)
                        halt = 3
                    with (OBJ_INSTAWRITER)
                        halt = 3
                    instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                    control_clear(0)
                    return;
                }
                if (global.bmenuno == 1)
                {
                    global.mytarget = global.bmenucoord[1]
                    OBJ_WRITER.halt = 3
                    OBJ_INSTAWRITER.halt = 3
                    global.myfight = 1
                    global.mnfight = 0
                    scr_commitaction()
                    obj_heart.x = -200
                    snd_play(snd_select)
                    control_clear(0)
                }
                else if (global.bmenuno == 10)
                {
                    global.talked = global.bmenucoord[2]
                    global.mntrg = global.monsterinstance[global.mytarget]
                    with (global.mntrg)
                        whatiheard = global.talked
                    OBJ_WRITER.halt = 3
                    OBJ_INSTAWRITER.halt = 3
                    snd_play(snd_select)
                    global.myfight = 2
                    var picked = global.bmenucoord[2]
                    scr_commitaction()
                    obj_heart.x = -200
                    control_clear(0)
                }
                else if (global.bmenuno == 2)
                {
                    global.mytarget = global.bmenucoord[1]
                    OBJ_WRITER.halt = 3
                    OBJ_INSTAWRITER.halt = 3
                    global.bmenuno = 10
                    global.partychoices[0] = 0
                    global.partychoices[1] = 0
                    global.partychoices[2] = 0
                    global.partychoices[3] = 0
                    global.partychoices[4] = 0
                    global.partychoices[5] = 0
                    global.msc = (1000 + global.monstertype[global.mytarget])
                    instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                    control_clear(0)
                    SCR_TEXT(global.msc)
                    if (global.choices[global.bmenucoord[2]] == 0)
                        global.bmenucoord[2] = 0
                }
                else if (global.bmenuno >= 3 && global.bmenuno < 4)
                {
                    if (obj_time.right == 0 && obj_time.left == 0)
                    {
                        var can_select = 1
                        for (var j = 0; j < global.partycount; j++)
                        {
                            var bmenuno = bmenuno_buffer[j]
                            if (!((bmenuno >= 3 && bmenuno < 4)))
                            {
                            }
                            else
                            {
                                var bmenucoord = bmenucoord_buffer[j]
                                if (bmenucoord[3] == global.bmenucoord[3] && bmenuno == global.bmenuno)
                                    can_select = 0
                            }
                        }
                        if can_select
                        {
                            OBJ_WRITER.halt = 3
                            global.talked = 91
                            global.myfight = 4
                            obj_heart.x = -200
                            snd_play(snd_select)
                            scr_commitaction()
                        }
                    }
                    control_clear(0)
                }
                else if (global.bmenuno == 4)
                {
                    OBJ_WRITER.halt = 3
                    global.mercyuse = global.bmenucoord[4]
                    var spare_select_handled = 0
                    if (global.mercyuse == 1)
                    {
                        script_execute(scr_runaway)
                        global.talked = 90
                        if instance_exists(obj_glydeb)
                        {
                            if (global.flag[282] < 4)
                                global.flag[282] = 3
                        }
                    }
                    else
                    {
                        var only_spare_single = (!global.specialspare)
                        if only_spare_single
                        {
                            snd_play(snd_select)
                            global.bmenuno = 7
                            global.msc = 3
                            if (global.monster[global.bmenucoord[1]] == false)
                                global.bmenucoord[1] += 1
                            if (global.monster[global.bmenucoord[1]] == false)
                                global.bmenucoord[1] += 1
                            if (global.monster[0] == false && global.monster[2] == false)
                                global.bmenucoord[1] = 1
                            if (global.bmenucoord[1] > 2)
                            {
                                global.bmenucoord[1] = 0
                                if (global.monster[0] == false)
                                    global.bmenucoord[1] = 1
                                if (global.monster[1] == false)
                                    global.bmenucoord[1] = 2
                                if (global.monster[2] == false)
                                    global.bmenucoord[1] = 0
                            }
                            with (OBJ_WRITER)
                                halt = 3
                            with (OBJ_INSTAWRITER)
                                halt = 3
                            instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                            control_clear(0)
                            spare_select_handled = 1
                        }
                    }
                    if (!spare_select_handled)
                    {
                        global.myfight = 4
                        if (runaway == 0)
                        {
                            snd_play(snd_select)
                            scr_commitaction()
                        }
                        else
                        {
                            with (obj_heartshield)
                                instance_destroy()
                        }
                        obj_heart.x = -200
                        control_clear(0)
                    }
                }
                else if (global.bmenuno == 7)
                {
                    comment = "value of 2 means sparing a specific one"
                    global.mercyuse = 2
                    global.mytarget = global.bmenucoord[1]
                    global.myfight = 4
                    obj_heart.x = -200
                    control_clear(0)
                    snd_play(snd_select)
                    scr_commitaction()
                }
            }
        }
    }
    if (active == true)
    {
        if control_check_pressed(1)
        {
            if (global.bmenuno == 0 && global.currentparty > 0 && global.hp > 0)
            {
                global.currentparty--
                myfight_buffer[global.currentparty] = 0
                mercyuse_buffer[global.currentparty] = 0
                for (j = 0; j < 11; j++)
                    temp_array[j] = 0
                bmenucoord_buffer[global.currentparty] = temp_array
                bmenuno_buffer[global.currentparty] = 0
                mytarget_buffer[global.currentparty] = 0
                talked_buffer[global.currentparty] = -1
                global.en = en_buffer[global.currentparty]
                en_buffer[global.currentparty] = 0
                with (OBJ_WRITER)
                    halt = 3
                with (OBJ_INSTAWRITER)
                    halt = 3
                global.bmenuno = 0
                global.typer = 1
                global.msg[0] = global.tmsg
                global.msc = 0
                instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                control_clear(1)
            }
            if (global.bmenuno != 0 && global.bmenuno < 6 && global.bmenuno != 5)
            {
                OBJ_WRITER.halt = 3
                OBJ_INSTAWRITER.halt = 3
                global.bmenuno = 0
                global.typer = 1
                global.msg[0] = global.tmsg
                global.msc = 0
                instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                control_clear(1)
            }
            if (global.bmenuno == 10)
            {
                OBJ_WRITER.halt = 3
                OBJ_INSTAWRITER.halt = 3
                global.bmenuno = 2
                global.typer = 1
                global.msc = 3
                if instance_exists(obj_talkbt)
                {
                    if (obj_talkbt.spec == 1)
                    {
                        global.bmenuno = 0
                        global.typer = 1
                        global.msg[0] = global.rmsg
                        global.msc = 0
                    }
                }
                instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                control_clear(1)
            }
            if (global.bmenuno == 11)
            {
                OBJ_WRITER.halt = 3
                OBJ_INSTAWRITER.halt = 3
                global.bmenuno = 3
                global.typer = 1
                global.msc = 0
                instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                control_clear(1)
            }
            else if (global.bmenuno == 7)
            {
                OBJ_WRITER.halt = 3
                OBJ_INSTAWRITER.halt = 3
                global.bmenuno = 4
                global.typer = 1
                global.msc = 7
                instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
                control_clear(1)
            }
        }
    }
    if (obj_heart.specialscene == 0)
    {
        if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11 || global.bmenuno == 5 || global.bmenuno == 7)
        {
            obj_heart.x = (global.idealborder[0] + 32)
            obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[1])
        }
        if (global.bmenuno == 10 || global.bmenuno == 12)
        {
            if (global.bmenucoord[2] <= 2)
                obj_heart.x = (global.idealborder[0] + 32)
            else
                obj_heart.x = (global.idealborder[0] + 292)
            if (global.bmenucoord[2] <= 2)
                obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[2])
            else
                obj_heart.y = scr_battlemenu_cursor_y((global.bmenucoord[2] - 3))
        }
        if (global.bmenuno >= 3 && global.bmenuno < 4)
        {
            if global.newmenu
            {
                obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[3])
                obj_heart.x = (global.idealborder[0] + 32)
            }
            else
            {
                if (global.bmenucoord[3] <= 1)
                    obj_heart.y = (global.idealborder[2] + 28)
                else
                    obj_heart.y = (global.idealborder[2] + 60)
                if (global.bmenucoord[3] == 0 || global.bmenucoord[3] == 2)
                    obj_heart.x = (global.idealborder[0] + 32)
                else
                    obj_heart.x = (global.idealborder[0] + 280)
            }
        }
        if (global.bmenuno == 4)
        {
            obj_heart.x = (global.idealborder[0] + 32)
            obj_heart.y = scr_battlemenu_cursor_y(global.bmenucoord[4])
        }
    }
}
if (active == true)
{
    if control_check_pressed(1)
    {
        if (global.mnfight == 0 && global.flag[21] == 0)
        {
            if (instance_number(OBJ_WRITER) > 0)
                OBJ_WRITER.stringpos = string_length(OBJ_WRITER.originalstring)
            control_clear(1)
        }
    }
}
if (global.hp > 0 && (global.myfight == 1 || global.myfight == 2 || global.mnfight == 3 || global.myfight == 5))
{
    if (obj_heart.specialscene == 0)
        obj_heart.x = -400
}
if (global.mnfight == 3)
{
    global.border = 0
    script_execute(SCR_BORDERSETUP)
    if (obj_lborder.x == global.idealborder[0])
    {
        global.typer = 1
        global.msc = 0
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
        global.bmenuno = 0
        global.myfight = 0
        global.mnfight = 0
        global.turn += 1
        stoptryingtocheattherunsystem = random(100)
        global.mercyuse = -1
    }
}
if (global.myfight == 3)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.halt > false)
        {
            obj_heart.x = ((global.idealborder[0] + 32) + (global.bmenucoord[6] * 252))
            obj_heart.y = (global.idealborder[2] + 92)
            if global.newmenu
                obj_heart.y += 8
            if control_check_pressed(0)
            {
                global.heard = 0
                global.talked = (6 + global.bmenucoord[6])
                with (global.monsterinstance[global.mytarget])
                    whatiheard = global.talked
                obj_heart.x = -200
                OBJ_WRITER.halt = 3
                global.myfight = 2
                scr_commitaction()
            }
        }
    }
}
if (global.myfight == 4)
{
    if (runaway == 0)
    {
        obj_heart.x = -200
        if (instance_exists(OBJ_WRITER) == 0 && (!processed_actions))
        {
            global.myfight = 0
            global.mnfight = 1
            scr_do_actions()
            control_clear(0)
        }
    }
}
if (global.myfight == 51)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.halt > false)
        {
            obj_heart.x = ((global.idealborder[0] + 32) + (global.bmenucoord[51] * 252))
            obj_heart.y = (global.idealborder[2] + 92)
            if global.newmenu
                obj_heart.y += 8
            if control_check_pressed(0)
            {
                global.heard = 91
                global.choice = global.bmenucoord[51]
                global.itempos = itempos
                global.thisitemid = thisitemid
                global.myfight = 4
                with (OBJ_WRITER)
                    scr_msgup()
                obj_heart.x = -200
            }
        }
    }
}
if (global.bmenuno == 0)
{
    if (global.currentparty == 0 && global.hp <= 0)
        global.currentparty++
}
if (global.hp <= 0)
{
    global.flag[500] = (instance_exists(obj_asrielb) || instance_exists(obj_asrielfinal))
    var die = 1
    if instance_exists(obj_heartshield)
    {
        with (obj_heartshield)
        {
            if (!unshield)
                die = 0
        }
    }
    if die
        scr_gameoverb()
}
if (currentplace < global.bmenuno && global.bmenuno != 12)
{
    if (snd_isplaying(snd_select) != 1)
        snd_play(snd_select)
}
if (global.debug == true)
{
    if keyboard_check_pressed(vk_space)
        global.turntimer = 2
    if keyboard_check_pressed(ord("K"))
        global.hp = 0
}
if ((!mainloop) && (!caster_is_playing(global.batmusicintro)) && (!caster_is_playing(global.batmusic)))
{
    global.batmusic = caster_loop(global.batmusic, 1, 1)
    mainloop = 1
}
