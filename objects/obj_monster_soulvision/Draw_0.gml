soffsetx = -1
soffsety = 2
hoffsetx = 0
hoffsety = 5
if instance_exists(obj)
{
    depth = (obj.depth - 1)
    if (obj.object_index == obj_sans_actor)
    {
        sprite = -4
        if (obj.sprite_index == spr_mkid_r || obj.sprite_index == spr_mkid_rt)
            sprite = spr_mkid_svisionr
        else if (obj.sprite_index == spr_mkid_l || obj.sprite_index == spr_mkid_lt)
        {
            sprite = spr_mkid_svisionl
            soffsetx += 2
        }
        if (sprite != -4)
            draw_sprite_ext(sprite, obj.image_index, (obj.x + soffsetx), (obj.y + soffsety), 1, 1, 0, c_white, salpha)
    }
    sprite_index = spr_monsterheart_svision
    draw_sprite_ext(sprite_index, obj.sprite_index, (((obj.x + (obj.sprite_width / 2)) - (sprite_width / 2)) + hoffsetx), (((obj.y + (obj.sprite_height / 2)) - (sprite_height / 2)) + hoffsety), 1, 1, 0, c_white, salpha)
}
