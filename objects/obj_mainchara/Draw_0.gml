if (view_current == 2 && instance_exists(obj_battlebg_screenshotter) && obj_battlebg_screenshotter.active)
    return;
if (inwater == 0)
{
    if (sitting != 1)
    {
        draw_sprite_ext(gsprite, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
        if (room == room_water_waterfall3)
        {
            draw_sprite_ext(gsprite, image_index, x, y, 1, 1, image_angle, c_black, image_alpha)
            gpu_set_fog(true, c_black, 0, 1)
        }
        draw_set_alpha(image_alpha)
        if (room == room_outsideworld)
        {
            thisblend = merge_color(c_black, c_orange, 0.2)
            image_blend = thisblendf
        }
        if (dsprite != spr_maincharad_cozy)
            scr_draw_armor_sprites()
    }
    draw_set_alpha(1)
    gpu_set_fog(false, c_black, 0, 0)
}
else
{
    draw_sprite_part_ext(gsprite, image_index, 0, 0, sprite_width, (sprite_height - 5), x, (y + 5), 1, 1, c_white, image_alpha)
    if (running == 0)
    {
        if (image_index == 1 || image_index == 3)
            mp = 0
    }
    else
    {
        anotheruselessvariable = 0
        if (run_index == 1 || run_index == 3 || run_index == 5)
            mp = 0
    }
    scr_draw_armor_sprites()
    draw_sprite(spr_waterripple, 0, x, y)
}
if (dimcon == 1)
{
    snd_play(snd_undynedis)
    obj_time.dimcon = 1
    dimcon = 2
}
else if (dimcon == 0)
    obj_time.dimcon = 0
if (global.hp == 0)
    global.hp = 1
var step = floor(image_index)
var roomname = room_get_name(room)
if (image_speed == 0)
    gstep = 0
if (step != prev_step)
{
    if ((room >= room_tundra_inn_1f && room <= room_tundra_sansbasement) || room == room_tundra_inn_2f_real || room == room_tundra_qcshop_room)
        toristoppingyou = 1
    if (toristoppingyou == 0)
    {
        if (string_pos("tundra", roomname) != 0)
            snowdined = 1
        else if (string_pos("fogroom", roomname) != 0)
            snowdined = 1
        else
            snowdined = 0
        if (string_pos("precore", roomname) != 0)
            cored = 1
        else
            cored = 0
        if (room == room_sanscorridor || (room >= room_basement1 && room <= room_basement5))
        {
            if (step == 1 || step == 3 || step == 5)
            {
                switch gstep
                {
                    case 0:
                        snd_play(snd_step1)
                        break
                    case 1:
                        snd_play(snd_step2)
                        break
                }

                gstep ^= 1
            }
        }
        else if (inwater == 1)
        {
            if (step == 1 || step == 3 || step == 5)
                snd_play(snd_splash)
        }
        else if (room == ROOM_MONITOR || room == ROOM_MAN)
        {
            if (step == 1 || step == 3 || step == 5)
            {
                switch gstep
                {
                    case 0:
                        snd_play(snd_gstep1)
                        break
                    case 1:
                        snd_play(snd_gstep2)
                        break
                    case 2:
                        snd_play(snd_gstep3)
                        break
                    case 3:
                        snd_play(snd_gstep4)
                        break
                }

                if (++gstep > 3)
                    gstep = 0
            }
        }
        else if (snowdined == 1)
        {
            if (step == 1 || step == 3 || step == 5)
            {
                switch gstep
                {
                    case 0:
                        snd_play(snd_snowstepping1)
                        break
                    case 1:
                        snd_play(snd_snowstepping2)
                        break
                    case 2:
                        snd_play(snd_snowstepping3)
                        break
                    case 3:
                        snd_play(snd_snowstepping4)
                        break
                }

                gstep = choose(0, 1, 2, 3)
            }
            scr_snowstep(step)
        }
        else if (cored == 1)
        {
            if (step == 1 || step == 3 || step == 5)
            {
                switch gstep
                {
                    case 0:
                        snd_play(snd_metalstepping1)
                        break
                    case 1:
                        snd_play(snd_metalstepping2)
                        break
                    case 2:
                        snd_play(snd_metalstepping3)
                        break
                    case 3:
                        snd_play(snd_metalstepping4)
                        break
                }

                gstep = choose(0, 1, 2, 3)
            }
        }
        else if (global.armor == 64 && global.interact == 0)
        {
            if (dsprite != spr_maincharad_cozy)
            {
                if (step == 1 || step == 3 || step == 5)
                {
                    switch gstep
                    {
                        case 0:
                            tem = audio_play_sound(snd_tem5, 80, false)
                            caster_set_volume(tem, 0.9)
                            undstep = audio_play_sound(snd_undynestep, 80, false)
                            caster_set_volume(undstep, 0.333)
                            caster_set_pitch(undstep, 1.25)
                            break
                        case 1:
                            tem = audio_play_sound(snd_tem, 80, false)
                            caster_set_volume(tem, 0.9)
                            undstep = audio_play_sound(snd_undynestep, 80, false)
                            caster_set_volume(undstep, 0.333)
                            break
                    }

                    gstep ^= 1
                }
            }
        }
    }
    else
        snowdined = 0
}
prev_step = step
draw_set_alpha(1)
if (room == room_water_waterfall3)
    draw_sprite_ext(gsprite, image_index, x, y, 1, 1, image_angle, c_black, image_alpha)
