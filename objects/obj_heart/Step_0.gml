if (global.mnfight != 2)
    movement = 0
else if (movement == 0)
    movement = 1
global.invc -= 1
if instance_exists(obj_battlecontroller)
{
    if (global.invc > 0 || obj_battlecontroller.runaway == 1)
        image_speed = 0.5
    else
    {
        image_index = 0
        image_speed = 0
    }
}
if (image_speed == 0)
    dmgtkr = 0
charge -= 1
if (shot == 1 && control_check_pressed(0) && global.mnfight == 2)
{
    if (instance_number(obj_heartshot) == 0 || charge < 0)
    {
        charge = 14
        instance_create((x + 4), (y + 2), obj_heartshot)
        var s = audio_play_sound(snd_heartshot, 80, false)
        audio_sound_gain(s, 0.3, 0)
    }
}
if (sprite_index == spr_confuseheart)
    image_angle += 6
if (sprite_index == spr_heartblue || sprite_index == spr_heartblue_r || sprite_index == spr_heartblue_l || sprite_index == spr_heartblue_u)
    customcolor = 13134412
if (sprite_index == spr_heartyellow || sprite_index == spr_heartyellow_center || sprite_index == spr_heartyellow_flip)
    customcolor = 5881841
if (sprite_index == spr_heartpurple || sprite_index == spr_heartpurple_center)
    customcolor = 9974135
if (sprite_index == spr_heartpink)
    customcolor = 10457079
if (sprite_index == spr_heartorange)
    customcolor = 16557568
if (orange == 1)
{
    if (global.mnfight == 2)
    {
        if (control_check(0) && charging == 0 && holdingz == 0)
        {
            up = 0
            down = 0
            left = 0
            right = 0
            charge = (maxcharge * 2)
            chargepitch = 0
            chargesound = 1
            chargesnd = -1
            lazsnd = -1
            lastpressed = "none"
            charging = 1
        }
        else if (control_check(0) && charging == 0 && holdingz == 1)
            holdingz = 0
        if (chargesound == 1)
        {
            if (chargepitch < 1)
                chargepitch += 0.05
            if (!caster_is_playing(snd_charge))
                chargesnd = caster_loop(snd_charge, 1, 1)
            caster_set_pitch(chargesnd, chargepitch)
        }
        if (charging == 1)
        {
            var speedval = 0
            if (charge > 0)
                speedval = ((maxcharge * 2) - charge)
            else
                speedval = (maxcharge * 2)
            global.sp = (global.asp - (speedval / 10))
            if obj_time.left
                lastpressed = "left"
            if obj_time.right
                lastpressed = "right"
            if obj_time.up
            {
                if (lastpressed == "left")
                    lastpressed = "leftup"
                else if (lastpressed == "right")
                    lastpressed = "rightup"
                else
                    lastpressed = "up"
            }
            if obj_time.down
            {
                if (lastpressed == "left")
                    lastpressed = "leftdown"
                else if (lastpressed == "right")
                    lastpressed = "rightdown"
                else
                    lastpressed = "down"
            }
            if keyboard_check_released(global.keybind[4])
            {
                charging = 2
                charge = (-charge)
                if (charge > maxcharge)
                    charge = maxcharge
                charge3 = 1
                charge2 = charge
                chargesound = 0
                if (chargesnd != -1)
                {
                    snd_stop(chargesnd)
                    audio_stop_sound(chargesnd)
                }
                if (charge >= 4)
                {
                    var pitchfactor = (2 - (charge / maxcharge))
                    lazsnd = caster_play(snd_laz, 1, 1)
                    caster_set_pitch(lazsnd, pitchfactor)
                }
            }
        }
        if (charging == 2)
        {
            movement = 3
            var pressingnone = 0
            var spfactor = global.sp
            if ((charge2 - global.sp) < 0)
                spfactor = charge2
            if obj_time.up
            {
                y -= (charge2 - spfactor)
                pressingnone = 0
            }
            if obj_time.left
            {
                x -= (charge2 - spfactor)
                pressingnone = 0
            }
            if obj_time.right
            {
                x += (charge2 - spfactor)
                pressingnone = 0
            }
            if obj_time.down
            {
                y += (charge2 - spfactor)
                pressingnone = 0
            }
            if ((!obj_time.up) && (!obj_time.down) && (!obj_time.left) && (!obj_time.right))
                pressingnone = 1
            if pressingnone
            {
                if (lastpressed != "none")
                {
                    if (lastpressed == "up")
                        y -= (charge2 - spfactor)
                    if (lastpressed == "leftup")
                    {
                        y -= (charge2 - spfactor)
                        x -= (charge2 - spfactor)
                    }
                    if (lastpressed == "rightup")
                    {
                        y -= (charge2 - spfactor)
                        x += (charge2 - spfactor)
                    }
                    if (lastpressed == "left")
                        x -= (charge2 - spfactor)
                    if (lastpressed == "right")
                        x += (charge2 - spfactor)
                    if (lastpressed == "down")
                        y += (charge2 - spfactor)
                    if (lastpressed == "leftdown")
                    {
                        y += (charge2 - spfactor)
                        x -= (charge2 - spfactor)
                    }
                    if (lastpressed == "rightdown")
                    {
                        y += (charge2 - spfactor)
                        x += (charge2 - spfactor)
                    }
                }
                else
                {
                    charging = 3
                    if (movement != 1)
                        movement = 0
                    if (lazsnd != -1)
                        snd_stop(lazsnd)
                }
            }
            charge2--
            global.sp = global.asp
            if (charge2 <= 0)
            {
                global.sp = global.asp
                charging = 0
                if (movement != 1)
                    movement = 0
            }
            else
                scr_afterimage()
        }
        if (charging == 3)
        {
            chargepitch -= 0.05
            if (chargepitch >= 0)
            {
                if (!caster_is_playing(snd_charge))
                    chargesnd = caster_loop(snd_charge, 1, 1)
                caster_set_pitch(chargesnd, chargepitch)
            }
            if (chargesnd != -1 && chargepitch <= 0)
            {
                caster_set_pitch(chargesnd, 1)
                snd_stop(chargesnd)
                audio_stop_sound(chargesnd)
                if (!caster_is_playing(snd_charge))
                    charging = 0
                chargesound = 0
            }
        }
    }
    else if (charging >= 1)
    {
        if (chargesnd != -1)
        {
            caster_set_pitch(chargesnd, 1)
            snd_stop(chargesnd)
            audio_stop_sound(chargesnd)
        }
        up = 0
        down = 0
        left = 0
        right = 0
        charge = (maxcharge * 2)
        chargepitch = 0
        chargesound = 0
        chargesnd = -1
        lazsnd = -1
        lastpressed = "none"
        charging = 0
        global.sp = global.asp
    }
}
if (confuse == 1 && global.mnfight == 2)
{
    if (x < (obj_lborder.x + 8))
        x = (obj_lborder.x + 8)
    if (y < (obj_uborder.x + 8))
        y = (obj_uborder.x + 8)
    if (x > (obj_rborder.x - 8))
        x = (obj_rborder.x - 8)
    if (y > (obj_dborder.y - 8))
        y = (obj_dborder.y - 8)
}
if (movement == 11)
{
    vspeed = 0
    if obj_time.up
        y -= global.sp
    if obj_time.down
        y += global.sp
    if obj_time.left
    {
        if (jumpstage == 1 && hspeed == 0)
        {
            jumpstage = 2
            hspeed = -6
        }
    }
}
if (movement == 12)
{
    hspeed = 0
    if obj_time.left
        x -= global.sp
    if obj_time.right
        x += global.sp
    if obj_time.down
    {
        if (jumpstage == 1 && vspeed == 0)
        {
            jumpstage = 2
            vspeed = 6
        }
    }
}
if (movement == 13)
{
    vspeed = 0
    if obj_time.up
        y -= global.sp
    if obj_time.down
        y += global.sp
    if obj_time.right
    {
        if (jumpstage == 1 && hspeed == 0)
        {
            jumpstage = 2
            hspeed = 6
        }
    }
}
if (jumpstage == 2 && movement == 2)
{
    if (global.osflavor == 1)
    {
        if (keyboard_check_direct(global.keybind[1]) == 0 && vspeed <= -1)
            vspeed = -1
    }
    if (global.osflavor != 1)
    {
        if (obj_time.up == 0 && vspeed <= -1)
            vspeed = -1
    }
    if (vspeed > 0.5 && vspeed < 8)
        vspeed += 0.6
    if (vspeed > -1 && vspeed <= 0.5)
        vspeed += 0.2
    if (vspeed > -4 && vspeed <= -1)
        vspeed += 0.5
    if (vspeed <= -4)
        vspeed += 0.2
}
if (jumpstage == 2 && movement == 11)
{
    if (global.osflavor == 1)
    {
        if (keyboard_check_direct(global.keybind[0]) == 0 && hspeed <= -1)
            hspeed = -1
    }
    if (global.osflavor != 1)
    {
        if (obj_time.left == 0 && hspeed <= -1)
            hspeed = -1
    }
    if (hspeed > 0.5 && hspeed < 8)
        hspeed += 0.6
    if (hspeed > -1 && hspeed <= 0.5)
        hspeed += 0.2
    if (hspeed > -4 && hspeed <= -1)
        hspeed += 0.5
    if (hspeed <= -4)
        hspeed += 0.2
}
if (jumpstage == 2 && movement == 12)
{
    if (global.osflavor == 1)
    {
        if (keyboard_check_direct(global.keybind[3]) == 0 && vspeed >= 1)
            vspeed = 1
    }
    if (global.osflavor != 1)
    {
        if (obj_time.down == 0 && vspeed >= 1)
            vspeed = 1
    }
    if (vspeed < -0.5 && vspeed > -8)
        vspeed -= 0.6
    if (vspeed < 1 && vspeed >= -0.5)
        vspeed -= 0.2
    if (vspeed < 4 && vspeed >= 1)
        vspeed -= 0.5
    if (vspeed >= 4)
        vspeed -= 0.2
}
if (jumpstage == 2 && movement == 13)
{
    if (global.osflavor == 1)
    {
        if (keyboard_check_direct(global.keybind[2]) == 0 && hspeed >= 1)
            hspeed = 1
    }
    if (global.osflavor != 1)
    {
        if (obj_time.right == 0 && hspeed >= 1)
            hspeed = 1
    }
    if (hspeed < -0.5 && hspeed > -8)
        hspeed -= 0.6
    if (hspeed < 1 && hspeed >= -0.5)
        hspeed -= 0.2
    if (hspeed < 4 && hspeed >= 1)
        hspeed -= 0.5
    if (hspeed >= 4)
        hspeed -= 0.2
}
if (ignore_border == 0 && instance_exists(obj_sansb_body) && global.mnfight == 2)
{
    if (x < (global.idealborder[0] + 4))
    {
        x = (global.idealborder[0] + 4)
        event_user(7)
        if (hspeed < 0)
            hspeed = 0
        if (movement == 13)
            jumpstage = 1
    }
    if (y < (global.idealborder[2] + 4))
    {
        y = (global.idealborder[2] + 4)
        event_user(7)
        if (vspeed < 0)
            vspeed = 0
        if (movement == 12)
            jumpstage = 1
    }
    if (x > (global.idealborder[1] - 16))
    {
        x = (global.idealborder[1] - 16)
        event_user(7)
        if (hspeed > 0)
            hspeed = 0
        if (movement == 11)
            jumpstage = 1
    }
    if (y > (global.idealborder[3] - 16))
    {
        y = (global.idealborder[3] - 16)
        event_user(7)
        if (vspeed > 0)
            vspeed = 0
        if (movement == 2)
            jumpstage = 1
    }
}
if instance_exists(obj_battlecontroller)
{
    if (obj_battlecontroller.runaway == 1 && x < -20)
    {
        if (instance_exists(obj_unfader) == 0)
            instance_create(0, 0, obj_unfader)
        if (x < -60)
        {
            if (global.flag[15] == 0)
            {
                caster_stop(global.batmusic)
                caster_free(global.batmusic)
            }
            room_goto(global.currentroom)
        }
    }
}
