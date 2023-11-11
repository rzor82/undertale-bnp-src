glow += 2
glow2 = ((floor((sin((glow / 30)) * 2)) / 32) + 0.125)
draw_sprite(spr_shop1_bg, 0, 0, 0)
draw_sprite_ext(spr_shop1_bgorange, 0, 0, 0, 1, 1, 0, c_white, glow2)
if (menu == 1 || menu == 2)
{
    if (shx > -10)
        shx -= 2
    if (shx > -20)
        shx -= 2
    if (shx > -40)
        shx -= 2
    if (shx <= -40)
        shx = -40
}
else
{
    if (shx < -30)
        shx += 2
    if (shx < -15)
        shx += 2
    if (shx < 0)
        shx += 2
    if (shx > 0)
        shx = 0
}
if (murder == 0)
{
    eyes.x = (148 + shx)
    draw_sprite(spr_shopkeeper1, 0, (shx + 130), 0)
}
if (menu == 1 || menu == 2)
{
    if (itemat[menuc[1]] != "none")
        var wdiff = (itemat[menuc[1]] - global.wstrength)
    else
        wdiff = "none"
    if (itemdf[menuc[1]] != "none")
        var adiff = (itemdf[menuc[1]] - global.adef)
    else
        adiff = "none"
    if (menuc[1] >= 0 && menuc[1] <= 3)
        scr_shop_draw_infobox(minimenuy, scr_gettext(("shop1_itemdesc_" + string(item[menuc[1]]))), wdiff, adiff)
    else if (menuc[1] == 4)
        scr_shop_draw_infobox(minimenuy, " ", "none", "none")
}
scr_shop_draw_window(menu < 4)
draw_set_color(c_white)
if (menu == 0)
{
    sell = 0
    selling = 0
    sidemessage = 0
    menuc[1] = 0
    menuc[2] = 0
    menuc[3] = 0
    menuc[4] = 0
    if (instance_exists(OBJ_WRITER) == 0)
    {
        global.msg[0] = scr_gettext("obj_shop1_263")
        if (mainmessage == 0)
            global.msg[0] = scr_gettext("obj_shop1_264")
        mainmessage = 1
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop1_265")
        instance_create(0, 110, OBJ_WRITER)
    }
    else if control_check_pressed(1)
    {
        with (OBJ_WRITER)
        {
            if (halt == false)
                stringpos = string_length(originalstring)
            control_clear(1)
        }
    }
    menumax = 3
    scr_shop_draw_topmenu(murder != 0)
    if control_check_pressed(0)
    {
        OBJ_WRITER.dfy = 1
        control_clear(0)
        if (menuc[0] == 0)
            menu = 1
        if (menuc[0] == 1)
        {
            sell = 1
            menu = 4
        }
        if (menuc[0] == 2)
        {
            if (murder == 0)
                menu = 3
            else
            {
                menu = 4
                sell = 7
            }
        }
        if (menuc[0] == 3)
        {
            sell = 2
            menu = 4
        }
    }
}
if (menu == 1 || menu == 2)
{
    for (var i = 0; i < 4; i++)
    {
        if (murder == 1)
            var cost = "00"
        else
            cost = string(itemcost[i])
        draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
    }
    draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
    if (menu == 1)
    {
        menumax = 4
        if (instance_exists(OBJ_WRITER) == 0)
        {
            if (sidemessage == 0)
                global.msg[0] = scr_gettext("obj_shop1_352")
            if (sidemessage == 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_353")
                shoppingspree += 1
                if (shoppingspree > 6)
                    global.msg[0] = "\\E2That's a&lot of&stuff^1,&hon/*"
            }
            if (sidemessage == 2)
            {
                global.msg[0] = scr_gettext("obj_shop1_354")
                cantchoose += 1
                if (cantchoose > 1)
                    global.msg[0] = "\\E0Take your&time^1,&hon./*"
            }
            if (sidemessage == 3)
                global.msg[0] = scr_gettext("obj_shop1_355")
            if (sidemessage == 4)
                global.msg[0] = scr_gettext("obj_shop1_356")
            if (murder == 1)
                global.msg[0] = "^1.^1.^1.^1.^1./*"
            instance_create(210, 110, OBJ_WRITER)
        }
        var hearty = 134
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
        if control_check_pressed(0)
        {
            menu = 2
            OBJ_WRITER.dfy = 1
            if (menuc[1] == menumax)
                menu = 0
        }
        else if control_check_pressed(1)
        {
            menu = 0
            minimenuy = 120
            OBJ_WRITER.dfy = 1
        }
        if (menu == 2)
            control_clear(0)
        menuc[2] = 0
    }
    if (menu == 2)
    {
        var heartx = (scr_shop_divider_pos() + 15)
        var textx = (heartx + 5)
        if (global.language == "ja")
            textx -= 8
        menumax = 1
        if (murder == 0)
        {
            draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_buy_prompt1", string(itemcost[menuc[1]]))))
            draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop_buy_prompt2", string(itemcost[menuc[1]]))))
        }
        if (murder == 1)
            draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_take_prompt")))
        draw_text((heartx + 15), 170, string_hash_to_newline(scr_gettext("yes")))
        draw_text((heartx + 15), 185, string_hash_to_newline(scr_gettext("no")))
        hearty = 174
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, heartx, (hearty + (menuc[2] * 15)))
        if control_check_pressed(1)
        {
            menu = 1
            control_clear(1)
            sidemessage = 2
        }
        else if control_check_pressed(0)
        {
            control_clear(0)
            if (menuc[2] == 0)
            {
                scr_cost(itemcost[menuc[1]])
                if (afford == 1)
                {
                    script_execute(scr_itemget, item[menuc[1]])
                    if (noroom == 0)
                    {
                        global.gold -= itemcost[menuc[1]]
                        sidemessage = 1
                        snd_play(snd_buyitem)
                    }
                    if (noroom == 1)
                        sidemessage = 4
                }
                else
                    sidemessage = 3
            }
            if (menuc[2] == 1)
                sidemessage = 2
            menu = 1
        }
    }
    if (menuc[1] != 4)
    {
        if (minimenuy <= 20)
            minimenuy = 20
        if (minimenuy > 20)
            minimenuy -= 2
        if (minimenuy > 35)
            minimenuy -= 3
        if (minimenuy > 60)
            minimenuy -= 4
        if (minimenuy > 85)
            minimenuy -= 5
    }
    else if (minimenuy < 100)
        minimenuy += 20
    if (minimenuy >= 100)
        minimenuy = 100
}
if (menu == 3)
{
    menumax = 4
    if (global.flag[7] == 0)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop1_talk1_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop1_talk2_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop1_talk3_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop1_talk4_title"))
    }
    else
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop1_talk5_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop1_talk6_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop1_talk7_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop1_talk8_title"))
    }
    scr_shop_draw_talkmenu()
    if (instance_exists(OBJ_WRITER) == 0)
    {
        global.msg[0] = scr_gettext("obj_shop1_438")
        var writerx = 210
        if (global.language == "ja")
            writerx += 2
        var writer = instance_create(writerx, 110, OBJ_WRITER)
    }
    if control_check_pressed(0)
    {
        OBJ_WRITER.dfy = 1
        if (menuc[3] < menumax)
        {
            sell = (menuc[3] + 3)
            control_clear(0)
            menu = 4
        }
        else
            menu = 0
    }
    else if control_check_pressed(1)
    {
        control_clear(1)
        menu = 0
        OBJ_WRITER.dfy = 1
    }
}
if (menu < 4)
    scr_shop_draw_status()
if (menu == 4)
{
    if (sell == 0)
        menu = 0
    if (instance_exists(OBJ_WRITER) == 0 && selling == 0)
    {
        if (sell == 1)
        {
            global.msg[0] = scr_gettext("obj_shop1_476")
            global.msg[1] = scr_gettext("obj_shop1_477")
            global.msg[2] = scr_gettext("obj_shop1_478")
            soldo += 1
            if (soldo > 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_480")
                global.msg[1] = scr_gettext("obj_shop1_481")
            }
            if (murder == 1)
            {
                if (global.flag[255] == 0)
                {
                    global.msg[0] = scr_gettext("obj_shop1_486")
                    global.gold += 758
                    global.flag[255] = 1
                }
                else
                    global.msg[0] = scr_gettext("obj_shop1_492")
            }
        }
        if (sell == 2)
        {
            global.msg[0] = scr_gettext("obj_shop1_498")
            if (murder == 1)
                global.msg[0] = scr_gettext("obj_shop1_500")
        }
        if (sell == 3)
        {
            global.msg[0] = scr_gettext("obj_shop1_504")
            global.msg[1] = scr_gettext("obj_shop1_505")
            global.msg[2] = scr_gettext("obj_shop1_506")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_511")
                global.msg[1] = scr_gettext("obj_shop1_512")
                global.msg[2] = scr_gettext("obj_shop1_513")
            }
        }
        if (sell == 4)
        {
            global.msg[0] = scr_gettext("obj_shop1_518")
            global.msg[1] = scr_gettext("obj_shop1_519")
            global.msg[2] = scr_gettext("obj_shop1_520")
            global.msg[3] = scr_gettext("obj_shop1_521")
            global.msg[4] = scr_gettext("obj_shop1_522")
            global.msg[5] = scr_gettext("obj_shop1_523")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_528")
                global.msg[1] = scr_gettext("obj_shop1_529")
                global.msg[2] = scr_gettext("obj_shop1_530")
            }
        }
        if (sell == 5)
        {
            global.msg[0] = scr_gettext("obj_shop1_536")
            global.msg[1] = scr_gettext("obj_shop1_537")
            global.msg[2] = scr_gettext("obj_shop1_538")
            global.msg[3] = scr_gettext("obj_shop1_539")
            global.msg[4] = scr_gettext("obj_shop1_540")
            global.msg[5] = scr_gettext("obj_shop1_541")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_545")
                global.msg[1] = scr_gettext("obj_shop1_546")
                global.msg[2] = scr_gettext("obj_shop1_547")
                global.msg[3] = scr_gettext("obj_shop1_548")
            }
        }
        if (sell == 6)
        {
            global.msg[0] = scr_gettext("obj_shop1_555")
            global.msg[1] = scr_gettext("obj_shop1_556")
            global.msg[2] = scr_gettext("obj_shop1_557")
            global.msg[3] = scr_gettext("obj_shop1_558")
            global.msg[4] = scr_gettext("obj_shop1_559")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop1_563")
                global.msg[1] = scr_gettext("obj_shop1_564")
            }
        }
        if (sell == 7)
        {
            global.msg[0] = scr_gettext("obj_shop1_570")
            global.msg[1] = scr_gettext("obj_shop1_571")
        }
        instance_create(10, 110, OBJ_WRITER)
        selling = 1
    }
    if instance_exists(OBJ_WRITER)
    {
        if control_check_pressed(1)
        {
            with (OBJ_WRITER)
            {
                if (halt == false)
                    stringpos = string_length(originalstring)
                control_clear(1)
            }
        }
    }
    if (selling == 1 && instance_exists(OBJ_WRITER) == 0)
    {
        if (sell == 2)
        {
            selling = 2
            event_user(1)
        }
        else
        {
            if (sell == 1 || sell == 7)
                menu = 0
            else
                menu = 3
            sell = 0
            selling = 0
        }
    }
}
if keyboard_check_pressed(global.keybind[3])
{
    menuc[menu] += 1
    if (menuc[menu] > menumax)
        menuc[menu] = 0
}
if keyboard_check_pressed(global.keybind[1])
{
    menuc[menu] -= 1
    if (menuc[menu] < 0)
        menuc[menu] = menumax
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("G"))
        global.gold = 5000
}
