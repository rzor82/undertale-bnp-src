if (global.turntimer > 0)
{
    depth = -1000
    draw_set_color(c_red)
    global.turntimer -= 1
}
if (prevhp > global.hp)
{
    if shield
    {
        shield = 0
        with (obj_heartshield)
            unshield = 1
        snd_stop(snd_hurt1)
        global.hp = prevhp
    }
    if (rage && rageamt < ragemax)
    {
        ragemsgalpha = 1
        var inc = ((prevhp - global.hp) / 4)
        if ((rageamt + inc) >= ragemax)
        {
            inc = (ragemax - rageamt)
            ragemsgalpha = 3
        }
        global.at += inc
        rageamt += inc
    }
}
prevhp = global.hp
if instance_exists(obj_uborder)
{
    depth = 5
    draw_set_color(c_black)
    if (drawrect == 1)
        ossafe_fill_rectangle((obj_uborder.x + 5), (obj_uborder.y + 5), obj_rborder.x, obj_dborder.y)
}
if (global.debug && global.draw_debug)
{
    draw_set_alpha(0.5)
    draw_set_color(c_red)
    draw_rectangle((global.idealborder[0] + 5), (global.idealborder[2] + 5), global.idealborder[1], global.idealborder[3], false)
    draw_set_alpha(1)
}
if (__background_get_colour() != 16777215 && drawbinfo == 1)
    script_execute(scr_binfowrite)
if (global.bmenuno == 1 && global.myfight == 0 && global.mnfight == 0)
{
    var maxwidth = 0
    for (var i = 0; i < 3; i++)
    {
        if (global.monster[i] == true)
        {
            var name = global.monstername[i]
            if (global.monsterinstance[i].object_index == obj_mirrorb && global.monsterinstance[i].shielded)
                name += " (Shielded)"
            if global.newmenu
            {
                var width = 0
                for (var j = 1; j <= strlen(name); j++)
                {
                    var ch = ord(string_char_at(name, j))
                    if (ch == 32 || ch >= 65377)
                        width += 13
                    else if (ch < 8192)
                        width += 16
                    else
                        width += 26
                }
            }
            else
                width = (strlen(name) * 16)
            if (width > maxwidth)
                maxwidth = width
        }
    }
    xwrite = (190 + maxwidth)
    for (i = 0; i < 3; i++)
    {
        if (global.monster[i] == true && global.monstertype[i] != 68)
        {
            draw_set_color(c_red)
            var lineheight = 32
            var y_start = 280
            if global.newmenu
                lineheight = 36
            draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + 100), ((y_start + (i * lineheight)) + 16), false)
            draw_set_color(c_lime)
            draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + ((global.monsterhp[i] / global.monstermaxhp[i]) * 100)), ((y_start + (i * lineheight)) + 16), false)
        }
    }
}
if (global.newmenu && global.bmenuno >= 3 && global.bmenuno < 4 && global.myfight == 0 && global.mnfight == 0)
{
    var first = ((global.bmenuno - 3) * 8)
    scr_setfont(fnt_main)
    draw_set_color(c_white)
    var xx = (global.idealborder[0] + 20)
    var yy = (global.idealborder[2] + 20)
    var lineheader = scr_gettext("item_menub_header")
    if (global.language == "ja")
        scr_itemnameb()
    else
    {
        scr_itemname()
        for (i = 0; i < 8; i++)
            global.itemnameb[i] = global.itemname[i]
        lineheader = ("   " + lineheader)
        yy -= 2
    }
    i = 0
    while (i < 3 && global.item[(first + i)] != 0)
    {
        draw_set_color(c_white)
        for (j = 0; j < global.partycount; j++)
        {
            var bmenuno = bmenuno_buffer[j]
            if (!((bmenuno >= 3 && bmenuno < 4)))
            {
            }
            else
            {
                var bmenucoord = bmenucoord_buffer[j]
                itempos = (bmenucoord[3] + ((bmenuno - 3) * 8))
                if (itempos == (first + i))
                    draw_set_color(c_gray)
            }
        }
        draw_text(xx, (yy + (i * 36)), string_hash_to_newline((lineheader + global.itemnameb[(first + i)])))
        i++
    }
    var num_items = 8
    while (num_items > 0 && global.item[(num_items - 1)] == 0)
        num_items--
    if (num_items > 3)
    {
        xx = (global.idealborder[1] - 30)
        yy = (floor(((global.idealborder[2] + global.idealborder[3]) / 2)) - (5 * (2 + num_items)))
        var arrow_yofs = round((min(((obj_time.time % 30) / 30), 0.5) * 6))
        if (first > 0)
            draw_sprite(spr_bitem_ja_arrow, 0, xx, (yy - arrow_yofs))
        yy += 10
        for (i = 0; i < num_items; i++)
        {
            if ((first + global.bmenucoord[3]) == i)
                var spr = spr_bitem_ja_largedot
            else
                spr = spr_bitem_ja_smalldot
            draw_sprite(spr, 0, xx, yy)
            yy += 10
        }
        if ((first + 3) < num_items)
            draw_sprite_ext(spr_bitem_ja_arrow, 0, xx, ((yy + 10) + arrow_yofs), 1, -1, 0, c_white, 1)
    }
}
if (global.debug && global.draw_debug)
{
    draw_set_alpha(1)
    draw_set_halign(fa_right)
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    draw_text(630, 10, ((((((((((((((((string(global.mnfight) + " ") + string(global.myfight)) + " ") + string(global.border)) + " ") + string(global.idealborder)) + " ") + string(global.turntimer)) + " ") + string(global.firingrate)) + "\nShield: ") + string(shield)) + "\nRage: ") + string(rage)) + " - ") + string(rageamt)))
    draw_set_halign(fa_left)
}
