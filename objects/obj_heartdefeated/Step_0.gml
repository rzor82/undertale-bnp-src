if (dingus == 2)
{
    currentvol -= 0.02
    caster_set_volume(gameoversong, currentvol)
    if instance_exists(container)
        container.image_alpha = currentvol
}
if control_check_pressed(0)
    event_user(0)
if (candoitnow > 0 && global.flag[500] == 0 && dingus != 2)
{
    if keyboard_check_pressed(vk_anykey)
        z_count += 1
    if (z_count >= 4)
    {
        dingus = 2
        unfader = instance_create(0, 0, obj_unfader)
        unfader.tspeed = 1
        alarm[4] = 1
    }
}
if (instance_exists(container) && instance_exists(obj_gameoverbg))
{
    with (container)
    {
        depth = (obj_gameover_anim.depth - 1)
        var destx = (round(((room_width - sprite_width) / 2)) + 2)
        var desty = (round((((room_height - sprite_height) / 3) * 2)) - 30)
        var dist = point_distance(x, y, destx, desty)
        if ((x == destx && y == desty) || dist < speed)
        {
            x = destx
            y = desty
            speed = 0
        }
        else
        {
            move_towards_point(destx, desty, max(1, speed))
            var target_speed = round(((dist / 10) + 1))
            if (speed < target_speed)
                speed += 1
            else if (speed > target_speed)
                speed -= 1
        }
    }
}
if (heartcon == 5)
{
    hearttimer += 1
    if (global.flag[502] < 2)
    {
        if (hearttimer > 80 && hearttimer < 120)
        {
            x = ((thisx + random(3)) - random(3))
            y = ((thisy + random(3)) - random(3))
        }
        if (hearttimer == 120)
        {
            x = (thisx + 2)
            y = thisy
            snd_play(snd_break1)
            sprite_index = spr_heart
        }
        if (hearttimer >= 140)
        {
            if keyboard_check_pressed(vk_anykey)
                z_count += 1
            if (z_count >= 4)
                hearttimer = 254
        }
        if (hearttimer == 150)
        {
            global.typer = 61
            global.msc = 0
            global.msg[0] = scr_gettext("obj_heartdefeated_343")
            scr_setfont(fnt_main)
            var control_char_len = string_width("^5%%")
            instance_create(((room_width / 2) - round(((string_width(string_hash_to_newline(global.msg[0])) + control_char_len) / 2))), 100, OBJ_WRITER)
        }
        if (hearttimer == 220)
        {
            instance_create(0, 0, obj_screenwhiter)
            instance_create(0, 0, obj_expander)
        }
        if (hearttimer == 254)
        {
            global.border = 0
            global.hp = global.maxhp
            caster_free(-3)
            with (obj_gameover)
                instance_destroy()
            room_goto(room_battle)
        }
    }
    else
    {
        if (hearttimer > 20 && hearttimer < 40)
        {
            x = ((thisx + random(3)) - random(3))
            y = ((thisy + random(3)) - random(3))
        }
        if (hearttimer == 40)
        {
            x = (thisx + 2)
            y = thisy
            snd_play(snd_break1)
            sprite_index = spr_heart
        }
        if (hearttimer == 60)
        {
            instance_create(0, 0, obj_screenwhiter)
            instance_create(0, 0, obj_expander)
        }
        if (hearttimer == 94)
        {
            global.border = 0
            global.hp = global.maxhp
            caster_free(-3)
            with (obj_gameover)
                instance_destroy()
            room_goto(room_battle)
        }
    }
}
if (global.flag[272] == 1)
    global.typer = 17
