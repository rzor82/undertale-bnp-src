if (!surface_exists(menusurf))
    menusurf = surface_create(320, 240)
if (instance_exists(obj_labcamera) && view_current != 0)
    return;
if (global.interact == 5)
{
    global.menusurfx = lerp(global.menusurfx, 0, 0.5)
    global.menusurfy = lerp(global.menusurfy, 0, 0.5)
}
else
{
    global.menusurfx = lerp(global.menusurfx, global.menuoutx, 0.1)
    global.menusurfy = lerp(global.menusurfy, global.menuouty, 0.1)
}
buffer += 1
if (global.interact == 0)
    charmenu = 0
if (global.interact == 5)
{
    if instance_exists(obj_time)
    {
        if (obj_time.dimcon != 0)
        {
            obj_time.dimcon = 0
            obj_mainchara.dimcon = 0
            obj_mainchara.idle_timer = 4501
        }
    }
    surface_set_target(menusurf)
    draw_clear_alpha(c_white, 0)
    currentmenu = global.menuno
    if (global.menuno < 6 || global.menuno == 10)
        currentspot = global.menucoord[global.menuno]
    xx = 0
    yy = 10
    moveyy = yy
    if (obj_mainchara.y < (yy + 130))
        moveyy += 135
    if (global.menuno != 4)
    {
        draw_set_color(c_white)
        scr_textbox((16 + xx), (16 + moveyy), (91 + xx), (70 + moveyy))
        scr_textbox((16 + xx), (74 + yy), (91 + xx), (147 + yy))
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            scr_textbox((94 + xx), (16 + yy), (266 + xx), (194 + yy))
        if (global.menuno == 2)
        {
            var xend = 270
            if (global.language == "ja")
                xend += 9
            scr_textbox((94 + xx), (16 + yy), (xend + xx), (221 + yy))
            draw_set_color(c_black)
            ossafe_fill_rectangle(((98 + xx) + 4), ((19 + yy) + 4), ((267 + xx) - 4), ((221 + yy) - 4))
        }
        if (global.menuno == 3)
            scr_textbox((94 + xx), (16 + yy), (266 + xx), (148 + yy))
        if (global.menuno == 7)
            scr_textbox((94 + xx), (16 + yy), (266 + xx), (214 + yy))
        draw_set_color(c_black)
        ossafe_fill_rectangle(((19 + xx) + 4), ((19 + moveyy) + 4), ((88 + xx) - 4), ((67 + moveyy) - 4))
        ossafe_fill_rectangle(((19 + xx) + 4), ((77 + yy) + 4), ((88 + xx) - 4), ((144 + yy) - 4))
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            ossafe_fill_rectangle(((97 + xx) + 4), ((19 + yy) + 4), ((263 + xx) - 4), ((193 + yy) - 4))
        if (global.menuno == 2)
        {
            xend = 262
            if (global.language == "ja")
                xend += 8
            ossafe_fill_rectangle(((97 + xx) + 4), ((19 + yy) + 4), ((xend + xx) - 4), ((219 + yy) - 4))
        }
        if (global.menuno == 3)
            ossafe_fill_rectangle(((97 + xx) + 4), ((19 + yy) + 4), ((263 + xx) - 4), ((147 + yy) - 4))
        if (global.menuno == 7)
            ossafe_fill_rectangle(((97 + xx) + 4), ((19 + yy) + 4), ((263 + xx) - 4), ((213 + yy) - 4))
        scr_setfont(fnt_small)
        var numpos = ((23 + xx) + string_width(string_hash_to_newline("LV  ")))
        draw_text((23 + xx), (38 + moveyy), string_hash_to_newline("LV"))
        draw_text(numpos, (38 + moveyy), string_hash_to_newline(string(global.lv)))
        draw_text((23 + xx), (47 + moveyy), string_hash_to_newline("HP"))
        draw_text(numpos, (47 + moveyy), string_hash_to_newline(((string(global.hp) + "/") + string(global.maxhp))))
        draw_text((23 + xx), (56 + moveyy), string_hash_to_newline("G"))
        draw_text(numpos, (56 + moveyy), string_hash_to_newline(string(global.gold)))
        draw_set_color(c_white)
        scr_setfont(fnt_maintext)
        var name0_x = (23 + xx)
        var name0_y = (20 + moveyy)
        var name0_scale = 1
        draw_set_color(c_white)
        scr_setfont(fnt_small)
        numpos = ((23 + xx) + string_width(string_hash_to_newline("LV  ")))
        draw_text((23 + xx), (40 + moveyy), string_hash_to_newline("LV"))
        draw_text(numpos, (40 + moveyy), string_hash_to_newline(string(global.lv)))
        draw_text((23 + xx), (49 + moveyy), string_hash_to_newline("HP"))
        draw_text(numpos, (49 + moveyy), string_hash_to_newline(((string(global.hp) + "/") + string(global.maxhp))))
        draw_text((23 + xx), (58 + moveyy), string_hash_to_newline("G"))
        draw_text(numpos, (58 + moveyy), string_hash_to_newline(string(global.gold)))
        scr_setfont(fnt_maintext)
        if (global.language == "ja")
        {
            draw_set_font(fnt_ja_curs)
            name0_y += 4
            name0_scale = 0.5
        }
        draw_text_transformed(name0_x, name0_y, string_hash_to_newline(global.charname), name0_scale, name0_scale, 0)
        var xx0 = xx
        if (global.language == "ja")
            xx0 -= 2
        if (global.item[0] == 0)
            draw_set_color(c_gray)
        if (global.menuchoice[0] == 1)
            draw_text((41 + xx0), (84 + yy), string_hash_to_newline(scr_gettext("field_menu_item")))
        draw_set_color(c_white)
        draw_sprite(spr_menuitembttn, 0, (74 + xx), (88 + yy))
        if (global.menuchoice[1] == 1)
        {
            draw_text((41 + xx), (102 + yy), string_hash_to_newline(scr_gettext("field_menu_stat")))
            draw_sprite(spr_menustatbttn, 0, (74 + xx), (106 + yy))
        }
        if (global.menuchoice[2] == 1)
        {
            draw_text((41 + xx), (120 + yy), string_hash_to_newline(scr_gettext("field_menu_cell")))
            draw_sprite(spr_menucellbttn, 0, (74 + xx), (124 + yy))
        }
        if (global.menuno == 1 || global.menuno == 5)
        {
            for (i = 0; i < 8; i += 1)
                draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
            draw_text((116 + xx), (170 + yy), string_hash_to_newline(scr_gettext("item_menu_use")))
            draw_text(((116 + xx) + 48), (170 + yy), string_hash_to_newline(scr_gettext("item_menu_info")))
            draw_text(((116 + xx) + 105), (170 + yy), string_hash_to_newline(scr_gettext("item_menu_drop")))
        }
    }
    if (global.menuno == 3)
    {
        draw_sprite(spr_menucellpage, 0, (239 + xx), (19 + yy))
        for (i = 0; i < 7; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.phonename[i]))
    }
    if (global.menuno == 6)
    {
        scr_itemname()
        for (i = 0; i < 8; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
    }
    if (global.menuno == 7)
    {
        scr_storagename(300)
        for (i = 0; i < 10; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.itemname[i]))
    }
    if (global.menuno == 2)
    {
        if (charmenu == 0)
        {
            var stat_x = (108 + xx)
            if (global.language == "ja")
                stat_x -= 3
            var exp_x = (stat_x + 84)
            var kills_x = exp_x
            var name_y = (36 + yy)
            var lv_y = (62 + yy)
            var hp_y = (78 + yy)
            var at_y = (110 + yy)
            var df_y = (126 + yy)
            var weapon_y = (156 + yy)
            var armor_y = (172 + yy)
            var gold_y = (192 + yy)
            var kills_y = (192 + yy)
            if (global.language == "ja")
            {
                weapon_y -= 2
                gold_y += 2
                kills_y += 2
            }
            draw_sprite(spr_menustatpage, 0, (240 + xx), (22 + yy))
            if (scr_murderlv() >= 1 && global.lv < 20)
                gdraw = 1
            if (global.lv == 20)
                gdraw = 2
            if (gdraw == 0)
                draw_sprite(spr_mainchara_menu, 0, (194 + xx), (25 + yy))
            if (gdraw == 1)
                draw_sprite(spr_mainchara_menu_geno, 0, (194 + xx), (25 + yy))
            if (gdraw == 2)
                draw_sprite(spr_truechara_menu, 0, (194 + xx), (25 + yy))
            if (gdraw == 2)
                draw_sprite(spr_menuexpbttn, 0, (256 + xx), (115 + yy))
            else if (global.xp >= 10000)
                draw_sprite(spr_menuexpbttn, 0, (256 + xx), (115 + yy))
            else
                draw_sprite(spr_menuexpbttn, 0, (248 + xx), (115 + yy))
            if (gdraw < 2)
            {
                if (global.armor == 46)
                    draw_sprite(spr_statmenu_accessories_apron, 0, (195 + xx), (25 + yy))
                if (global.armor == 4)
                    draw_sprite(spr_statmenu_accessories_bandage, 0, (195 + xx), (25 + yy))
                if (global.armor == 48)
                    draw_sprite(spr_statmenu_accessories_cowboyhat, 0, (192 + xx), (23 + yy))
                if (global.armor == 44)
                    draw_sprite(spr_statmenu_accessories_glasses, 0, (195 + xx), (25 + yy))
                if (global.armor == 50)
                    draw_sprite(spr_statmenu_accessories_locket, 0, (195 + xx), (25 + yy))
                if (global.armor == 53)
                    draw_sprite(spr_statmenu_accessories_genolocket, 0, (195 + xx), (25 + yy))
                if (global.armor == 15)
                    draw_sprite(spr_statmenu_accessories_mandana, 0, (195 + xx), (25 + yy))
                if (global.armor == 12)
                    draw_sprite(spr_statmenu_accessories_bow, 0, (195 + xx), (25 + yy))
                if (global.armor == 64)
                    draw_sprite(spr_statmenu_accessories_temarmor, 0, (195 + xx), (25 + yy))
                if (global.armor == 24)
                    draw_sprite(spr_statmenu_accessories_tutu, 0, (192 + xx), (25 + yy))
                if (global.weapon == 3)
                    draw_sprite(spr_statmenu_accessories_stick, 0, (194 + xx), (25 + yy))
                if (global.weapon == 13)
                    draw_sprite(spr_statmenu_accessories_toyknife, 0, (195 + xx), (25 + yy))
                if (global.weapon == 14)
                    draw_sprite(spr_statmenu_accessories_tuffglov, 0, (194 + xx), (25 + yy))
                if (global.weapon == 25)
                    draw_sprite(spr_statmenu_accessories_balletshoes, 0, (195 + xx), (25 + yy))
                if (global.weapon == 45)
                    draw_sprite(spr_statmenu_accessories_notebook, 0, (195 + xx), (25 + yy))
                if (global.weapon == 47)
                    draw_sprite(spr_statmenu_accessories_pan, 0, (195 + xx), (25 + yy))
                if (global.weapon == 49)
                    draw_sprite(spr_statmenu_accessories_emptygun, 0, (195 + xx), (25 + yy))
                if (global.weapon == 51)
                    draw_sprite(spr_statmenu_accessories_dagger, 0, (195 + xx), (25 + yy))
                if (global.weapon == 52)
                    draw_sprite(spr_statmenu_accessories_realknife, 0, (195 + xx), (25 + yy))
            }
            draw_sprite(spr_menulovebttn, 0, (143 + xx), (67 + yy))
            draw_sprite(spr_menuhpbttn, 0, (171 + xx), (83 + yy))
            draw_sprite(spr_menuatkbttn, 0, (171 + xx), (115 + yy))
            draw_sprite(spr_menudefbttn, 0, (171 + xx), (131 + yy))
            draw_sprite(spr_menugoldbttn, 0, (171 + xx), (197 + yy))
            if (global.lv == 20)
                draw_text(stat_x, name_y, string_hash_to_newline(string(global.charname)))
            else
                draw_text(stat_x, name_y, string_hash_to_newline(scr_gettext("stat_menu_name")))
            draw_text(stat_x, lv_y, string_hash_to_newline(scr_gettext("stat_menu_lv", string(global.lv))))
            draw_text(stat_x, hp_y, string_hash_to_newline(scr_gettext("stat_menu_hp", string(global.hp), string(global.maxhp))))
            draw_text(stat_x, at_y, string_hash_to_newline(scr_gettext("stat_menu_at", string((global.at - 10)), string(global.wstrength))))
            draw_text(stat_x, df_y, string_hash_to_newline(scr_gettext("stat_menu_df", string((global.df - 10)), string(global.adef))))
            draw_text(stat_x, weapon_y, string_hash_to_newline(scr_gettext("stat_menu_weapon", scr_gettext(("item_name_" + string(global.weapon))))))
            var armorname = scr_gettext(("item_name_" + string(global.armor)))
            if (global.armor == 64)
                armorname = scr_gettext("stat_armor_temmie")
            draw_text(stat_x, armor_y, string_hash_to_newline(scr_gettext("stat_menu_armor", armorname)))
            draw_text(stat_x, gold_y, string_hash_to_newline(scr_gettext("stat_menu_gold")))
            if (global.kills > 20 || global.debug == true)
            {
                draw_sprite(spr_menukillbttn, 0, (256 + xx), (197 + yy))
                draw_text(kills_x, kills_y, string_hash_to_newline(scr_gettext("stat_menu_kills", string(global.kills))))
            }
            if (string_length(global.charname) >= 7)
            {
                var x2 = (192 + xx)
                var y2 = (32 + yy)
                var scale = 1
                if (global.language == "ja")
                {
                    x2 += 16
                    y2 += 20
                    scale = 0.5
                }
                draw_text_transformed(x2, y2, string_hash_to_newline(scr_gettext("stat_menu_namehack")), scale, scale, 0)
            }
            draw_text(exp_x, at_y, string_hash_to_newline(scr_gettext("stat_menu_exp", string(global.xp))))
            if (global.lv == 0)
                nextlevel = 1
            else if (global.lv == 1)
                nextlevel = (10 - global.xp)
            else if (global.lv == 2)
                nextlevel = (30 - global.xp)
            else if (global.lv == 3)
                nextlevel = (70 - global.xp)
            else if (global.lv == 4)
                nextlevel = (120 - global.xp)
            else if (global.lv == 5)
                nextlevel = (200 - global.xp)
            else if (global.lv == 6)
                nextlevel = (300 - global.xp)
            else if (global.lv == 7)
                nextlevel = (500 - global.xp)
            else if (global.lv == 8)
                nextlevel = (800 - global.xp)
            else if (global.lv == 9)
                nextlevel = (1200 - global.xp)
            else if (global.lv == 10)
                nextlevel = (1700 - global.xp)
            else if (global.lv == 11)
                nextlevel = (2500 - global.xp)
            else if (global.lv == 12)
                nextlevel = (3500 - global.xp)
            else if (global.lv == 13)
                nextlevel = (5000 - global.xp)
            else if (global.lv == 14)
                nextlevel = (7000 - global.xp)
            else if (global.lv == 15)
                nextlevel = (10000 - global.xp)
            else if (global.lv == 16)
                nextlevel = (15000 - global.xp)
            else if (global.lv == 17)
                nextlevel = (25000 - global.xp)
            else if (global.lv == 18)
                nextlevel = (50000 - global.xp)
            else if (global.lv == 19)
                nextlevel = (99999 - global.xp)
            else if (global.lv >= 20)
                nextlevel = 0
            if (nextlevel >= 1000 && nextlevel < 10000)
                draw_sprite(spr_menunextbttn, 0, (256 + xx), (131 + yy))
            else if (nextlevel < 10000)
                draw_sprite(spr_menunextbttn, 0, (249 + xx), (131 + yy))
            draw_text(exp_x, df_y, string_hash_to_newline(scr_gettext("stat_menu_next", string(nextlevel))))
        }
    }
    if (global.menuno == 4)
    {
        iniread = ossafe_ini_open("undertale.ini")
        name = ini_read_string("General", "Name", scr_gettext("save_menu_empty"))
        love = ini_read_real("General", "Love", 0)
        time = ini_read_real("General", "Time", 1)
        kills = ini_read_real("General", "Kills", 0)
        roome = ini_read_real("General", "Room", 0)
        ossafe_ini_close()
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        scr_textbox((54 + xx), (49 + yy), (265 + xx), (135 + yy))
        draw_set_color(c_black)
        ossafe_fill_rectangle(((57 + xx) + 4), ((52 + yy) + 4), ((262 + xx) - 4), ((132 + yy) - 4))
        draw_set_color(c_white)
        if (global.menucoord[4] == 2)
            draw_set_color(c_yellow)
        minutes = floor((time / 1800))
        seconds = round((((time / 1800) - minutes) * 60))
        if (seconds == 60)
            seconds = 59
        if (seconds < 10)
            seconds = ("0" + string(seconds))
        var roomname = scr_roomname(roome)
        var lvtext = scr_gettext("save_menu_lv", string(love))
        var timetext = scr_gettext("save_menu_time", string(minutes), string(seconds))
        var namesize = string_width(string_hash_to_newline(substr(name, 1, 6)))
        var lvsize = string_width(string_hash_to_newline(lvtext))
        var timesize = string_width(string_hash_to_newline(timetext))
        var x_center = (xx + 160)
        var lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
        var namepos = (70 + xx)
        var timepos = (250 + xx)
        if (global.language == "ja")
        {
            namepos -= 6
            timepos += 6
        }
        draw_sprite(spr_menusavepage, 0, (235 + xx), (105 + yy))
        draw_text(namepos, (60 + yy), string_hash_to_newline(name))
        draw_text(lvpos, (60 + yy), string_hash_to_newline(lvtext))
        draw_text((timepos - timesize), (60 + yy), string_hash_to_newline(timetext))
        if (global.language == "ja")
            scr_drawtext_centered(x_center, (80 + yy), roomname)
        else
            draw_text(namepos, (80 + yy), string_hash_to_newline(roomname))
        var savepos = (xx + 71)
        var returnpos = (xx + 161)
        if (global.language == "ja")
        {
            savepos = (xx + 78)
            returnpos = (xx + 173)
        }
        if (global.menucoord[4] == 0)
            draw_sprite(spr_heartsmall, 0, savepos, (yy + 113))
        if (global.menucoord[4] == 1)
            draw_sprite(spr_heartsmall, 0, returnpos, (yy + 113))
        if (global.menucoord[4] < 2)
        {
            draw_text((savepos + 14), (yy + 109), string_hash_to_newline(scr_gettext("save_menu_save")))
            draw_text((returnpos + 14), (yy + 109), string_hash_to_newline(scr_gettext("save_menu_return")))
        }
        else
        {
            draw_sprite(spr_menusavedpage, 0, (235 + xx), (105 + yy))
            draw_text((xx + 85), (yy + 109), string_hash_to_newline(scr_gettext("save_menu_saved")))
            if control_check_pressed(0)
            {
                global.menuno = -1
                global.interact = 0
                global.menucoord[4] = 0
                control_clear(0)
            }
        }
        if (keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
        {
            if (global.menucoord[4] < 2)
            {
                if (global.menucoord[4] == 1)
                    global.menucoord[4] = 0
                else
                    global.menucoord[4] = 1
                keyboard_clear(global.keybind[0])
                keyboard_clear(global.keybind[2])
            }
        }
        if (control_check_pressed(0) && global.menucoord[4] == 0)
        {
            snd_play(snd_save)
            script_execute(scr_save)
            global.menucoord[4] = 2
            control_clear(0)
        }
        if (control_check_pressed(0) && global.menucoord[4] == 1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(0)
        }
        if control_check_pressed(1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(1)
        }
    }
    if (global.menuno == 0)
    {
        var heart_y = 88
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (28 + xx), ((heart_y + yy) + (18 * global.menucoord[0])))
    }
    if (global.menuno == 1)
    {
        draw_sprite(spr_menuitempage, 0, (239 + xx), (19 + yy))
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[1])))
    }
    if (global.menuno == 3)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[3])))
    }
    if (global.menuno == 6)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[6])))
    }
    if (global.menuno == 7)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[7])))
    }
    if (global.menuno == 5)
    {
        draw_sprite(spr_menuitempage, 0, (239 + xx), (19 + yy))
        heart_y = 174
        if (global.language == "ja")
            heart_y -= 1
        if (global.menucoord[5] == 0)
            draw_sprite(spr_heartsmall, 0, ((104 + xx) + (45 * global.menucoord[5])), (heart_y + yy))
        if (global.menucoord[5] == 1)
            draw_sprite(spr_heartsmall, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 3)), (heart_y + yy))
        if (global.menucoord[5] == 2)
            draw_sprite(spr_heartsmall, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 15)), (heart_y + yy))
    }
    if (global.menuno == 10)
    {
        heart_y = 34
        if (obj_mainchara.y < (yy + 130))
            heart_y = 92
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (104 + xx), ((heart_y + yy) + (16 * global.menucoord[10])))
    }
    switch global.item[global.menucoord[1]]
    {
        case 3:
        case 4:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 24:
        case 25:
        case 26:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 63:
        case 64:
            dontchoosewho = 1
            break
        default:
            dontchoosewho = 0
            break
    }

    if control_check_pressed(0)
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] == 0)
            {
                global.menuno = 9
                script_execute(scr_itemuseb, global.menucoord[1], global.item[global.menucoord[1]])
            }
            if (global.menucoord[5] == 1)
            {
                global.menuno = 9
                script_execute(scr_itemdesc, global.item[global.menucoord[1]])
                script_execute(scr_writetext, 0, "x", 0, 0)
            }
            if (global.menucoord[5] == 2)
            {
                global.menuno = 9
                dontthrow = 0
                if (global.item[global.menucoord[1]] != 23 && global.item[global.menucoord[1]] != 27 && global.item[global.menucoord[1]] != 54 && global.item[global.menucoord[1]] != 56 && global.item[global.menucoord[1]] != 57)
                    script_execute(scr_writetext, 12, "x", 0, 0)
                else
                {
                    if (global.item[global.menucoord[1]] == 23)
                        script_execute(scr_writetext, 23, "x", 0, 0)
                    if (global.item[global.menucoord[1]] == 27)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_27"), 0, 0)
                        if instance_exists(obj_rarependant)
                        {
                            with (obj_rarependant)
                                con = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 54)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_54"), 0, 0)
                        dontthrow = 1
                    }
                    if (global.item[global.menucoord[1]] == 56)
                    {
                        if (!instance_exists(obj_undyne_friendc))
                        {
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56"), 0, 0)
                            global.flag[494] = 1
                        }
                        else
                        {
                            global.faceemotion = 1
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56_undyne"), 5, 37)
                            dontthrow = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 57)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_57"), 0, 0)
                        dontthrow = 1
                    }
                }
                if (dontthrow == 0)
                {
                    if (global.item[global.menucoord[1]] == 27 || scr_itemdrop(global.item[global.menucoord[1]]))
                        script_execute(scr_itemshift, global.menucoord[1], 0)
                    else
                        scr_writetext(0, "* (You littered too much.)/%%", 0, 0)
                }
            }
        }
        if (global.menuno == 3)
        {
            global.menuno = 9
            script_execute(scr_itemuseb, global.menucoord[3], global.phone[global.menucoord[3]])
        }
        if (global.menuno == 6)
        {
            global.menuno = 9
            script_execute(scr_storageget, global.item[global.menucoord[6]], 300)
            if (noroom == 0)
            {
                script_execute(scr_writetext, 16, "x", 0, 0)
                script_execute(scr_itemshift, global.menucoord[6], 0)
            }
            else
                script_execute(scr_writetext, 19, "x", 0, 0)
        }
        if (global.menuno == 7)
        {
            global.menuno = 9
            script_execute(scr_itemget, global.flag[(global.menucoord[7] + 300)])
            if (noroom == 0)
            {
                script_execute(scr_writetext, 17, "x", 0, 0)
                scr_storageshift(global.menucoord[7], 0, 300)
            }
            else
                script_execute(scr_writetext, 18, "x", 0, 0)
        }
        if (global.menuno == 1)
        {
            global.menuno = 5
            global.menucoord[5] = 0
        }
        if (global.menuno == 0)
            global.menuno += (global.menucoord[0] + 1)
        if (global.menuno == 3)
        {
            script_execute(scr_phonename)
            global.menucoord[3] = 0
        }
        if (global.menuno == 1)
        {
            if (global.item[0] != 0)
            {
                global.menucoord[1] = 0
                script_execute(scr_itemname)
            }
            else
                global.menuno = 0
        }
    }
    if keyboard_check_pressed(global.keybind[1])
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 0)
                global.menucoord[0] -= 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 0)
                global.menucoord[1] -= 1
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 0)
                global.menucoord[3] -= 1
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 0)
                global.menucoord[6] -= 1
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 0)
                global.menucoord[7] -= 1
        }
        if (global.menuno == 10)
        {
            if (global.menucoord[10] != 0)
            {
                global.menucoord[10] -= 1
                instance_destroy(OBJ_INSTAWRITER)
            }
        }
    }
    if keyboard_check_pressed(global.keybind[3])
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 2)
            {
                if (global.menuchoice[(global.menucoord[0] + 1)] != 0)
                    global.menucoord[0] += 1
            }
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 7)
            {
                if (global.item[(global.menucoord[1] + 1)] != 0)
                    global.menucoord[1] += 1
            }
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 7)
            {
                if (global.phone[(global.menucoord[3] + 1)] != 0)
                    global.menucoord[3] += 1
            }
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 7)
            {
                if (global.item[(global.menucoord[6] + 1)] != 0)
                    global.menucoord[6] += 1
            }
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 9)
            {
                if (global.flag[(global.menucoord[7] + 301)] != 0)
                    global.menucoord[7] += 1
            }
        }
    }
    if (control_check_pressed(1) && buffer >= 0)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
        else if (global.menuno <= 3)
            global.menuno = 0
        if (global.menuno == 5)
            global.menuno = 1
        if (global.menuno == 10)
        {
            if instance_exists(OBJ_INSTAWRITER)
                instance_destroy(OBJ_INSTAWRITER)
            global.menuno = 2
        }
    }
    if keyboard_check_pressed(global.keybind[2])
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 2)
                global.menucoord[5] += 1
        }
    }
    if keyboard_check_pressed(global.keybind[0])
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 0)
                global.menucoord[5] -= 1
        }
    }
    if (global.menuno != 9)
    {
        if (exit_buffer == 0 && control_check_pressed(2))
        {
            if instance_exists(OBJ_INSTAWRITER)
                instance_destroy(OBJ_INSTAWRITER)
            global.menuno = -1
            for (i = 1; i < array_length_1d(global.menucoord); i++)
                global.menucoord[i] = 0
            global.interact = 0
        }
        else if (!control_check_pressed(2))
            exit_buffer = 0
    }
    if (currentmenu < global.menuno && global.menuno != 9)
        snd_play(snd_select)
    else if ((global.menuno >= 0 && global.menuno < 6) || global.menuno == 10)
    {
        if (currentspot != global.menucoord[global.menuno])
            snd_play(snd_squeak)
    }
    surface_reset_target()
}
if (global.menuno == 9 && (!instance_exists(obj_dialoguer)))
{
    global.pca = 0
    global.menuno = -1
    global.interact = 0
}
draw_surface(menusurf, (global.menusurfx + __view_get(0, view_current)), (global.menusurfy + __view_get(1, view_current)))
