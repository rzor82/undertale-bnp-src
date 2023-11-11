x1 = 0
x2 = 0
y1 = 0
y2 = 0
mp = 0
actor = obj_mainchara
if instance_exists(obj_mkid_actor)
    actor = 1125
actortype = 0
depth = (actor.depth - 5)
if (room == room_ruins_sewer2)
{
    sprite_index = spr_waterripple_sewer
    x1 = 100
    y1 = 180
    x2 = 480
    y2 = 310
}
if (room == room_water3)
{
    x1 = 220
    y1 = 60
    x2 = 380
    y2 = 180
}
if (room == room_water_firepuzzle)
{
    x1 = 80
    y1 = 120
    x2 = 260
    y2 = 180
}
image_speed = 0
prev_step = 0
