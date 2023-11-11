if (mode == 1)
{
    g = instance_create((x + 140), ((y + 130) + (cos((sinert / 5)) * 2)), obj_spiderpour)
    g.hspeed = (-g.hspeed)
    g.gravity_direction = 220
    g2 = instance_create((x + 140), ((y + 130) + (cos((sinert / 5)) * 2)), obj_spiderpour)
    g2.hspeed = (-g2.hspeed)
    g2.gravity_direction = 220
    alarm[5] = 4
}
