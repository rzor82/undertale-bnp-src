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
        scr_shop_draw_infobox(minimenuy, scr_gettext(("shop2_itemdesc_" + string(item[menuc[1]]))), wdiff, adiff)
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
        global.msg[0] = scr_gettext("obj_shop2_234")
        if (mainmessage == 0)
            global.msg[0] = "\\E0* What can I interest&  you with^1, kiddo?/*"
        mainmessage = 1
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("obj_shop2_236")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop2_237")
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
    scr_shop_draw_topmenu(0)
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
            menu = 3
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
        var cost = string(itemcost[i])
        draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
    }
    draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
    if (menu == 1)
    {
        menumax = 4
        if (instance_exists(OBJ_WRITER) == 0)
        {
            if (sidemessage == 0)
                global.msg[0] = scr_gettext("obj_shop2_287")
            if (sidemessage == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_288")
                shoppingspree += 1
                if (shoppingspree > 6)
                    global.msg[0] = "\\E2Wa ha ha^1!&Thanks&once&again./*"
            }
            if (sidemessage == 2)
            {
                global.msg[0] = scr_gettext("obj_shop2_289")
                cantchoose += 1
                if (cantchoose > 1)
                    global.msg[0] = "\\E3Here&just to&look^1,&hmm?/*"
            }
            if (sidemessage == 3)
                global.msg[0] = scr_gettext("obj_shop2_290")
            if (sidemessage == 4)
                global.msg[0] = scr_gettext("obj_shop2_291")
            if (murder == 1)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop2_295")
                if (sidemessage == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop2_296")
                    genoshoppingspree += 1
                    if (genoshoppingspree > 6)
                        global.msg[0] = "\\E3I don't&like you&buying so&much./*"
                }
                if (sidemessage == 2)
                {
                    global.msg[0] = scr_gettext("obj_shop2_297")
                    cantchoose += 1
                    if (cantchoose > 1)
                        global.msg[0] = "\\E1Got&nothing&better&to do?/*"
                }
                if (sidemessage == 3)
                    global.msg[0] = scr_gettext("obj_shop2_298")
                if (sidemessage == 4)
                    global.msg[0] = scr_gettext("obj_shop2_299")
            }
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
        draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_buy_prompt1", string(itemcost[menuc[1]]))))
        draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop_buy_prompt2", string(itemcost[menuc[1]]))))
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
        if (murder == 0)
        {
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop2_talk1_title"))
            if (global.flag[96] == 0)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop2_talk2a_title"))
            if (global.flag[96] == 1)
                scr_shop_draw_talktitle(1, 1, scr_gettext("shop2_talk2b_title"))
            if (global.flag[96] == 2)
                scr_shop_draw_talktitle(1, 1, scr_gettext("shop2_talk2c_title"))
            if (global.flag[96] == 3)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop2_talk2d_title"))
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop2_talk3_title"))
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop2_talk4_title"))
        }
        else
        {
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop2_talk9_title"))
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop2_talk10_title"))
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop2_talk11_title"))
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop2_talk12_title"))
        }
    }
    if (global.flag[7] == 1)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop2_talk5_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop2_talk6_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop2_talk7_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop2_talk8_title"))
    }
    scr_shop_draw_talkmenu()
    if (instance_exists(OBJ_WRITER) == 0)
    {
        if (murder == 0)
            global.msg[0] = scr_gettext("obj_shop2_390")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop2_392")
        var writerx = 210
        if (global.language == "ja")
            writerx += 2
        instance_create(writerx, 110, OBJ_WRITER)
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
            if (murder == 0)
            {
                global.msg[0] = scr_gettext("obj_shop2_438")
                global.msg[1] = scr_gettext("obj_shop2_439")
                global.msg[2] = scr_gettext("obj_shop2_440")
                global.msg[3] = scr_gettext("obj_shop2_441")
                global.msg[4] = scr_gettext("obj_shop2_442")
                soldo += 1
                if (soldo > 1)
                    global.msg[0] = scr_gettext("obj_shop2_444")
            }
            else
                global.msg[0] = scr_gettext("obj_shop2_448")
        }
        if (sell == 2)
        {
            if (murder == 0)
                global.msg[0] = scr_gettext("obj_shop2_454")
            if (murder == 1)
                global.msg[0] = scr_gettext("obj_shop2_456")
        }
        if (sell == 3)
        {
            if (murder == 0)
            {
                global.msg[0] = scr_gettext("obj_shop2_462")
                global.msg[1] = scr_gettext("obj_shop2_463")
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop2_468")
                global.msg[1] = scr_gettext("obj_shop2_469")
                global.msg[2] = scr_gettext("obj_shop2_470")
                global.msg[3] = scr_gettext("obj_shop2_471")
                global.msg[4] = scr_gettext("obj_shop2_472")
                global.msg[5] = scr_gettext("obj_shop2_473")
            }
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_478")
                global.msg[1] = scr_gettext("obj_shop2_479")
                global.msg[2] = scr_gettext("obj_shop2_480")
                global.msg[3] = scr_gettext("obj_shop2_481")
                global.msg[4] = scr_gettext("obj_shop2_482")
                global.msg[5] = scr_gettext("obj_shop2_483")
                global.msg[6] = scr_gettext("obj_shop2_484")
                global.msg[7] = scr_gettext("obj_shop2_485")
                global.msg[8] = scr_gettext("obj_shop2_486")
                global.msg[9] = scr_gettext("obj_shop2_487")
                global.msg[10] = scr_gettext("obj_shop2_488")
                global.msg[11] = scr_gettext("obj_shop2_489")
            }
        }
        if (sell == 4)
        {
            if (global.flag[96] == 3)
            {
                global.msg[0] = scr_gettext("obj_shop2_497")
                global.msg[1] = scr_gettext("obj_shop2_498")
            }
            if (global.flag[96] == 2)
            {
                global.msg[0] = scr_gettext("obj_shop2_503")
                global.msg[1] = scr_gettext("obj_shop2_504")
                global.msg[2] = scr_gettext("obj_shop2_505")
                global.msg[3] = scr_gettext("obj_shop2_506")
                global.msg[4] = scr_gettext("obj_shop2_507")
                global.msg[5] = scr_gettext("obj_shop2_508")
                global.msg[6] = scr_gettext("obj_shop2_509")
            }
            if (global.flag[96] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_516")
                global.msg[1] = scr_gettext("obj_shop2_517")
                global.msg[2] = scr_gettext("obj_shop2_518")
                global.msg[3] = scr_gettext("obj_shop2_519")
            }
            if (global.flag[96] == 0)
            {
                global.msg[0] = scr_gettext("obj_shop2_524")
                global.msg[1] = scr_gettext("obj_shop2_525")
                global.msg[2] = scr_gettext("obj_shop2_526")
                global.msg[3] = scr_gettext("obj_shop2_527")
                global.msg[4] = scr_gettext("obj_shop2_528")
                global.msg[5] = scr_gettext("obj_shop2_529")
            }
            if (global.flag[96] == 2)
                global.flag[96] = 3
            if (global.flag[96] == 1)
                global.flag[96] = 2
            if (global.flag[96] == 0)
                global.flag[96] = 1
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_537")
                global.msg[1] = scr_gettext("obj_shop2_538")
                global.msg[2] = scr_gettext("obj_shop2_539")
                global.msg[3] = scr_gettext("obj_shop2_540")
                global.msg[4] = scr_gettext("obj_shop2_541")
                global.msg[5] = scr_gettext("obj_shop2_542")
                global.msg[6] = scr_gettext("obj_shop2_543")
                global.msg[7] = scr_gettext("obj_shop2_544")
                global.msg[8] = scr_gettext("obj_shop2_545")
                global.msg[9] = scr_gettext("obj_shop2_546")
                global.msg[10] = scr_gettext("obj_shop2_547")
                global.msg[11] = scr_gettext("obj_shop2_548")
                global.msg[12] = scr_gettext("obj_shop2_549")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_555")
                global.msg[1] = scr_gettext("obj_shop2_556")
                global.msg[2] = scr_gettext("obj_shop2_557")
                global.msg[3] = scr_gettext("obj_shop2_558")
                threatened += 1
                if (threatened > 1)
                    global.msg[0] = "\\E2* Wa ha ha^1!&\\E2* Go ahead^1, \\E3do your worst./%%"
            }
        }
        if (sell == 5)
        {
            global.msg[0] = scr_gettext("obj_shop2_564")
            global.msg[1] = scr_gettext("obj_shop2_565")
            global.msg[2] = scr_gettext("obj_shop2_566")
            global.msg[3] = scr_gettext("obj_shop2_567")
            global.msg[4] = scr_gettext("obj_shop2_568")
            global.msg[5] = scr_gettext("obj_shop2_569")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_573")
                global.msg[1] = scr_gettext("obj_shop2_574")
                global.msg[2] = scr_gettext("obj_shop2_575")
                global.msg[3] = scr_gettext("obj_shop2_576")
                global.msg[4] = scr_gettext("obj_shop2_577")
                global.msg[5] = scr_gettext("obj_shop2_578")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_584")
                global.msg[1] = scr_gettext("obj_shop2_585")
                global.msg[2] = scr_gettext("obj_shop2_586")
                global.msg[3] = scr_gettext("obj_shop2_587")
                global.msg[4] = scr_gettext("obj_shop2_588")
            }
        }
        if (sell == 6)
        {
            global.msg[0] = scr_gettext("obj_shop2_595")
            global.msg[1] = scr_gettext("obj_shop2_596")
            global.msg[2] = scr_gettext("obj_shop2_597")
            global.msg[3] = scr_gettext("obj_shop2_598")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_601")
                global.msg[1] = scr_gettext("obj_shop2_602")
                global.msg[2] = scr_gettext("obj_shop2_603")
                global.msg[3] = scr_gettext("obj_shop2_604")
                global.msg[4] = scr_gettext("obj_shop2_605")
                global.msg[5] = scr_gettext("obj_shop2_606")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop2_612")
                global.msg[1] = scr_gettext("obj_shop2_613")
                global.msg[2] = scr_gettext("obj_shop2_614")
                global.msg[3] = scr_gettext("obj_shop2_615")
                global.msg[4] = scr_gettext("obj_shop2_616")
                global.msg[5] = scr_gettext("obj_shop2_617")
                if (global.plot > 119)
                {
                    global.msg[0] = "\\E3* .../"
                    global.msg[1] = "\\E2* Wa ha ha..^1.&\\E1* Who do you think&  you are^1, eh?/%%"
                }
            }
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
            if (sell == 1)
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
