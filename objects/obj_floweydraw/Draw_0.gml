if instance_exists(obj_uborder)
{
    depth = 5
    draw_set_color(c_black)
    ossafe_fill_rectangle((obj_uborder.x + 5), (obj_uborder.y + 5), obj_rborder.x, obj_dborder.y)
}
var yellow = 0x5ADBFF
var red = 0x3F248E
var litred = 0x4039E0
var green = 0x46A345
if (global.oppatextboxstyle == 2)
{
    yellow = c_yellow
    red = c_maroon
    litred = c_red
    green = c_green
}
else
{
    yellow = 0x59BFF1
    red = 0x3F248E
    litred = 0x4039E0
    green = 0x46A345
}
draw_set_color(red)
ossafe_fill_rectangle(310, 400, (310 + (global.maxhp * 1.2)), 420)
draw_set_color(yellow)
ossafe_fill_rectangle(310, 400, (310 + (global.hp * 1.2)), 420)
draw_set_color(c_white)
scr_setfont(fnt_small2)
hpwrite = string(global.hp)
if (global.hp < 10)
    hpwrite = ("0" + string(global.hp))
draw_text(200, 403, string_hash_to_newline(("LV" + string(global.lv))))
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
draw_text((330 + (global.maxhp * 1.2)), 403, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
draw_text(270, 403, "HP")
