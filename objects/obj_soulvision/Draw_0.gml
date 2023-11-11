if (view_current != 0 && instance_exists(obj_battlebg_screenshotter))
    return;
shadow_xoffset = -1
shadow_yoffset = 0
offsetx = 0
offsety = 0
offset = 5
if instance_exists(obj_labelevator_a)
{
    offsetx = obj_labelevator_a.hshake
    offsety = obj_labelevator_a.vshake
    salpha = max(0, (1 - obj_labelevator_a.w))
    alpha = (max_alpha * salpha)
    if instance_exists(OBJ_WRITER)
        OBJ_WRITER.depth = (depth - 1)
}
obj = obj_mainchara
if (instance_exists(obj_lastsans_trigger) && instance_exists(obj_npc_marker))
{
    var tmp_obj = obj
    with (obj_npc_marker)
    {
        if (sprite_index == spr_maincharar_shadow_geno)
            tmp_obj = id
    }
    obj = tmp_obj
    shadow_yoffset -= 1
}
else if (instance_exists(obj_darksans1) && (obj_darksans1.sprite_index == spr_sans_r_darkhand || obj_darksans1.sprite_index == spr_sans_r_darkhand_geno))
{
    obj = obj_darksans1
    shadow_xoffset += ((obj_darksans1.sprite_width - obj_mainchara.sprite_width) + 1)
    offset += ((obj_darksans1.sprite_width - obj_mainchara.sprite_width) + 1)
}
else if (instance_exists(obj_mainchara_fake) && obj_mainchara_fake.visible)
    obj = obj_mainchara_fake
else if (instance_exists(obj_mainchara_actor) && obj_mainchara_actor.visible)
    obj = obj_mainchara_actor
if (instance_exists(obj_artclass_sign) && obj_artclass_sign.con == 5 && instance_exists(obj_artclass_sign.sory))
    obj_artclass_sign.sory.depth = (depth - 1)
if instance_exists(obj_mettanchor)
    obj_mettanchor.depth = (depth - 1)
if (instance_exists(obj_undynea_actor) && (!instance_exists(obj_undynetrigger_boss)) && (!instance_exists(obj_undyneencounter1)) && (!instance_exists(obj_undyneencounter2)) && (!instance_exists(obj_undyneencounter3)) && (!instance_exists(obj_undyneencounter4)))
    obj_undynea_actor.depth = (depth - 1)
else if (instance_exists(obj_savepoint_fake) && instance_exists(obj_floweyfacer))
    obj_floweyfacer.depth = (depth - 1)
else if instance_exists(obj_tempblack)
    depth = (obj_tempblack.depth - 1)
else if instance_exists(obj_undynea_chaser)
{
    if darken
        obj_undynea_chaser.depth = (depth - 1)
    else
        depth = (obj.depth - 1)
}
else if (instance_exists(obj_bluelaser_o) && (!instance_exists(obj_mettnewsevent)))
    depth = (obj_bluelaser_o.depth + 1)
else if instance_exists(obj_dialoguer)
{
    depth = (obj_dialoguer.depth + 1)
    with (obj_dialoguer.writer)
        depth = (other.depth - 2)
}
else if instance_exists(obj_floweytalker1)
    obj_floweytalker1.depth = (depth - 1)
else if instance_exists(obj_overworldcontroller)
    depth = (obj_overworldcontroller.depth + 1)
if (depth > obj.depth)
    depth = (obj.depth - 1)
if darken
{
    draw_set_alpha(alpha)
    draw_set_color(c_black)
    draw_rectangle(0, 0, room_width, room_height, false)
}
draw_set_alpha(1)
scr_draw_soul_vision(obj)
if do_flicker
{
    if (global.invc > 0 && flicker_state < 4)
        flicker_state += 1
    else
        flicker_state = 0
}
