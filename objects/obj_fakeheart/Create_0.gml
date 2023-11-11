with (obj_battlecontroller)
{
    if shield
    {
        with (instance_create(x, y, obj_heartshield))
            target = other.id
    }
}
global.sp = global.asp
shadow[0] = -4
shadow[1] = -4
movement = 1
hgo = 0
vgo = 0
