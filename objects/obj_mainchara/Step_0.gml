if (scr_murderlv() >= 2 || global.flag[221] == 1)
    gdraw = 1
if (global.debug == true && (!instance_exists(obj_battler)) && (!instance_exists(obj_transheart)))
{
    if keyboard_check_pressed(vk_add)
        global.battlegroup++
    if keyboard_check_pressed(vk_subtract)
        global.battlegroup--
}
scr_enable_screen_border(true)
if (global.plot > 1 || global.debug == true)
    global.canusegrazing = 1
if (unstick > 0)
{
    unstick += 1
    if (unstick > 3)
    {
        global.interact = 0
        unstick = 0
    }
}
if (oldtypedidfacecamera == 1)
{
    if (global.interact == 1 && didfacecamera == 0)
        didfacecamera = 1
    if (global.interact == 0 && didfacecamera == 1)
    {
        global.facing = 0
        didfacecamera = 0
    }
}
if (callsprite == 1)
{
    global.facing = 0
    callsprite = 2
}
if (callsprite == 2 && global.facing == 0)
{
    if instance_exists(obj_mirrorreflection)
        obj_mirrorreflection.fun = true
    if (scr_murderlv() == 0)
    {
        chara = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_actor)
        chara.fun = true
        chara.sprite_index = spr_mainchara_call
        chara.image_blend = image_blend
        chara.image_alpha = image_alpha
    }
    if (scr_murderlv() == 0)
        image_alpha = 0
    callsprite = 3
}
if (callsprite == 3 && (!instance_exists(obj_dialoguer)))
{
    if (scr_murderlv() == 0)
    {
        with (chara)
            instance_destroy()
    }
    image_alpha = 1
    if instance_exists(obj_mirrorreflection)
    {
        with (obj_mirrorreflection)
            obj_mirrorreflection.fun = false
    }
    callsprite = 0
}
if (fun == false)
{
    if (global.facing == 0)
        sprite_index = dsprite
    if (global.facing == 1)
        sprite_index = rsprite
    if (global.facing == 2)
        sprite_index = usprite
    if (global.facing == 3)
        sprite_index = lsprite
}
if (collision_point((bbox_left - 3), (bbox_top - 3), obj_solidparent, 0, 1) == -4)
    crumpet = 1
else
    crumpet = 2
strumpet = bbox_top
trumpet = bbox_left
if (global.inbattle == 1)
{
    with (obj_murder_monitor)
    {
        suppress = 1
        alarm[0] = 2
    }
    if (global.flag[15] == 0)
    {
        instance_create(0, 0, obj_musfadein)
        caster_resume(global.currentsong)
        caster_resume(global.currentsong2)
    }
    room_persistent = false
    global.inbattle = 0
    if (global.specialbattle == 0)
        global.interact = 0
    global.specialbattle = 0
    global.solobattle = 0
    scr_clean_temp_sprites()
    depth = 100
    var killptr = global.flag[200]
    if (killptr != 0)
    {
        if (global.flag[201] != global.kills)
            global.flag[killptr] += (global.kills - global.flag[201])
        if (global.flag[killptr] >= maxkills[(killptr - 202)])
            global.flag[(killptr + 19)] = 1
    }
}
if (obj_time.run && (!obj_time.mashing) && disable_run == 0 && inwater == 0 && webbed == 0 && moving == true)
{
    running = 1
    movemultiplier = (global.runspeed - 0.5)
    if (runtimer > 10)
        movemultiplier = (global.runspeed - 0.3)
    if (runtimer > 40)
        movemultiplier = (global.runspeed - 0.1)
    if (runtimer > 60 || autorun == 1)
        movemultiplier = global.runspeed
    if (runtimer > 120 || autorun == 2)
        movemultiplier = (global.runspeed + 0.4)
    if (runtimer > 999 || autorun == 99)
        movemultiplier = (global.runspeed * 2)
    if (movement == 1)
    {
        if (runtimer > 999 || autorun == 99)
            run_index += (image_speed * movemultiplier)
        else if (runtimer > 120 || autorun == 2)
            run_index += (image_speed * ((movemultiplier / 2.6) * 2.73))
        else if (runtimer > 60 || autorun == 1)
            run_index += (image_speed * ((movemultiplier / 2.6) * 2.71))
        else
            run_index += (image_speed * ((movemultiplier / 2.6) * 2.7))
        if (gdraw == 0)
        {
            if (run_index > 4)
                run_index = 0
            if (global.facing == 0)
                sprite_index = dsprite
            if (global.facing == 1)
                sprite_index = rsprite
            if (global.facing == 2)
                sprite_index = usprite
            if (global.facing == 3)
                sprite_index = lsprite
        }
        else
        {
            if (run_index > 4)
                run_index = 0
            if (global.facing == 0)
                sprite_index = dsprite_geno
            if (global.facing == 1)
                sprite_index = rsprite_geno
            if (global.facing == 2)
                sprite_index = usprite_geno
            if (global.facing == 3)
                sprite_index = lsprite_geno
        }
        image_index = run_index
    }
}
else
{
    webbed = 0
    if (unstick == 0)
        running = 0
    run_index = 0
    movemultiplier = 1
    runtimer = 0
}
if obj_time.left
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + floor((3 * movemultiplier))))
            x -= floor((2 * movemultiplier))
        else
            x -= floor((3 * movemultiplier))
        if (moving != true)
        {
            image_index += 1
            run_index += 1
        }
        moving = true
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                x -= floor((5 * movemultiplier))
        }
        image_speed = 0.2
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 3
    }
}
if obj_time.up
{
    if (movement == 1)
    {
        turned = 1
        y -= floor((3 * movemultiplier))
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                y -= floor((5 * movemultiplier))
        }
        if (moving != true)
        {
            image_index += 1
            run_index += 1
        }
        moving = true
        image_speed = 0.2
        if (obj_time.right && global.facing == 1)
            turned = 0
        if (obj_time.left && global.facing == 3)
            turned = 0
        if (turned == 1)
            global.facing = 2
    }
}
if obj_time.right
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - floor((3 * movemultiplier))))
                x += floor((2 * movemultiplier))
            else
                x += floor((3 * movemultiplier))
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    x += floor((5 * movemultiplier))
            }
            if (moving != true)
            {
                image_index += 1
                run_index += 1
            }
            moving = true
            image_speed = 0.2
            if (obj_time.up && global.facing == 2)
                turned = 0
            if (obj_time.down && global.facing == 0)
                turned = 0
            if (turned == 1)
                global.facing = 1
        }
    }
}
if obj_time.down
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += floor((3 * movemultiplier))
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    y += floor((5 * movemultiplier))
            }
            if (moving != true)
            {
                image_index += 1
                run_index += 1
            }
            moving = true
            image_speed = 0.2
            if (obj_time.right && global.facing == 1)
                turned = 0
            if (obj_time.left && global.facing == 3)
                turned = 0
            if (turned == 1)
                global.facing = 0
        }
    }
}
if (obj_time.run && (!obj_time.mashing) && disable_run == 0 && inwater == 0 && webbed == 0)
{
    if (moving == true)
    {
        runtimer += 1
        runcounter += 1
    }
    else
        runtimer = 0
}
else
    runtimer = 0
if raise_doors
{
    with (obj_doorparent)
        depth = -499
}
if control_check_pressed(0)
    event_user(0)
if control_check_pressed(2)
    event_user(2)
with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)
if ((!instance_exists(obj_battler)) && (!lock_depth))
{
    scr_depth()
    if (global.flag[85] == 1 && dsprite == spr_maincharad_umbrella)
        depth = (50000 - ((y * 10) + 300))
}
if gdraw
{
    var suffix = "_geno"
    if running
        suffix += "cide"
    gsprite = asset_get_index((sprite_get_name(sprite_index) + suffix))
    if (!sprite_exists(gsprite))
        gsprite = sprite_index
}
else
    gsprite = sprite_index
if (global.debug == true)
{
    if keyboard_check_pressed(vk_f2)
    {
        bepis ^= 1
        snd_stop(snd_sparkle1)
        snd_play(snd_sparkle1)
        for (i = 0; i < 8; i++)
            global.item[i] = 0
        if (bepis == 0)
        {
            global.flag[28] = 0
            scr_itemget(46)
            scr_itemget(4)
            scr_itemget(48)
            scr_itemget(44)
            scr_itemget(50)
            scr_itemget(53)
            scr_itemget(15)
            scr_itemget(12)
        }
        else
        {
            global.flag[28] = 1
            scr_itemget(64)
            scr_itemget(24)
        }
    }
    if keyboard_check_pressed(vk_f8)
    {
        stuck ^= 1
        if (stuck == false)
            snd_play(snd_tem)
        else
            snd_play(snd_tem6)
    }
}
if (global.interact == 0 && cutscene == false && inwater == 0 && (!instance_exists(obj_mirrorreflection)) && (!instance_exists(obj_puddle)) && global.flag[85] == 0)
{
    if (x == xprevious && y == yprevious)
    {
        idle_timer++
        if (global.debug == true && (!instance_exists(obj_mainchara_sit)) && keyboard_check_pressed(vk_f1))
        {
            if (idle_timer < 4500)
                idle_timer = 4499
            else if (idle_timer >= 4500)
                idle_timer = 9000
        }
        if (idle_timer == 4500)
        {
            if gdraw
            {
                sitting = 2
                global.interact = 1
                global.msg[0] = "* (You may not sit now^1,&  there are monsters nearby.)/%%"
                caster_pause(global.currentsong)
                scr_regulartext()
            }
            else
            {
                sit = instance_create((x + 8), (y + 30), obj_mainchara_sit)
                if (global.flag[458] == 1 && irandom(2) == 1)
                    sit.sprite_index = spr_maincharar_liedown_center
                if (global.flag[227] == 1)
                    sit.sprite_index = spr_mainchara_cozy_sit_happy
                sit.depth = depth
                sit.image_blend = image_blend
                sit.image_alpha = image_alpha
                sitting = 1
            }
        }
        if (idle_timer == 9000)
            dimcon = 1
    }
    else
    {
        if (sitting != 0)
        {
            sitting = 0
            if instance_exists(obj_mainchara_sit)
                instance_destroy(obj_mainchara_sit)
            if instance_exists(obj_caterpillar_parent)
            {
                obj_caterpillar_parent.fun = false
                with (obj_caterpillar_parent)
                    scr_caterpillar_interpolate()
            }
        }
        idle_timer = 0
        dimcon = 0
    }
}
else if (sitting == 2 && (!instance_exists(obj_dialoguer)))
{
    caster_resume(global.currentsong)
    global.interact = 0
    idle_timer = 0
    sitting = 0
}
if (dimcon != 0)
{
    if keyboard_check_pressed(vk_anykey)
    {
        if (idle_timer > 4500)
            idle_timer = 4501
        else if (idle_timer <= 4500)
            idle_timer = 0
        dimcon = 0
    }
}
if (global.flag[7] == 0)
{
    if (global.plot < 200 && room >= room_castle_front && room <= room_sanscorridor)
    {
        if (scr_murderlv() != 16)
        {
            with (obj_mainchara)
                disable_run = 1
        }
    }
}
