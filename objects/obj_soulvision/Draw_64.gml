var yellow = 0x59BFF1
var red = 0x4039E0
if ((!instance_exists(obj_dialoguer)) || obj_dialoguer.side == 0)
{
    head = spr_mainchara_face
    if (scr_murderlv() >= 2 || global.flag[221] == 1)
        head = spr_mainchara_face_geno
    if instance_exists(obj_unfader)
        draw_set_alpha((1 - obj_unfader.image_alpha))
    if instance_exists(obj_fader)
        draw_set_alpha((1 - obj_fader.image_alpha))
    if instance_exists(obj_whitefader)
        draw_set_alpha((1 - obj_whitefader.image_alpha))
    draw_set_color(c_silver)
    var old_alpha = draw_get_alpha()
    draw_set_alpha((hp_rectalpha * old_alpha))
    ossafe_fill_rectangle(230, (hp_y - 10), (surface_get_width(application_surface) - 220), (hp_y + 30))
    draw_set_alpha(old_alpha)
    draw_set_color(red)
    ossafe_fill_rectangle(275, hp_y, (275 + (global.maxhp * 1.2)), (hp_y + 20))
    draw_set_color(yellow)
    ossafe_fill_rectangle(275, hp_y, (275 + (global.hp * 1.2)), (hp_y + 20))
    draw_set_color(c_white)
    draw_set_font(fnt_curs)
    hpwrite = string(global.hp)
    if (global.hp < 10)
        hpwrite = ("0" + hpwrite)
    if (global.hp < 0)
        hpwrite = "00"
    draw_sprite_ext(head, 0, 235, (hp_y - 5), 1, 1, 0, c_white, draw_get_alpha())
    draw_text((305 + (global.maxhp * 1.2)), hp_y, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
}
