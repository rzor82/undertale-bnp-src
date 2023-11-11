color = c_white
draw_set_color(c_white)
var xmodify = 379
var namex = 64
var namey = 400
var namewidth = scr_draw_name_curs(namex, (namey + 3))
var gdraw = 0
var yellow = 0x5ADBFF
var purple = 0xAA4DC5
var red = 0x3F248E
var litred = 0x4039E0
var green = 0x46A345
if (global.oppatextboxstyle == 2)
{
    yellow = c_yellow
    purple = c_fuchsia
    red = c_maroon
    litred = c_red
    green = c_green
}
else
{
    yellow = 0x59BFF1
    purple = 0xAA4DC5
    red = 0x3F248E
    litred = 0x4039E0
    green = 0x46A345
}
if (global.hp > 0)
{
    if (myturn == 1)
    {
        draw_set_color(c_white)
        draw_rectangle(namex, (namey + 22), ((namex + namewidth) + 9), (namey + 24), false)
    }
}
draw_set_font(fnt_small2)
draw_text(((namex + namewidth) - 2), 403, string_hash_to_newline(("   LV" + string(global.lv))))
if (global.flag[271] == 0)
{
    if (global.partycount == 1)
    {
        draw_set_color(red)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 400, (((namex + namewidth) + 135) + (global.maxhp * 1.2)), 420)
        draw_set_color(yellow)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 400, (((namex + namewidth) + 135) + (global.hp * 1.2)), 420)
        draw_set_font(fnt_small2)
        draw_set_color(c_white)
        if global.newmenu
        {
            if ((global.hp / global.maxhp) <= 0.3)
                draw_set_color(yellow)
            if ((global.hp / global.maxhp) <= 0.1)
                draw_set_color(litred)
            if ((global.hp / global.maxhp) == 0)
                draw_set_color(red)
            if ((global.hp / global.maxhp) > 1)
                draw_set_color(green)
        }
        hpwrite = string(global.hp)
        if (global.hp < 10)
            hpwrite = ("0" + string(global.hp))
        if (global.hp < 0)
            hpwrite = "0"
        if (global.flag[509] == 1)
            hpwrite = "00.001"
        if (global.flag[509] == 2)
            hpwrite = "00.0001"
        if (global.flag[509] == 3)
            hpwrite = "00.000001"
        if (global.flag[509] == 4)
            hpwrite = "00.0000000001"
        draw_text((((namex + namewidth) + 150) + (global.maxhp * 1.2)), 403, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
    }
    else
    {
        draw_set_color(red)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 398, (((namex + namewidth) + 135) + (global.maxhp * 1.2)), 409)
        draw_set_color(yellow)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 398, (((namex + namewidth) + 135) + (global.hp * 1.2)), 409)
        draw_set_color(red)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 412, (((namex + namewidth) + 135) + 1.2), 423)
        ossafe_fill_rectangle(((namex + namewidth) + 135), 412, (((namex + namewidth) + 135) + 1.2), 423)
        var hpleft = (((namex + namewidth) + 150) + (global.maxhp * 1.2))
        var usehpleft = hpleft
        draw_set_font(fnt_small2)
        draw_set_color(c_white)
        if global.newmenu
        {
            if ((global.hp / global.maxhp) <= 0.3)
                draw_set_color(yellow)
            if ((global.hp / global.maxhp) <= 0.1)
                draw_set_color(litred)
            if ((global.hp / global.maxhp) == 0)
                draw_set_color(red)
            if ((global.hp / global.maxhp) > 1)
                draw_set_color(green)
        }
        hpwrite = string(global.hp)
        if (global.hp < 10)
            hpwrite = ("0" + string(global.hp))
        if (global.hp < 0)
            hpwrite = "0"
        draw_text(usehpleft, 394, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
        draw_set_font(fnt_small2)
        draw_set_color(c_white)
    }
}
else
{
    draw_set_color(red)
    ossafe_fill_rectangle(((namex + namewidth) + 135), 400, (((namex + namewidth) + 135) + (global.maxhp * 1.2)), 420)
    draw_set_color(yellow)
    ossafe_fill_rectangle(((namex + namewidth) + 135), 400, (((namex + namewidth) + 135) + (global.hp * 1.2)), 420)
    draw_set_color(purple)
    if (global.km > 40)
        global.km = 40
    if (global.km >= global.hp)
        global.km = (global.hp - 1)
    if (global.km > 0)
        ossafe_fill_rectangle((((namex + namewidth) + 135) + (global.hp * 1.2)), 400, ((((namex + namewidth) + 135) + (global.hp * 1.2)) - (global.km * 1.2)), 420)
    draw_sprite(spr_krmeter, 0, (((namex + namewidth) + 145) + (global.maxhp * 1.2)), 405)
    draw_set_font(fnt_small2)
    draw_set_color(c_white)
    if global.newmenu
    {
        if ((global.hp / global.maxhp) <= 0.3)
            draw_set_color(yellow)
        if ((global.hp / global.maxhp) <= 0.1)
            draw_set_color(litred)
        if ((global.hp / global.maxhp) == 0)
            draw_set_color(red)
        if ((global.hp / global.maxhp) > 1)
            draw_set_color(green)
    }
    hpwrite = string(global.hp)
    if (global.km > 0)
        draw_set_color(purple)
    if (global.hp < 10)
        hpwrite = ("0" + string(global.hp))
    if (global.hp < 0)
        hpwrite = "0"
    draw_text((((namex + namewidth) + 185) + (global.maxhp * 1.2)), 403, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
}
if instance_exists(obj_hpname)
{
    with (obj_hpname)
        instance_destroy()
}
draw_set_font(fnt_small2)
draw_text(((85 + namewidth) + 76), 403, "HP")
draw_set_color(c_white)
var ragealpha = variable_instance_get(id, "ragemsgalpha")
var ragemax = variable_instance_get(id, "ragemax")
var rage = variable_instance_get(id, "rageamt")
if ((!is_undefined(ragealpha)) && ragealpha > 0)
{
    var alpha = draw_get_alpha()
    draw_set_alpha(min((ragealpha * alpha), 1))
    draw_set_halign(fa_right)
    draw_set_font(fnt_main)
    draw_set_color(c_orange)
    if (global.partycount > 1)
    {
        draw_set_halign(fa_left)
        draw_text(33, 50, ("RAGE " + (rage < ragemax ? "UP" : "MAX")))
    }
    else
        draw_text(607, 403, ("RAGE " + (rage < ragemax ? "UP" : "MAX")))
    variable_instance_set(id, "ragemsgalpha", max((ragealpha - (rage < ragemax ? 0.05 : 0.025)), 0))
    draw_set_halign(fa_left)
    draw_set_alpha(alpha)
}
var spr = (scr_murderlv() > 0 ? spr_mainchara_face_geno : spr_mainchara_face)
if (global.lv == 20)
    spr = 3211
draw_sprite_ext(spr, 0, 33, 395, 1, 1, 0, color, 1)
draw_set_font(fnt_small2)
if (global.debug == true)
{
    if keyboard_check_pressed(vk_numpad7)
        global.en = 0
    if keyboard_check_pressed(vk_numpad8)
        global.en = 100
}
if (global.canusegrazing == 1)
{
    var visen = (global.en / 2)
    var vismaxen = (global.maxen / 2)
    var bgextend = 0
    if (global.en > 9)
        bgextend += 12
    if (global.en > 99)
        bgextend += 12
    if (global.bmenuno != 12)
        enuse = 0
    if (global.myfight == 5)
        enuse = 0
    if (global.mnfight != 0)
        enuse = 0
    if (global.en > global.maxen)
        global.en = global.maxen
    enease = lerp(enease, visen, 0.125)
    enease2 = lerp(enease2, visen, 0.5)
    enease3 = lerp(enease3, global.en, 0.5)
    if (global.en > 99)
        increase = 30
    else if (global.en > 9)
        increase = 15
    else
        increase = 0
    tpwrite = string(round(enease3))
    draw_set_color(0x6F4047)
    draw_text((((59 + vismaxen) + 8) + xmodify), 18, string_hash_to_newline(((tpwrite + " / ") + string(global.maxen))))
    draw_set_color(c_white)
    draw_text((((57 + vismaxen) + 8) + xmodify), 16, string_hash_to_newline(((tpwrite + " / ") + string(global.maxen))))
    draw_set_color(0xC87ADB)
    draw_rectangle((55 + xmodify), 14, ((55 + vismaxen) + xmodify), 33, false)
    draw_set_color(0xDE928F)
    draw_rectangle((55 + xmodify), 14, ((55 + enease) + xmodify), 33, false)
    draw_set_color(0xFFDBD9)
    if (enuse != 0)
    {
        if (enuse <= global.en)
            draw_rectangle((((55 + enease) - (enuse / 2)) + xmodify), 14, ((55 + enease) + xmodify), 33, false)
        else
        {
            draw_set_color(0x523635)
            draw_rectangle((55 + xmodify), 14, ((55 + visen) + xmodify), 33, false)
        }
    }
    draw_set_color(c_white)
    draw_rectangle(((56 + enease) + xmodify), 14, (min(((56 + enease2) + 1), (55 + vismaxen)) + xmodify), 33, false)
    enuse = 0
    draw_set_font(fnt_small2)
    if (global.language == "ja")
    {
        draw_set_color(0x6F4047)
        draw_text((22 + xmodify), 18, "JA")
        draw_set_color(c_white)
        draw_text((20 + xmodify), 16, "JA")
    }
    else
    {
        draw_set_color(0x6F4047)
        draw_text((22 + xmodify), 18, "EN")
        draw_set_color(c_white)
        draw_text((20 + xmodify), 16, "EN")
    }
}
if (obj_heart.dmgtkr == 2 && previoushp != global.hp)
{
    losthponasidenotewhydowenotuseanysortofcasing += (previoushp - global.hp)
    previoushp = global.hp
}
if (global.partycount > 1)
{
    if (prtymem == 1 || global.mnfight != 0)
    {
        theirturn = 1
        draw_set_color(c_gray)
    }
    else
    {
        theirturn = 0
        draw_set_color(c_gray)
    }
    if (theirturn == 1)
        color = 8421504
    else
        color = 8421504
    draw_text((namex + 456), (namey + 3), global.partynames[1])
}
