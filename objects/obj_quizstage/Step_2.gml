if (slow || sprite_index == spr_quizstage)
    image_index = obj_battlebg.image_index
else
    image_index += (obj_battlebg.image_speed * 2)
x = ((room_width - sprite_width) / 2)
image_speed = 0
