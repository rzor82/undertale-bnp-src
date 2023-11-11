scr_depth()
len = 3
ext = -1
wall = noone
depth_adj = 1
image_xscale = 2
image_yscale = len
ext = sprite_height
layer = layer_get_id("room_ruins_sewer1_Bridge_Layer_999999")
if (!layer_exists(layer))
    show_debug_message("Cannot find bridge layer")
if (global.flag[451] == 1 || (!layer_exists(layer)))
{
    depth_adj = 0
    ext = 0
    con = 8
}
else
{
    layer_set_visible(layer, 0)
    wall = instance_create(x, y, obj_solidsmall)
    wall.image_xscale = image_xscale
    wall.image_yscale = image_yscale
    con = 0
}
