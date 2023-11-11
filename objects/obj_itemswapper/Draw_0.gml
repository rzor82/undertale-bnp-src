buffer += 1
global.interact = 1
if (buffer > 3)
{
    boxno = 300
    if (boxtype == 1)
        boxno = 312
    xx = __view_get(0, view_current)
    yy = (__view_get(1, view_current) + 6)
    var boxofs = 8
    var heartofs = 9
    var itemofs = 23
    if (global.language == "ja")
    {
        boxofs = 6
        heartofs = 7
        itemofs = 19
    }
    draw_set_color(c_white)
    ossafe_fill_rectangle((xx + boxofs), (yy + (boxofs - 6)), (xx + (320 - boxofs)), (yy + (234 - boxofs)))
    draw_set_color(c_black)
    ossafe_fill_rectangle((xx + (boxofs + 3)), (yy + (boxofs - 3)), (xx + (317 - boxofs)), (yy + (231 - boxofs)))
    scr_setfont(fnt_maintext)
    draw_set_color(c_white)
    scr_itemname()
    for (i = 0; i < 8; i += 1)
    {
        draw_set_color(c_white)
        draw_text((((xx + boxofs) + 3) + itemofs), ((yy + 30) + (i * 16)), string_hash_to_newline(global.itemname[i]))
        if (global.item[i] == 0)
        {
            draw_set_color(c_red)
            draw_line(((((xx + boxofs) + 3) + itemofs) + 5), ((yy + 40) + (i * 16)), ((((xx + boxofs) + 3) + itemofs) + 95), ((yy + 40) + (i * 16)))
        }
    }
    draw_set_color(c_white)
    scr_drawtext_centered(((((xx + boxofs) + 3) + itemofs) + 50), (yy + 9), scr_gettext("itembox_title_inventory"))
    scr_drawtext_centered((((xx + 162) + itemofs) + 50), (yy + 9), scr_gettext("itembox_title_box"))
    scr_storagename(boxno)
    for (i = 0; i < 10; i += 1)
    {
        draw_set_color(c_white)
        draw_text(((xx + 162) + itemofs), ((yy + 30) + (i * 16)), string_hash_to_newline(global.itemname[i]))
        if (global.flag[(boxno + i)] == 0)
        {
            draw_set_color(c_red)
            draw_line((((xx + 162) + itemofs) + 5), ((yy + 40) + (i * 16)), (((xx + 162) + itemofs) + 95), ((yy + 40) + (i * 16)))
        }
    }
    draw_set_color(c_white)
    draw_line((xx + 160), (yy + 40), (xx + 160), (yy + 190))
    draw_line((xx + 161), (yy + 40), (xx + 161), (yy + 190))
    scr_drawtext_icons((xx + 100), (yy + 197), scr_gettext("itembox_close"))
    if keyboard_check_pressed(global.keybind[2])
    {
        if (column != 1)
        {
            column = 1
            c1y = c0y
        }
    }
    if keyboard_check_pressed(global.keybind[0])
    {
        if (column != 0)
        {
            column = 0
            c0y = c1y
            if (c0y > 7)
                c0y = 7
        }
    }
    if keyboard_check_pressed(global.keybind[1])
    {
        if (column == 0 && c0y > 0)
            c0y -= 1
        if (column == 1 && c1y > 0)
            c1y -= 1
    }
    if keyboard_check_pressed(global.keybind[3])
    {
        if (column == 0 && c0y < 7)
            c0y += 1
        if (column == 1 && c1y < 9)
            c1y += 1
    }
    if (column == 0)
        draw_sprite(spr_heartsmall, 0, (((xx + boxofs) + 3) + heartofs), ((yy + 35) + (16 * c0y)))
    if (column == 1)
        draw_sprite(spr_heartsmall, 0, ((xx + 162) + heartofs), ((yy + 35) + (16 * c1y)))
    if (control_check_pressed(0) && buffer > 6)
    {
        if (column == 0)
        {
            script_execute(scr_storageget, global.item[c0y], boxno)
            if (noroom == 0)
                script_execute(scr_itemshift, c0y, 0)
        }
        if (column == 1)
        {
            script_execute(scr_itemget, global.flag[(c1y + boxno)])
            if (noroom == 0)
                scr_storageshift(c1y, 0, boxno)
        }
    }
    if control_check_pressed(1)
    {
        global.interact = 0
        if (spec == 1)
            global.menuno = 0
        obj_overworldcontroller.buffer = -2
        instance_destroy()
        return;
    }
}
