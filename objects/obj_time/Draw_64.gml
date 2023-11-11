var draw_color = c_white
if (global.debug == true && global.draw_debug == 1)
{
    draw_set_alpha(1)
    draw_set_font(fnt_maintext)
    draw_set_color(draw_color)
    draw_text(10, 10, string_hash_to_newline(round((time / 30))))
    ms = (delta_time / 1000)
    fps_var = (1 / (ms / 1000))
    draw_set_color(c_lime)
    if (fps < 25)
        draw_set_color(c_yellow)
    if (fps < 20)
        draw_set_color(c_red)
    draw_text(50, 10, (((((("FPS: " + string(fps)) + " (") + string(fps_real)) + ") [") + string(room_speed)) + "]"))
    draw_set_color(draw_color)
    draw_text(10, 30, ((((((room_get_name(room) + " (") + room_get_name(global.currentroom)) + ") - ") + string(room)) + " ") + string(global.currentroom)))
    draw_text(10, 50, ("Run: " + string(global.allowrun)))
    if instance_exists(obj_mainchara)
    {
        with (obj_mainchara)
            draw_text(10, 70, (((((((("(" + string(x)) + ", ") + string(y)) + ")") + " (") + string(depth)) + ") E:") + string(global.entrance)))
    }
    else if instance_exists(obj_undyneboss)
    {
        with (obj_undyneboss)
            draw_text(10, 70, ((((((((string(order) + " ") + string(hitno)) + " ") + string(hitfirst)) + " ") + string(global.flag[348])) + " ") + string(audio_sound_get_pitch(global.batmusic))))
    }
    if instance_exists(obj_soulvision)
    {
        draw_set_color(c_blue)
        with (obj_soulvision)
            draw_text(10, 90, ((((((((((((((string(alpha) + "/") + string(max_alpha)) + " (") + string(salpha)) + "), D: ") + string(darken)) + ", ") + string(draw_override)) + " (") + object_get_name(obj.object_index)) + ", ") + string(obj.visible)) + "), Depth: ") + string(depth)))
        draw_set_color(draw_color)
    }
    var interact_val = "UNKNOWN"
    switch global.interact
    {
        case -1:
            interact_val = "Paused"
            break
        case 0:
            interact_val = "Free Movement"
            break
        case 1:
            interact_val = "Movement Locked"
            break
        case 2:
            interact_val = "Toriel Post-Battle"
            break
        case 3:
            if (instance_exists(obj_battleblcon) || instance_exists(obj_battler) || instance_exists(obj_battlerflowey) || room == room_battle || room == room_floweybattle)
                interact_val = "Battle"
            else if (instance_exists(obj_floweybattler2) || room == room_f_start || room == room_floweyx)
                interact_val = "FFFFFF"
            else
                interact_val = "Room Transition"
            break
        case 4:
            interact_val = "Falling"
            break
        case 5:
            interact_val = "Menu Open"
            break
        case 6:
            interact_val = "Toriel Spike Bridge"
            break
        case 99:
            interact_val = "Toriel Event"
            break
    }

    if (global.interact == 0)
        draw_set_color(c_green)
    else
        draw_set_color(c_yellow)
    draw_text(10, 110, (((("Interact: " + interact_val) + " (") + string(global.interact)) + ")"))
    menu_state = "Enabled"
    draw_set_color(c_green)
    if (global.flag[17] != 0)
    {
        menu_state = "Disabled"
        draw_set_color(c_red)
    }
    else if (!instance_exists(obj_overworldcontroller))
    {
        menu_state = "Unavailable"
        draw_set_color(c_red)
    }
    else if (global.interact == 5)
        menu_state = "Open"
    else if (global.interact > 0)
    {
        menu_state = "Disabled via Interaction"
        draw_set_color(c_yellow)
    }
    draw_text(10, 130, (((("Menu " + menu_state) + " (") + string(global.flag[17])) + ")"))
    draw_set_color(draw_color)
    txt = (((string(global.plot) + " ") + string(global.flag[5])) + " ")
    draw_text(10, 150, txt)
    if (global.flag[498] == 1)
        draw_set_color(c_red)
    draw_text((10 + string_width(txt)), 150, scr_murderlv())
    draw_set_color(draw_color)
    var texty = 170
    if global.screen_border_active
    {
        txt = ("Border: " + string(global.screen_border_id))
        if (global.screen_border_id == 3)
            txt += ((" (" + string(global.screen_border_state)) + ")")
        txt += ((" (" + string(global.screen_border_alpha)) + ")")
        draw_text(10, texty, txt)
        texty += 20
    }
    draw_set_color(c_green)
    if (global.lastpce != "None")
        draw_set_color(c_yellow)
    draw_text(10, texty, ("Last PCE: " + global.lastpce))
    draw_set_color(draw_color)
    texty += 20
    if instance_exists(obj_borderdrawer)
    {
        draw_set_color(c_aqua)
        with (obj_borderdrawer)
        {
            var r = (color & 255)
            var g = ((color >> 8) & 255)
            var b = ((color >> 16) & 255)
            var col_str = (((((("(" + string(r)) + ", ") + string(g)) + ", ") + string(b)) + ")")
            draw_text(10, texty, (((((((((("Border Drawer " + string(id)) + " (") + string(border)) + " ") + string(alpha)) + " ") + col_str) + " ") + string(active)) + ")"))
            texty += 20
        }
        draw_set_color(draw_color)
    }
    if instance_exists(obj_expander)
    {
        draw_set_color(c_orange)
        with (obj_expander)
        {
            if (expanded != 2)
            {
                draw_text(10, texty, (((((((((((((("Expander " + string(id)) + " (") + string(origx)) + " ") + string(origy)) + " ") + string(origwv)) + " ") + string(orighv)) + " ") + string(origws)) + " ") + string(orighs)) + ")"))
                texty += 20
            }
        }
        draw_set_color(draw_color)
    }
    if instance_exists(obj_encountererparent)
    {
        with (obj_encountererparent)
        {
            kill_ptr = global.flag[200]
            kill_counter = global.flag[kill_ptr]
            kill_max = -1
            switch kill_ptr
            {
                case 202:
                    kill_max = 20
                    break
                case 203:
                    kill_max = 16
                    break
                case 204:
                    kill_max = 18
                    break
                case 205:
                    kill_max = 40
                    break
            }

            draw_set_color(make_color_hsv(max(0, (127 * ((kill_max - kill_counter) / kill_max))), 255, 255))
            text = (((((((string(global.encounter) + "/") + string(steps)) + " (") + object_get_name(object_index)) + ", ") + string(battlegroup)) + ")")
            if (kill_counter >= kill_max && kill_max > -1)
                text = "But nobody came"
            draw_text(10, texty, ((((text + " - ") + string(kill_counter)) + "/") + string(kill_max)))
            texty += 20
        }
        draw_set_color(draw_color)
    }
    draw_text(10, texty, (((("Auto-Target: " + string(global.autotarget)) + " (Weapon: ") + scr_gettext(("item_name_" + string(global.weapon)))) + ")"))
    texty += 20
    draw_text(10, texty, ("Battlegroup: " + string(global.battlegroup)))
    texty += 20
    draw_set_color(c_purple)
    with (obj_snowgen)
    {
        draw_text(10, texty, ((((((((((((((string(instance_number(obj_snowflake)) + "/") + string(limit)) + " ") + string(x)) + " ") + string(y)) + " ") + string(w)) + " ") + string(h)) + " ") + string(gen)) + " ") + string(wind)))
        texty += 20
    }
    draw_set_color(c_yellow)
    with (obj_asgore_lastcutscene)
    {
        draw_text(10, texty, ((string(con) + " ") + string(instance_number(obj_whtpxlgrav))))
        texty += 20
    }
    draw_set_color(c_lime)
    with (obj_battlebg_screenshotter)
    {
        draw_text(10, texty, ((((string(__view_get(0, 0)) + " ") + string(__view_get(1, 0))) + " ") + ((((string(active) + " ") + string(drew)) + " ") + string(__view_get(10, 2)))))
        texty += 20
    }
    draw_text(10, texty, ("Instance Count: " + string(instance_number(all))))
    texty += 20
    draw_text(10, texty, (((("Mouse X, Y: (" + string(mouse_x)) + ", ") + string(mouse_y)) + ")"))
    texty += 20
    draw_text(10, texty, scr_murderlv())
    draw_set_colour(c_white)
    texty += 20
    draw_text(10, texty, ((("ViewPos: " + string(__view_get(0, 0))) + ", ") + string(__view_get(1, 0))))
    texty += 20
    draw_text(10, texty, ("File: " + string(global.filechoice)))
    texty += 20
    draw_text(10, texty, ("Internet: " + string(global.allowinternet)))
    texty += 20
    if instance_exists(obj_battlecontroller)
    {
        draw_text(10, texty, ("Menu Number: " + string(global.bmenuno)))
        texty += 20
        draw_set_halign(fa_right)
        draw_text((room_width - 10), 60, string(global.turntimer))
        draw_text((room_width - 10), 80, ("mnfight: " + string(global.mnfight)))
        draw_text((room_width - 10), 100, ("myfight: " + string(global.myfight)))
        draw_set_halign(fa_left)
    }
    if instance_exists(obj_base_writer)
    {
        draw_set_colour(obj_base_writer.mycolor)
        draw_text(10, texty, "Current Color")
        texty += 20
    }
    if instance_exists(obj_battlecontroller)
    {
        draw_set_colour(c_white)
        draw_text(10, texty, string(obj_battlecontroller.newmessage))
        texty += 20
    }
}
if (showturkey == 1)
    draw_sprite(spr_npc_turkeyjerry, 0, 0, 0)
else if (showturkey == 2)
    draw_sprite_stretched(spr_npc_turkeyjerry, 0, 0, 0, window_get_width(), window_get_height())
if (ratio_timer < 300)
{
    if (global.screen_border_id != 0)
    {
        draw_set_alpha(1)
        draw_set_color(c_orange)
        draw_set_font(fnt_maintext)
        draw_set_halign(fa_right)
        draw_text((surface_get_width(application_surface) - 10), 10, "Warning: unsupported aspect-ratio.")
        draw_text((surface_get_width(application_surface) - 10), 25, "For best results, Undertale BnP should be played in 16:9.")
        draw_set_halign(fa_left)
        ratio_timer++
    }
}
