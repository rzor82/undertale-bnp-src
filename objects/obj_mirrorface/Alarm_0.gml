with (instance_create(x, y, obj_mirrorface_bullet))
{
    depth = (other.depth + 1)
    move_towards_point((other.centerx - (sprite_width / 2)), (other.centery - (sprite_height / 2)), 4)
    image_angle = other.image_angle
}
if (--times > 0)
    alarm[0] = delay
else
    stage = 2
focus = 0
