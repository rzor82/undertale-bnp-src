if (temphide == 0)
{
    dogsiner += 1
    if (textchosen == 0)
    {
        choosething = irandom((array_length_1d(bottommessage) - 1))
        textlength = string_width(bottommessage[choosething])
        textchosen = 1
    }
    if (dogchosen == 0)
    {
        dogchoosething = irandom(100)
        if global.debug
            dogchoosething = 69
        dogchosen = 1
    }
    xx = __view_get(0, 0)
    yy = __view_get(1, 0)
    tpoff = ((tp - tpy) + yy)
    bpoff = (((-bp) + bpy) + yy)
    if (ss != -4)
        draw_sprite_ext(ss, 0, xx, yy, 0.5, 0.5, 0, c_white, 1)
    draw_set_color(c_black)
    draw_set_alpha((alpha / 2))
    if (instance_exists(obj_doomtimer) || instance_exists(obj_mettnews_ticker))
        draw_rectangle((xx - 10), (yy - 10), (xx + 330), (yy + 200), false)
    else
        draw_rectangle((xx - 10), (yy - 10), (xx + 330), (yy + 250), false)
    draw_set_alpha(1)
    draw_set_font(fnt_maintext)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_alpha(alpha)
    if (state == 0)
    {
        px = xx
        py = yy
        if (select == 0)
        {
            px = (xx + 20)
            py = (yy + 65)
        }
        else if (select == 1)
        {
            px = (xx + 45)
            py = (yy + 85)
        }
        else if (select == 2)
        {
            px = (xx + 70)
            py = (yy + 105)
        }
        else if (select == 3 && os_canquit == 1)
        {
            px = (xx + 95)
            py = (yy + 125)
        }
        else if (select == 4 && os_canquit == 1)
        {
            px = (xx + 120)
            py = (yy + 145)
        }
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), py, 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), py, 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, py, 1, 1, 0, c_white, alpha)
        scr_drawtext_outline(((xx + 20) + (select == 0 ? 18 : 0)), (yy + 60), "Return to Game")
        if fakepause
            draw_set_color(c_gray)
        scr_drawtext_outline(((xx + 45) + (select == 1 ? 18 : 0)), (yy + 80), "Main Menu")
        scr_drawtext_outline(((xx + 70) + (select == 2 ? 18 : 0)), (yy + 100), "Settings")
        draw_set_color(c_white)
        if (os_canquit == 1)
            scr_drawtext_outline(((xx + 95) + (select == 3 ? 18 : 0)), (yy + 120), "End Program")
        if global.debug
            scr_drawtext_outline(((xx + 120) + (select == 4 ? 18 : 0)), (yy + 140), "Debug Menu")
        draw_set_color(c_silver)
        if fakepause
        {
            if (select != 0 && select != 3)
                scr_drawtext_outline((xx + 10), (yy + 160), btnno)
            else
                scr_drawtext_outline((xx + 10), (yy + 160), btninfo[select])
        }
        else
            scr_drawtext_outline((xx + 10), (yy + 160), btninfo[select])
        draw_set_alpha(1)
    }
    else if (state == 1 || state == 2)
    {
        px = xx
        py = yy
        if (select_opt[state] == -1)
        {
            px = (xx + 60)
            py = (yy + 125)
        }
        else if (select_opt[state] == 1)
        {
            px = (xx + 220)
            py = (yy + 125)
        }
        else
        {
            px = (xx + 165)
            py = (yy + 125)
        }
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), py, 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), py, 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px - 1), (py + 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, (px + 1), (py - 1), 1, 1, 0, c_black, alpha)
        draw_sprite_ext(spr_heartsmall, 0, px, py, 1, 1, 0, c_white, alpha)
        draw_set_halign(fa_center)
        draw_set_color(c_silver)
        scr_drawtext_outline((xx + 160), (yy + 60), stateinfo[state])
        draw_set_color(c_white)
        draw_set_halign(fa_left)
        scr_drawtext_outline((xx + 80), (yy + 120), "Yes")
        scr_drawtext_outline((xx + 240), (yy + 120), "No")
        draw_set_alpha(1)
    }
    if (drawpause == 1)
    {
        draw_set_color(c_black)
        if ((!instance_exists(obj_doomtimer)) && noticker == 0)
            draw_rectangle((xx - 10), ((yy + 240) - bp), (xx + 330), (yy + 250), false)
        draw_rectangle((xx - 10), (yy + tp), (xx + 330), (yy - 10), false)
        draw_set_color(c_white)
        draw_set_font(fnt_maintext)
        draw_set_halign(fa_left)
        if fakepause
            draw_text_transformed((xx + 10), (8 + tpoff), "GAME (NOT) PAUSED", 1.5, 1.5, 0)
        else
            draw_text_transformed((xx + 10), (8 + tpoff), "GAME PAUSED", 1.5, 1.5, 0)
        if (scr_murderlv() < 2)
        {
            if (dogchoosething >= 69 && dogchoosething <= 85)
                draw_sprite_ext(spr_tobdog_sleep_trash, (dogsiner / 12), (xx + 100), (8 + tpoff), 1, 1, 0, -1, 1)
        }
        draw_set_halign(fa_right)
        if instance_exists(obj_doomtimer)
        {
            draw_set_color(c_yellow)
            dx = floor((obj_doomtimer.doomtime / 30))
            dx2 = floor((obj_doomtimer.doomtime / 180))
            if (dx >= 120)
                truezero = 1
            if (truezero == 0)
                doomtimedraw = (120 - dx)
            else
            {
                draw_set_color(c_red)
                doomtimedraw = 0
                forceclose = 1
            }
            draw_text((xx + 310), (4 + tpoff), ("TIME: " + string(doomtimedraw)))
        }
        else
        {
            draw_set_color(c_white)
            minutes = floor((obj_time.time / 1800))
            seconds = round((((obj_time.time / 1800) - minutes) * 60))
            if (seconds == 60)
                seconds = 59
            if (seconds < 10)
                seconds = ("0" + string(seconds))
            draw_text((xx + 310), (4 + tpoff), ((("TIME: " + string(minutes)) + ":") + string(seconds)))
        }
        draw_set_color(c_white)
        draw_text((xx + 310), (20 + tpoff), scr_areaname())
        draw_set_halign(fa_left)
        if ((!instance_exists(obj_doomtimer)) && global.flag[45] != 4 && global.flag[425] == 0 && noticker == 0)
        {
            if ((tickersiner - textlength) >= tickermax)
            {
                tickersiner = -320
                textchosen = 0
            }
            else
                tickersiner += 1.5
            draw_set_color(c_yellow)
            if (murder == 0)
                draw_text((xx - tickersiner), (210 + bpoff), bottommessage[choosething])
        }
    }
    draw_set_halign(fa_left)
}
else
    textchosen = 0
