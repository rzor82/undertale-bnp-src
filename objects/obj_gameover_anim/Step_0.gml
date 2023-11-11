if (con >= 6 && (!instance_exists(target_obj)))
{
    instance_destroy()
    return;
}
with (target_obj)
{
    if (instance_number(object_index) > 1)
        instance_destroy()
}
if (con == 0)
{
    ss = sprite_create_from_surface(application_surface, 0, 0, w, h, false, false, 0, 0)
    do_play = (!audio_is_playing(snd_hurt1))
    audio_pause_all()
    if do_play
        snd_play(snd_hurt1)
    else
        audio_resume_sound(snd_hurt1)
    if instance_exists(obj_purpleheart)
        heart_sprite = 49
    else
    {
        with (obj_heart)
            other.heart_sprite = sprite_index
    }
    do_rot = heart_sprite == 2223
    if do_rot
        heart_sprite = 48
    if overworld
    {
        with (obj_soulvision)
        {
            var hoffsetx = (offset + offsetx)
            var hoffsety = (17 + offsety)
            global.myxb = (((obj.x - __view_get(0, 0)) + hoffsetx) * other.image_xscale)
            global.myyb = (((obj.y - __view_get(1, 0)) + hoffsety) * other.image_yscale)
        }
    }
    with (obj_battlebg_screenshotter)
        instance_destroy()
    if (global.flag[500] == 0)
    {
        with (obj_dropped_item)
            instance_destroy()
    }
    with (all)
    {
        if (!persistent)
            event_perform(ev_other, ev_room_end)
    }
    instance_deactivate_all(true)
    instance_activate_object(obj_time)
    instance_activate_object(obj_weather)
    instance_activate_object(obj_expander)
    instance_activate_object(obj_dropped_item)
    instance_activate_object(obj_borderdrawer)
    instance_activate_object(obj_pausecontroller)
    instance_activate_object(obj_speedrun_tracker)
    instance_activate_object(target_obj)
    do_ss_draw = 1
    alarm[4] = ((flowey && global.floss < 3) ? 60 : 30)
    if skip
        alarm[4] /= 2
    con = 3
}
else if (con == 4)
{
    do_ss_draw = 0
    with (obj_expander)
        instance_destroy()
    with (obj_borderdrawer)
        instance_destroy()
    scr_enable_screen_border(false)
    global.screen_border_activate_on_game_over = global.flag[500] == 0
    if flowey
    {
        var layers = layer_get_all()
        var elements = -4
        for (i = 0; i < array_length_1d(layers); i++)
        {
            elements = layer_get_all_elements(layers[i])
            for (j = 0; j < array_length_1d(elements); j++)
            {
                if (layer_get_element_type(elements[j]) == 1)
                {
                    layer_set_visible(layers[i], 0)
                    j = array_length_1d(elements)
                }
            }
        }
    }
    else
        room_goto(room_gameover)
    sprite_delete(ss)
    con = 6
}
else if (con == 6)
{
    instance_activate_object(target_obj)
    x = ((__view_get(2, 0) / 2) - (sprite_width / 2))
    y = (__view_get(3, 0) - sprite_height)
    if (global.flag[500] == 0 && (!flowey))
    {
        x -= 11
        y -= 26
    }
    with (target_obj)
    {
        visible = true
        depth = (other.depth - 1)
        other.destx = (((__view_get(2, 0) / 2) - (sprite_width / 2)) + 10)
        other.desty = (other.y + (17 * other.image_yscale))
        other.initial_dist = point_distance(x, y, other.destx, other.desty)
        if other.skip
            other.desty -= 50
        move_towards_point(other.destx, other.desty, 1)
        alarm[0] = -1
    }
    con = 7
}
else if (con == 7)
{
    with (target_obj)
    {
        var dist = point_distance(x, y, other.destx, other.desty)
        if (dist < speed)
        {
            dist = 0
            image_angle = 0
            x = other.destx
            y = other.desty
            other.alarm[4] = 30
            other.con = 8
            speed = 0
        }
        else
        {
            var target_speed = round(((dist / 10) + 1))
            if (speed < target_speed)
                speed += 1
            else if (speed > target_speed)
                speed -= 1
        }
        other.image_alpha = (1 - (dist / other.initial_dist))
        if other.do_rot
            image_angle = (180 * (dist / other.initial_dist))
    }
    svision_alpha = image_alpha
}
else if (con == 8)
{
    if skip
    {
        image_index = look_up_count
        target_obj.alarm[0] = 1
        alarm[4] = -1
        con = 11
    }
    with (target_obj)
    {
        image_alpha = 1
        speed = 0
    }
}
else if (con == 9)
{
    desty -= 50
    with (target_obj)
    {
        other.initial_dist = point_distance(x, y, other.destx, other.desty)
        move_towards_point(other.destx, other.desty, 1)
    }
    con = 10
}
else if (con == 10)
{
    with (target_obj)
    {
        dist = point_distance(x, y, other.destx, other.desty)
        if (dist < speed)
        {
            other.con = 11
            alarm[0] = 40
            speed = 0
        }
        else
        {
            target_speed = round(((dist / 10) + 1))
            if (speed < target_speed)
                speed += 1
            else if (speed > target_speed)
                speed -= 1
        }
        other.image_index = (other.look_up_count - (other.look_up_count * (dist / other.initial_dist)))
    }
}
else if (con == 11)
{
    if (target_obj.alarm[2] > 0 || (global.flag[500] == 1 && target_obj.heartcon == 5 && target_obj.hearttimer >= collapse_time))
    {
        image_alpha = 1
        image_index = (look_up_count + 4)
        image_speed = 0.33
        con = 12
        svision_draw = 0
    }
    else if (target_obj.alarm[0] < 1)
    {
        if (global.flag[500] == 0 && skip && target_obj.alarm[1] > 30)
            target_obj.alarm[1] = 30
        if (global.flag[500] == 0 || (target_obj.heartcon == 5 && target_obj.hearttimer >= shake_time))
            image_speed = 0.33
        else
            image_index = (look_up_count + 1)
        if (image_index > (look_up_count + 4) || image_index < (look_up_count + 1))
            image_index = (look_up_count + 1)
    }
}
else if (con == 12)
{
    with (OBJ_WRITER)
        force_outline = 1
    if (floor(image_index) == (sprite_get_number(sprite_index) - 1))
        image_speed = 0
    if flowey
    {
        if (target_obj.con == 6)
        {
            with (obj_gameoverbg)
                other.image_alpha = image_alpha
            layers = layer_get_all()
            elements = -4
            for (i = 0; i < array_length_1d(layers); i++)
                layer_set_visible(layers[i], 1)
        }
    }
    else if (room != room_gameover)
        instance_destroy()
}
