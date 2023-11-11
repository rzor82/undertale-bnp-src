scr_mercystandard()
if instance_exists(obj_battlecontroller)
    depth = (obj_battlecontroller.depth + 2)
if (runcon == 1 && global.myfight == 4)
{
    if caster_is_playing(global.batmusicintro)
    {
        track = global.batmusicintro
        looppoint = audio_sound_get_track_position(global.batmusicintro)
    }
    else if caster_is_playing(global.batmusic)
    {
        track = global.batmusic
        looppoint = audio_sound_get_track_position(global.batmusic)
    }
    with (obj_mirrorbg)
        mode = 2
    global.mnfight = -1
    global.myfight = -1
    runcon = 2
}
else if (runcon > 0 && runcon < 33)
{
    if (track != -1)
        audio_sound_set_track_position(track, looppoint)
    runcon++
}
else if (runcon == 33)
{
    with (obj_mirrorbg)
        mode = 0
    global.mercy = 1
    global.bmenuno = 0
    global.mnfight = 0
    global.myfight = 0
    global.bmenucoord[4] = 0
    global.bmenucoord[0] = 3
    global.msg[0] = "* Who are you running from?"
    global.msg[4] = global.msg[0]
    global.tmsg = global.msg[0]
    global.rmsg = global.msg[0]
    global.typer = 1
    global.msc = 0
    with (instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER))
        halt = false
    runcon = 0
    track = -1
}
if ((!didshift) && ((!caster_is_playing(global.batmusicintro)) || audio_sound_get_track_position(global.batmusicintro) > 8.5))
{
    with (obj_mirrorbg)
    {
        new_blend = make_color_hsv(150, 255, 255)
        blend_speed = 0.01
        event_user(0)
    }
    didshift = 1
}
else if (didshift == 1 && (!caster_is_playing(global.batmusicintro)) && caster_is_playing(global.batmusic))
{
    with (obj_mirrorbg)
    {
        new_blend = 16777215
        blend_speed = 0.02
        event_user(0)
    }
    didshift = 2
}
if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
with (obj_heart)
{
    if (pink || instance_exists(obj_fakeheart))
        sprite_index = spr_heartpink
    else
        sprite_index = spr_heart
}
if (global.mnfight == 1)
{
    event_perform(ev_alarm, 6)
    global.mnfight = 2
    global.heard = 0
    whatiheard = -1
    talked = false
    hit = 0
}
if (global.hurtanim[myself] == 1)
{
    shudder = 8
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
    if deflect
    {
        eliminate = 1
        didshield = 1
        shieldanimspeed = 0.075
        shieldhp = shieldmaxhp
        shielded = 1
    }
}
if (global.hurtanim[myself] == 2)
{
    with (dmgwriter)
        alarm[2] = 15
    global.hurtanim[myself] = 0
    if (global.monsterhp[myself] >= 1)
    {
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
    }
    else
    {
        killed = 1
        global.myfight = -1
        global.mnfight = -1
        alarm[5] = 30
    }
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    scr_process_soon()
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        global.inv = 30
        if global.debug
        {
            if keyboard_check(ord("A"))
            {
                forcecmd = 0
                mycommand = forcecmd
            }
        }
        var comment = "a"
        if ((noturn || mercy < 0 || (murder && actcon >= 4)) && (!eliminate))
            mycommand = -1
        else
        {
            obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
            obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
        }
        show_debug_message(mycommand)
        switch mycommand
        {
            case 0:
                global.turntimer = -1
                if (global.weapon == 3 || global.weapon == 13 || global.weapon == 14 || global.weapon == 51 || global.weapon == 52)
                    global.border = 37
                else
                    global.border = 1
                if murder
                    global.firingrate = 999
                else
                    global.firingrate = min(1, floor((global.turn / 2)))
                SCR_BORDERSETUP()
                instance_create(0, 0, obj_mirrorattack_gen)
                break
            case 1:
                global.turntimer = 450
                global.firingrate = (murder ? 20 : 45)
                with (instance_create(0, 0, obj_mirrorreflect_attack))
                {
                    if (global.turn < 10 && (!other.murder))
                        global.firingrate = 20
                    else
                        hardmode = 1
                }
                break
            case 2:
                global.turntimer = 300
                global.firingrate = 2
                instance_create(0, 0, obj_mirrorcrack_gen_new)
                break
            case 3:
                global.turntimer = -1
                global.firingrate = 3
                with (instance_create(0, 0, obj_mirrorroulette_attack))
                    eliminate = other.eliminate
                break
            case 4:
                global.border = -1
                global.firingrate = 3
                break
            case 99:
                comment = "Unused (old proof-of-concept attack)"
                global.border = 31
                global.turntimer = 300
                global.firingrate = 2
                SCR_BORDERSETUP()
                instance_create(0, 0, obj_mirrorcrack_gen)
                break
            case 100:
                comment = "Unused (old shield attack, looked too much like Queen's)"
                global.turntimer = -1
                global.firingrate = 3
                instance_create(0, 0, obj_mirrorshield_gen)
                break
            default:
                global.turntimer = 1
        }

        global.msg[0] = "* ..."
        if murder
        {
            if (actcon >= 4)
                global.msg[0] = "* You stand before yourself."
            else
            {
                switch irandom(3)
                {
                    case 0:
                        global.msg[0] = "* There's nothing here."
                        break
                    case 1:
                        global.msg[0] = "* What's the holdup?"
                        break
                    case 2:
                        global.msg[0] = "* You're trapped in your&  own head."
                        break
                    case 3:
                        global.msg[0] = ("* " + string_repeat("smells like ", 20))
                        break
                }

            }
        }
        else if (actcon > 5)
            global.msg[0] = "* Despite everything^1, it's&  still you."
        else
        {
            switch irandom(6)
            {
                case 0:
                    global.msg[0] = "* You feel the sense you're&  not being watched."
                    break
                case 1:
                    global.msg[0] = "* You're one step ahead^3.&* Or was that one step behind?"
                    break
                case 2:
                    global.msg[0] = "*  blocked the way."
                    break
                case 3:
                    global.msg[0] = "* No problem here."
                    break
                case 4:
                    global.msg[0] = "* Smells like ."
                    break
                case 5:
                    global.msg[0] = "* Your body feels numb."
                    break
                case 6:
                    global.msg[0] = "* Who are you talking to?"
                    break
            }

        }
        attacked = 1
    }
    else if (global.turntimer == 0)
    {
        noturn = 0
        if (mycommand < 0 && shielded)
            shieldphase = 1
        with (obj_heart)
        {
            x = -1000
            pink = 0
        }
        global.myfight = 0
        global.mnfight = 3
        attacked = 0
    }
    whatiheard = -1
}
if (global.myfight == 2 && whatiheard != -1 && (!global.heard))
{
    var prevcon = actcon
    global.msc = 0
    global.msg[0] = (("Invalid act: " + string(whatiheard)) + "/^")
    with (OBJ_WRITER)
        halt = 3
    if (mercy < 0)
    {
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
    }
    else
    {
        event_user(whatiheard)
        with (instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER))
            halt = false
    }
    if (actcon != prevcon && shieldhp > 0)
    {
        shieldhp -= 40
        if (shieldhp < 0)
            shieldhp = 0
        shieldanimspeed = 0.05
    }
    global.heard = 1
}
if (global.myfight == 4)
{
    if (global.mercyuse == 0 || (global.mercyuse == 2 && global.mytarget == myself))
    {
        if (mercy < 0)
        {
            if murder
            {
                global.myfight = -1
                con = 1
            }
            else
                instance_destroy()
        }
    }
}
if (con == 1)
{
    if (!instance_exists(obj_murder_monitor))
        instance_create(0, 0, obj_murder_monitor)
    with (obj_murder_monitor)
    {
        suppress = 1
        alarm[0] = 2
    }
    global.flag[365] = 1
    global.flag[27] = 1
    global.interact = 0
    with (obj_battlecontroller)
        mainloop = 1
    with (obj_mirrorbg)
    {
        bg_blend = merge_color(c_white, c_lime, 0.5)
        blend_speed = 0.1
        new_blend = 65280
        new_sat = 0
        event_user(0)
        event_user(1)
    }
    caster_free(global.batmusicintro)
    caster_free(global.batmusic)
    alarm[4] = 60
    con = 2
}
else if (con == 2)
{
    with (obj_mirrorbg)
    {
        if (image_alpha > 0.5)
            image_alpha -= 0.05
        if (tick_speed > 0)
            tick_speed -= 0.016666666666666666
        else
            tick_speed = 0
        if (sin_speed > 0)
            sin_speed -= 0.0025
        else
            sin_speed = 0
    }
}
else if (con == 3)
{
    global.interact = 3
    with (instance_create(0, 0, obj_unfader))
        depth = -1000
    alarm[4] = 30
    con = 4
}
else if (con == 5)
{
    room_goto(global.currentroom)
    con = 6
}
if (shieldphase == 1)
{
    flashphase = 1
    shieldphase = 2
}
else if (shieldphase == 2 && flashphase == 2)
{
    if shielded
        unshield = 1
    else
    {
        shielded = 1
        timer = 1
    }
    shieldphase = 0
}
if reset
{
    reset = false
    destx = beginx
    desty = beginy
    travel = 1
}
if (travel == 1)
{
    startx = x
    starty = y
    travel = 2
    siner = 0
}
else if (travel == 2)
{
    siner += 0.1
    var prev = abs(point_distance(x, y, destx, desty))
    x = lerp(startx, destx, sin(siner))
    y = lerp(starty, desty, sin(siner))
    var now = abs(point_distance(x, y, destx, desty))
    show_debug_message(((string(prev) + " ") + string(now)))
    if (now >= prev || floor(now) == 0)
    {
        x = destx
        y = desty
        travel = 0
        siner = 0
    }
}
if ticknoise
{
    snd_play(snd_graze)
    ticknoise = 0
}
with (obj_mirrorbulletparent)
    dmg = global.monsteratk[other.myself]
if (shielded && shieldhp <= 0)
    noshield = 1
