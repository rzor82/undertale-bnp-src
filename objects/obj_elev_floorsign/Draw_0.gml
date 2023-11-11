siner += 1
if (room == room_fire_elevator_l1 || room == room_fire_elevator_l2 || room == room_fire_elevator_l3)
    draw_sprite(spr_floorsign_back_l, (siner / 6), x, y)
else
    draw_sprite(spr_floorsign_back_r, (siner / 6), x, y)
draw_sprite(sprite_index, (siner / 6), x, y)
