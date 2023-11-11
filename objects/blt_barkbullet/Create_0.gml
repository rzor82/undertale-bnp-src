dmg = 7
xx = ((obj_heart.x - obj_heart.xprevious) * 15)
yy = ((obj_heart.y - obj_heart.yprevious) * 15)
move_towards_point((obj_heart.x + xx), (obj_heart.y + yy), 7)
sprite_index = scr_getsprite(sprite_index)
