draw_sprite(spr_puddlereflectionthing, 0, (x + 200), y)
if (instance_exists(obj_mainchara) && obj_mainchara.x < 1330)
{
    sprito = obj_mainchara.sprite_index
    var spr_name = sprite_get_name(sprito)
    var death_name = ""
    var no_death_spr = 0
    if (string_pos("_geno", spr_name) > 0)
        spr_name = string_copy(spr_name, 1, (string_pos("_geno", spr_name) - 1))
    if (global.flag[85] == 0)
        spr_name += "_"
    spr_name += "fall"
    if (death == 1)
    {
        death_name = string_replace(spr_name, "mainchara", "chara")
        if sprite_exists(asset_get_index(death_name))
            spr_name = death_name
        else
            no_death_spr = 1
    }
    if ((death == 0 || no_death_spr) && (scr_murderlv() >= 2 || global.flag[221] == 1))
        spr_name += "_geno"
    sprito = asset_get_index(spr_name)
    var exists = sprite_exists(sprito)
    if (!exists)
        sprito = obj_mainchara.sprite_index
    simage = obj_mainchara.image_index
    if draw_armor
    {
        if (obj_mainchara.x < 1350)
        {
            image_blend = make_colour_rgb(102, 102, 102)
            scr_draw_armor_sprites()
            image_blend = c_white
        }
    }
    if instance_exists(obj_mkid_actor)
    {
        mm = obj_mkid_actor
        mm_x = mm.sprite_x
        mm_y = ((mm.sprite_y + (mm.sprite_height * 2)) + 2)
        mm_sprite = mm.sprite
        var mm_sprito = mm.sprite_index
        var goner_name = ""
        mkidspr_name = sprite_get_name(mm_sprito)
        mm_subimg = mm.sprite_subimg
        if (global.flag[5] >= 90 || (global.debug == true && global.draw_debug == 1))
        {
            goner_name = string_replace(mkidspr_name, "mkid", "gkid")
            if sprite_exists(asset_get_index(goner_name))
                mm_sprite = asset_get_index(goner_name)
        }
        if (obj_mainchara.depth < mm.depth)
            draw_sprite_ext(mm_sprite, mm_subimg, mm_x, mm_y, -1, 1, 180, c_white, 0.4)
        if (obj_mainchara.depth >= mm.depth)
            draw_sprite_ext(mm_sprite, mm_subimg, mm_x, mm_y, -1, 1, 180, c_white, 0.4)
    }
    if (global.flag[85] == 0)
        draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito, simage, 1, 1, 0.4, obj_mainchara.x, (obj_mainchara.y + (obj_mainchara.sprite_height * 1)))
    if (global.flag[85] == 1)
    {
        if (obj_mainchara.sprite_index == obj_mainchara.dsprite)
            value = 3
        if (obj_mainchara.sprite_index == obj_mainchara.usprite)
            value = 16
        if (obj_mainchara.sprite_index == obj_mainchara.rsprite)
            value = 10
        if (obj_mainchara.sprite_index == obj_mainchara.lsprite)
            value = 9
        if (obj_mainchara.sprite_index == spr_maincharal_umbrella)
            value = 10
        draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito, simage, 1, 1, 0.4, (obj_mainchara.x - value), (obj_mainchara.y + 30))
    }
    if (global.debug == true && global.draw_debug == 1)
    {
        draw_set_halign(fa_center)
        draw_set_font(fnt_small)
        draw_set_alpha(1)
        with (obj_mainchara)
        {
            draw_set_color((no_death_spr ? c_red : c_yellow))
            draw_text(x, (y - 40), death_name)
            draw_set_color((exists ? c_yellow : c_red))
            draw_text(x, (y - 20), spr_name)
            draw_text(x, (y - 60), goner_name)
        }
        if keyboard_check_pressed(vk_space)
            death = 1
        draw_set_halign(fa_left)
    }
}
draw_sprite(sprite_index, image_index, x, y)
