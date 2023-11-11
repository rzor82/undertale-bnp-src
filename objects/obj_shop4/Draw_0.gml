if (menu == 1 || menu == 2)
{
    var soldout = 0
    if (menuc[1] == 3)
        soldout = global.flag[445] != 0
    if (menuc[1] >= 0 && menuc[1] <= 3)
    {
        if soldout
            scr_shop_draw_infobox(minimenuy, scr_gettext("shop4_itemdesc_soldout"), "none", "none")
        else
            scr_shop_draw_infobox(minimenuy, scr_gettext(("shop4_itemdesc_" + string(item[menuc[1]]))), "none", "none")
    }
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
        global.typer = 133
        obj_burgerpants_body.altfacevar = 0
        if (global.flag[435] < 2)
        {
            global.msg[0] = scr_gettext("obj_shop4_244")
            if (mainmessage == 0)
                global.msg[0] = scr_gettext("obj_shop4_245")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_shop4_249")
            if (mainmessage == 0)
                global.msg[0] = scr_gettext("obj_shop4_250")
            if (murder == 1)
                global.msg[0] = scr_gettext("obj_shop4_252")
        }
        mainmessage = 1
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
        {
            menu = 3
            if (global.flag[435] == 0)
            {
                menu = 4
                sell = 20
            }
            if (global.flag[435] == 1)
            {
                menu = 4
                sell = 21
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
    for (var i = 0; i < 3; i++)
    {
        var pad = "  "
        if (global.language == "ja")
            pad = " "
        if (itemcost[i] < 100)
            var cost = (pad + string(itemcost[i]))
        else
            cost = string(itemcost[i])
        draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
    }
    if (global.flag[445] == 0)
    {
        var str = scr_gettext("shop_buy_list", "500", "")
        draw_text(30, 190, string_hash_to_newline(str))
        var namepos = (30 + string_width(string_hash_to_newline(str)))
        var namestr = scr_gettext("shop4_item_61_longname")
        var xscale = (((scr_shop_divider_pos() - 15) - namepos) / string_width(string_hash_to_newline(namestr)))
        draw_text_transformed(namepos, 190, string_hash_to_newline(namestr), xscale, 1, 0)
    }
    else
    {
        draw_set_color(c_gray)
        draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_soldout")))
        draw_set_color(c_white)
    }
    draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
    if (menu == 1)
    {
        menumax = 4
        if (instance_exists(OBJ_WRITER) == 0)
        {
            obj_burgerpants_body.altfacevar = 0
            global.typer = 133
            if (global.flag[435] < 2)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop4_329")
                if (sidemessage == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop4_330")
                    shoppingspree += 1
                    if (shoppingspree > 6)
                    {
                        global.typer = 134
                        global.msg[0] = "\\E4Calm down^1,&it's just&fast food./*"
                    }
                }
                if (sidemessage == 2)
                {
                    global.typer = 134
                    global.msg[0] = scr_gettext("obj_shop4_331")
                    cantchoose += 1
                    if (cantchoose > 5)
                        global.msg[0] = "\\E3Order&something&or get&out./*"
                }
                if (sidemessage == 3)
                {
                    global.typer = 135
                    global.msg[0] = scr_gettext("obj_shop4_332")
                }
                if (sidemessage == 4)
                {
                    global.typer = 135
                    global.msg[0] = scr_gettext("obj_shop4_333")
                }
                if (sidemessage == 5)
                {
                    global.typer = 134
                    global.msg[0] = scr_gettext("obj_shop4_334")
                }
            }
            if (global.flag[435] == 2)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop4_338")
                if (sidemessage == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop4_339")
                    shoppingspree += 1
                    if (shoppingspree > 6)
                        global.msg[0] = "\\E5Easy now^1,&little& buddy./*"
                }
                if (sidemessage == 2)
                    global.msg[0] = scr_gettext("obj_shop4_340")
                if (sidemessage == 3)
                    global.msg[0] = scr_gettext("obj_shop4_341")
                if (sidemessage == 4)
                    global.msg[0] = scr_gettext("obj_shop4_342")
                if (sidemessage == 5)
                {
                    global.typer = 135
                    global.msg[0] = scr_gettext("obj_shop4_343")
                }
                if (murder == 1)
                {
                    if (sidemessage == 0)
                    {
                        global.typer = 134
                        global.msg[0] = scr_gettext("obj_shop4_347")
                    }
                    if (sidemessage == 1)
                    {
                        global.msg[0] = scr_gettext("obj_shop4_348")
                        genoshoppingspree += 1
                        if (genoshoppingspree > 6)
                        {
                            global.typer = 135
                            global.msg[0] = "\\E6Stocking&up for&something?/*"
                        }
                    }
                    if (sidemessage == 2)
                    {
                        global.msg[0] = scr_gettext("obj_shop4_349")
                        cantchoose += 1
                        if (cantchoose > 5)
                        {
                            global.typer = 134
                            global.msg[0] = "\\K1\\E3WHY WON'T&THIS KID&JUST BUY&SOMETHING?\\K0/*"
                        }
                    }
                    if (sidemessage == 3)
                    {
                        global.typer = 135
                        global.msg[0] = scr_gettext("obj_shop4_350")
                    }
                    if (sidemessage == 4)
                    {
                        global.typer = 135
                        global.msg[0] = "\\K0\\E8Pockets&full of&dust..^1.&\\K1Lovely.\\K0/*"
                    }
                    if (sidemessage == 5)
                    {
                        global.typer = 134
                        global.msg[0] = "\\K0\\E5Why don't&\\K1YOU\\K0&make it?/*"
                    }
                }
            }
            instance_create(210, 110, OBJ_WRITER)
        }
        var hearty = 134
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
        if control_check_pressed(0)
        {
            soldout = 0
            if (menuc[1] == 3 && global.flag[445] == 1)
                soldout = 1
            if (soldout == 0)
                menu = 2
            else
                sidemessage = 5
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
                        snd_play(snd_buyitem)
                        sidemessage = 1
                        if (global.flag[435] < 1)
                            global.flag[435] = 1
                        if (menuc[1] == 3)
                            global.flag[445] = 1
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
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk1_title"))
            if (global.flag[437] == 0)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2a_title"))
            if (global.flag[437] == 1)
                scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2b_title"))
            if (global.flag[437] == 2)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2c_title"))
            if (global.flag[437] == 4)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2d_title"))
            if (global.flag[437] == 5)
                scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2e_title"))
            if (global.flag[437] == 6)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2f_title"))
            if (global.flag[437] == 7)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2g_title"))
            if (global.flag[437] == 8)
                scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2h_title"))
            if (global.flag[437] == 9)
                scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2i_title"))
            if (global.flag[436] == 0)
                scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk3a_title"))
            if (global.flag[436] == 1)
                scr_shop_draw_talktitle(2, 1, scr_gettext("shop4_talk3b_title"))
            if (global.flag[436] == 2)
                scr_shop_draw_talktitle(2, 1, scr_gettext("shop4_talk3c_title"))
            if (global.flag[436] == 3)
                scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk3d_title"))
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk4_title"))
        }
        else
        {
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk9_title"))
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk10_title"))
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk11_title"))
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk12_title"))
        }
    }
    if (global.flag[7] == 1)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk5_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk6_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk7_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk8_title"))
    }
    scr_shop_draw_talkmenu()
    if (instance_exists(OBJ_WRITER) == 0)
    {
        if (global.flag[7] == 0 && murder == 0)
        {
            if (global.flag[435] != 9)
            {
                if (global.flag[435] >= 2)
                    caster_set_pitch(global.currentsong, 0.8)
            }
            else
                caster_set_pitch(global.currentsong, 1)
        }
        global.msg[0] = scr_gettext("obj_shop4_472")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop4_473")
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
            if (global.flag[435] < 2)
            {
                global.typer = 135
                global.msg[0] = scr_gettext("obj_shop4_519")
                soldo += 1
                if (soldo > 1)
                {
                    obj_burgerpants_body.altfacevar = 1
                    global.msg[0] = scr_gettext("obj_shop4_521")
                }
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop4_525")
                if (murder == 1)
                {
                    global.typer = 135
                    global.msg[0] = scr_gettext("obj_shop4_529")
                }
            }
        }
        if (sell == 2)
        {
            global.typer = 135
            global.msg[0] = scr_gettext("obj_shop4_535")
            if (global.flag[435] > 1)
            {
                global.typer = 133
                global.msg[0] = scr_gettext("obj_shop4_538")
                if (murder == 1)
                    global.msg[0] = scr_gettext("obj_shop4_539")
            }
        }
        if (sell == 3)
        {
            global.msg[0] = scr_gettext("obj_shop4_545")
            global.msg[1] = scr_gettext("obj_shop4_546")
            global.msg[2] = scr_gettext("obj_shop4_547")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_551")
                global.msg[1] = scr_gettext("obj_shop4_552")
                global.msg[2] = scr_gettext("obj_shop4_553")
                global.msg[3] = scr_gettext("obj_shop4_554")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_559")
                global.msg[1] = scr_gettext("obj_shop4_560")
                global.msg[2] = scr_gettext("obj_shop4_561")
                talkedtosad += 1
                if (talkedtosad > 1)
                {
                    global.msg[0] = "\\Tz\\E9* Mettaton can trip&  all the alarms he wants^1.&* I'm not getting fired for&  another one of his \"pranks\"./"
                    global.msg[1] = "\\E4* .../"
                    global.msg[2] = "\\Tb\\E5* Huh? What^1?&* Are you^1, \\E4along with all of&  the screaming and yelling,&  \\E5part of this too?/"
                    global.msg[3] = "\\Tz\\E6* Yeah right^1, I know&  what pre-recorded yelling&  sounds like when I hear it./"
                    global.msg[4] = "\\E3* There's gotta be a&  law against this kind&  of harassment./"
                    global.msg[5] = "\\Tx\\E0* .../"
                    global.msg[6] = "\\E5* Besides^1, even if they&  were all real and there's&  some kinda maniac on the loose?/"
                    global.msg[7] = "\\Tx\\E4* .../"
                    global.msg[8] = "\\E5* I think that&  might be just fine./"
                    global.msg[9] = "\\Tz\\E9* Not like I've got much of&  a life as it is^1, little weirdo./%%"
                }
                if (talkedtosad > 2)
                {
                    global.typer = 135
                    global.msg[0] = "\\Tb\\E5* S-stop trying to make&  me lose my job^1, okay?/"
                    global.msg[1] = "\\E4* It's the last thing I have./%%"
                }
            }
        }
        if (sell == 4)
        {
            if (global.flag[437] == 9)
                global.msg[0] = scr_gettext("obj_shop4_570")
            if (global.flag[437] == 8)
            {
                global.msg[0] = scr_gettext("obj_shop4_575")
                global.msg[1] = scr_gettext("obj_shop4_576")
                global.msg[2] = scr_gettext("obj_shop4_577")
                global.msg[3] = scr_gettext("obj_shop4_578")
                global.msg[4] = scr_gettext("obj_shop4_579")
                global.msg[5] = "\\Tz\\E4.../"
                global.msg[6] = scr_gettext("obj_shop4_581")
                global.msg[7] = scr_gettext("obj_shop4_582")
                global.msg[8] = scr_gettext("obj_shop4_583")
            }
            if (global.flag[437] == 7)
            {
                global.msg[0] = scr_gettext("obj_shop4_588")
                global.msg[1] = scr_gettext("obj_shop4_589")
                global.msg[2] = scr_gettext("obj_shop4_590")
                global.msg[3] = scr_gettext("obj_shop4_591")
                global.msg[4] = scr_gettext("obj_shop4_592")
                global.msg[5] = scr_gettext("obj_shop4_593")
                global.msg[6] = scr_gettext("obj_shop4_594")
                global.msg[7] = scr_gettext("obj_shop4_595")
                global.msg[8] = scr_gettext("obj_shop4_596")
                global.msg[9] = scr_gettext("obj_shop4_597")
            }
            if (global.flag[437] == 6)
                global.msg[0] = scr_gettext("obj_shop4_603")
            if (global.flag[437] == 5)
            {
                global.msg[0] = scr_gettext("obj_shop4_608")
                global.msg[1] = scr_gettext("obj_shop4_609")
                global.msg[2] = scr_gettext("obj_shop4_610")
                global.msg[3] = scr_gettext("obj_shop4_611")
                global.msg[4] = scr_gettext("obj_shop4_612")
                global.msg[5] = scr_gettext("obj_shop4_613")
                global.msg[6] = "\\Tz\\E4.../"
                global.msg[7] = scr_gettext("obj_shop4_615")
            }
            if (global.flag[437] == 4)
            {
                global.msg[0] = scr_gettext("obj_shop4_620")
                global.msg[1] = scr_gettext("obj_shop4_621")
                global.msg[2] = scr_gettext("obj_shop4_622")
                global.msg[3] = scr_gettext("obj_shop4_623")
                global.msg[4] = scr_gettext("obj_shop4_624")
                global.msg[5] = scr_gettext("obj_shop4_625")
                global.msg[6] = scr_gettext("obj_shop4_626")
            }
            if (global.flag[437] == 2)
            {
                global.msg[0] = scr_gettext("obj_shop4_631")
                global.msg[1] = scr_gettext("obj_shop4_632")
                willyoubuddy += 1
                if (willyoubuddy > 1)
                    global.msg[0] = "\\Tb\\E7* Right?/%%"
            }
            if (global.flag[437] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_638")
                global.msg[1] = "\\Tz\\E4.../"
                global.msg[2] = scr_gettext("obj_shop4_640")
                global.msg[3] = scr_gettext("obj_shop4_641")
                global.msg[4] = scr_gettext("obj_shop4_642")
                global.msg[5] = scr_gettext("obj_shop4_643")
                global.msg[6] = scr_gettext("obj_shop4_644")
                global.msg[7] = scr_gettext("obj_shop4_645")
                global.msg[8] = scr_gettext("obj_shop4_646")
                global.msg[9] = scr_gettext("obj_shop4_647")
            }
            if (global.flag[437] == 0)
            {
                global.msg[0] = scr_gettext("obj_shop4_651")
                global.msg[1] = scr_gettext("obj_shop4_652")
                global.msg[2] = scr_gettext("obj_shop4_653")
                global.msg[3] = scr_gettext("obj_shop4_654")
                global.msg[4] = scr_gettext("obj_shop4_655")
                global.msg[5] = scr_gettext("obj_shop4_656")
            }
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_662")
                global.msg[1] = scr_gettext("obj_shop4_663")
                if (global.flag[437] >= 9)
                {
                    global.msg[0] = scr_gettext("obj_shop4_667")
                    global.msg[1] = scr_gettext("obj_shop4_668")
                    global.msg[2] = "\\Tz\\E4* .../"
                    global.msg[3] = scr_gettext("obj_shop4_670")
                    global.msg[4] = scr_gettext("obj_shop4_671")
                    if (global.flag[257] == 0)
                    {
                        talkedtosad += 1
                        if (talkedtosad > 1)
                            global.msg[0] = "\\Tz\\E0* (Sigh)/%%"
                    }
                    if (global.flag[257] == 2)
                    {
                        talkedtosad = 0
                        global.msg[1] = "\\Tz\\E6* Imagine^1, if you had& set us up just a&  little bit later.../"
                        global.msg[2] = "\\Tz\\E4* .../"
                        global.msg[3] = "\\E7* Thanks for helping&  me out^1, little buddy./"
                        global.msg[4] = "\\E9* With your help^1, I've got&  a future filled with..^4.&  \\Tb\\E6CHICKS./"
                        global.msg[5] = "\\Tz\\E8* ...and garbage collecting^1.&* You win some^1, you lose some^1,&  I guess./%%"
                    }
                }
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_678")
                global.msg[1] = scr_gettext("obj_shop4_679")
                global.msg[2] = scr_gettext("obj_shop4_680")
                global.msg[3] = scr_gettext("obj_shop4_681")
                global.msg[4] = scr_gettext("obj_shop4_682")
                global.msg[5] = scr_gettext("obj_shop4_683")
                letsnot += 1
                if (letsnot > 1)
                    global.msg[0] = scr_gettext("obj_shop4_698")
            }
            if (global.flag[437] == 8)
                global.flag[437] = 9
            if (global.flag[437] == 5)
                global.flag[437] = 6
            if (global.flag[437] == 1)
                global.flag[437] = 2
            if (global.flag[437] == 0)
                global.flag[437] = 1
        }
        if (sell == 5)
        {
            if (global.flag[436] == 3)
                global.msg[0] = scr_gettext("obj_shop4_698")
            if (global.flag[436] == 2)
            {
                global.msg[0] = scr_gettext("obj_shop4_704")
                global.msg[1] = scr_gettext("obj_shop4_705")
                global.msg[2] = "\\Tz\\E4* .../"
                global.msg[3] = scr_gettext("obj_shop4_707")
                global.msg[4] = scr_gettext("obj_shop4_708")
                global.msg[5] = "\\Tz\\E4* .../"
                global.msg[6] = scr_gettext("obj_shop4_710")
            }
            if (global.flag[436] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_716")
                global.msg[1] = scr_gettext("obj_shop4_717")
                global.msg[2] = scr_gettext("obj_shop4_718")
                global.msg[3] = scr_gettext("obj_shop4_719")
            }
            if (global.flag[436] == 0)
            {
                global.msg[0] = scr_gettext("obj_shop4_724")
                global.msg[1] = scr_gettext("obj_shop4_725")
                global.msg[2] = scr_gettext("obj_shop4_726")
            }
            if (global.flag[436] == 2)
                global.flag[436] = 3
            if (global.flag[436] == 1)
                global.flag[436] = 2
            if (global.flag[436] == 0)
                global.flag[436] = 1
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_734")
                global.msg[1] = scr_gettext("obj_shop4_735")
                global.msg[2] = scr_gettext("obj_shop4_736")
                global.msg[3] = scr_gettext("obj_shop4_737")
                global.msg[4] = scr_gettext("obj_shop4_738")
                global.msg[5] = scr_gettext("obj_shop4_739")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_744")
                global.msg[1] = "\\Tz\\E4* .../"
                global.msg[2] = scr_gettext("obj_shop4_746")
                global.msg[3] = scr_gettext("obj_shop4_747")
            }
        }
        if (sell == 6)
        {
            global.msg[0] = scr_gettext("obj_shop4_756")
            global.msg[1] = scr_gettext("obj_shop4_757")
            global.msg[2] = scr_gettext("obj_shop4_758")
            global.msg[3] = scr_gettext("obj_shop4_759")
            global.msg[4] = scr_gettext("obj_shop4_760")
            global.msg[5] = scr_gettext("obj_shop4_761")
            global.msg[6] = scr_gettext("obj_shop4_762")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_767")
                global.msg[1] = scr_gettext("obj_shop4_768")
                global.msg[2] = scr_gettext("obj_shop4_769")
                global.msg[3] = scr_gettext("obj_shop4_770")
            }
            if (murder == 1)
            {
                global.msg[0] = scr_gettext("obj_shop4_775")
                global.msg[1] = scr_gettext("obj_shop4_776")
            }
        }
        if (sell == 20)
            global.msg[0] = scr_gettext("obj_shop4_785")
        if (sell == 21)
        {
            global.msg[0] = scr_gettext("obj_shop4_790")
            global.msg[1] = scr_gettext("obj_shop4_792")
            global.msg[2] = scr_gettext("obj_shop4_793")
            global.msg[3] = "\\Tz\\E4* .../"
            global.msg[4] = scr_gettext("obj_shop4_795")
            global.flag[435] = 2
        }
        if (goofygoober > 0)
        {
            global.msg[0] = scr_gettext("obj_shop4_566")
            global.msg[1] = "\\Tb* You're a goofy goobe^1r  Yea^1h&* We're all goofy goober^1s  Yeah/"
            global.msg[2] = "* Goof^1y goof^1y goof^1y&  goof^1y goobe^3r     Yeah/"
            global.msg[3] = "\\Tz\\E4* .../"
            global.msg[4] = "\\Tb\\E5* Never mention this^1.&* At all./%%"
        }
        instance_create(0, 110, OBJ_WRITER)
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
            if (sell == 1 || sell == 20)
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
    if keyboard_check_pressed(ord("S"))
        goofygoober += 1
    if keyboard_check_pressed(ord("G"))
        global.gold = 5000
    if keyboard_check_pressed(ord("B"))
        global.flag[437] += 1
    if keyboard_check_pressed(ord("L"))
        global.flag[437] = 9
}
