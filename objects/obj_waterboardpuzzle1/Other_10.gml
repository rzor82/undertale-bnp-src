block = instance_position((xx + 10), (yy + 10), obj_solidparent)
if (block != noone)
{
    block.x = 0
    block.y = 0
}
new = instance_create(xx, yy, obj_npc_marker)
new.depth = 850000
if spritech
    new.sprite_index = spr_bridgeseed_blue
else
    new.sprite_index = spr_bridgeseed
new.image_speed = 0
new.image_index = 6
new.visible = true
new.image_speed = 0
