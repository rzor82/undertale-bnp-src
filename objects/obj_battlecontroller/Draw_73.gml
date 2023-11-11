if (drawcorners && instance_exists(obj_borderparent) && obj_borderparent.visible)
{
    var rw = obj_rborder.sprite_width
    var dh = obj_dborder.sprite_height
    var x1 = obj_uborder.x
    var x2 = (obj_rborder.x + rw)
    var y1 = obj_uborder.y
    var y2 = (obj_dborder.y + dh)
    draw_set_color(c_black)
    draw_rectangle(x1, y1, (x1 + rw), (y1 + dh), false)
    draw_rectangle((x2 - rw), y1, x2, (y1 + dh), false)
    draw_rectangle(x1, (y2 - dh), (x1 + rw), y2, false)
    draw_rectangle((x2 - rw), (y2 - dh), x2, y2, false)
    draw_sprite_ext(spr_textbox_corner, 0, x1, y1, 1, 1, 0, c_white, obj_borderparent.image_alpha)
    draw_sprite_ext(spr_textbox_corner, 1, x2, y1, -1, 1, 0, c_white, obj_borderparent.image_alpha)
    draw_sprite_ext(spr_textbox_corner, 2, x1, y2, 1, -1, 0, c_white, obj_borderparent.image_alpha)
    draw_sprite_ext(spr_textbox_corner, 3, x2, y2, -1, -1, 0, c_white, obj_borderparent.image_alpha)
}
if (global.mnfight == 2 && global.ambush > 0)
{
    if (timerset == 0)
    {
        if (global.turntimer < 500)
        {
            global.turntimer = 500
            timerset = 1
        }
    }
}
