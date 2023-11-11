siner_o += 1
if (naming == 3)
{
    if (mlevel > 0)
        draw_background(bg_menu, 0, -120)
    if truereset
        draw_sprite(spr_locket, 0, 152, 182)
    switch mlevel
    {
        case 1:
            draw_background(bg_floweyglow, 0, -122)
            if (fk == 0)
                draw_sprite(spr_flowey, 0, 147, 170)
            break
        case 2:
            draw_background(bg_menu_toriel, 0, -120)
            break
        case 3:
            draw_background(bg_menu_papnsans, 0, -120)
            draw_sprite(spr_mainchara_lamppeek, 0, 198, 166)
            draw_sprite(spr_sans_relax, 0, 100, 174)
            draw_sprite(spr_papyrus_bedazzle, (siner_o / 3), 142, 175)
            break
        case 4:
            var sans_y = 33
            if (global.language == "ja")
                sans_y -= 5
            var pap_x = 243
            if (global.language == "ja")
                pap_x += 8
            draw_background(bg_menu_undyne, 0, -120)
            draw_sprite(spr_papyrus_cape, (siner_o / 4), pap_x, 151)
            draw_sprite(spr_undyne_youremine_dark, 0, (pap_x - 6), 105)
            draw_sprite(spr_sans_sleep_sideways_dark, (siner_o / 8), 183, 180)
            draw_sprite(spr_maincharar_liedown, 0, 138, 176)
            draw_sprite(spr_napstablook_d_headphone, 0, 30, 113)
            draw_sprite(spr_mkid_sit, 0, 98, 176)
            break
        case 5:
            draw_background(bg_menu_alphysnmtt, 0, -120)
            draw_sprite(spr_alphys_d_dark, 0, 270, 167)
            draw_sprite(spr_papyrus_cape_dark, 0, 272, 132)
            draw_sprite(spr_undyne_youremine_dark, 0, 269, 84)
            draw_sprite(scr_getsprite(spr_out_to_lunch_sign), 0, 20, 169)
            break
        case 6:
            draw_background(bg_menu_trueending, 0, -120)
            draw_sprite(spr_toriel_d_dark, 0, 143, 138)
            draw_sprite(spr_papyrus_d_darkbg, 0, 119, 147)
            draw_sprite(spr_sans_d_dark, 0, 172, 161)
            draw_sprite(spr_undyne_d_dark, 0, 99, 136)
            draw_sprite(spr_alphys_d_dark2, 0, 74, 158)
            draw_sprite(spr_asgore_d_dark, 0, 195, 130)
            draw_sprite(spr_napstablook_d, 0, 9, 157)
            draw_sprite(spr_mettex_dark, 0, 28, 139)
            draw_sprite(spr_mkid_d_dark, 0, 262, 162)
            draw_sprite(spr_asriel_d_dark, 0, 292, 162)
            break
    }

}
script_execute(scr_namingscreen)
if (naming == 3)
{
    var version = "4.3.2-prev"
    if (os_type == os_ps4)
        version += "-4"
    if (os_type == os_psvita)
        version += "-V"
    if (global.debug == true)
        version += "-DEV"
    draw_set_color(c_gray)
    scr_setfont(fnt_small)
    var version_str = (("UNDERTALE BITS AND PIECES v" + version) + " TEAM BnP 2020 - 2023")
    if global.allowinternet
        draw_text_transformed(((room_width - string_width(version_str)) / 2), 216, "Additional 4th-wall breaks by\napi.ksoft.si and OpenWeather", 0.5, 0.5, 0)
    draw_text_transformed(((room_width - string_width(version_str)) / 2), 224, ("UNDERTALE (C) Toby Fox 2015-" + string(current_year)), 1, 1, 0)
    scr_drawtext_centered(160, 232, version_str)
}
