event_inherited()
depth = (obj_battlecontroller.depth - 1)
damage = 7
if instance_exists(obj_mirrorb)
    damage = global.monsteratk[obj_mirrorb.myself]
if (!instance_exists(obj_bordersplit))
    instance_create(0, 0, obj_bordersplit)
crack_speed = global.firingrate
image_speed = 0
image_index = 0
max_nodes = 25
nodes = 0
target_objs[0] = obj_heart
target_objs[1] = obj_fakeheart
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 4)) + 4)
if (!instance_exists(obj_fakeheart))
{
    with (instance_create(0, 0, obj_fakeheart))
    {
        x = ((global.idealborder[1] - (obj_heart.x - global.idealborder[0])) - (sprite_width / 2))
        y = obj_heart.y
        movement = 2
    }
}
for (var i = 0; i < array_length_1d(target_objs); i++)
{
    with (target_objs[i])
    {
        distx = (15 + irandom(20))
        disty = (15 + irandom(20))
        instance_create(((x + (distx * choose(-1, 1))) + (sprite_width / 2)), ((y + (disty * choose(-1, 1))) + (sprite_height / 2)), obj_mirrorcrackattack)
    }
}
image_xscale = 4
visible = true
debug = false
