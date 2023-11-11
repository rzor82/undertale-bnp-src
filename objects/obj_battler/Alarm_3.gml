global.currentroom = room
with (obj_soulvision)
    suspend = 1
if (global.battlegroup == 999)
    room_goto(room_of_dog)
else
{
    if (room != room_water_undynehouse)
        room_persistent = true
    instance_create(0, 0, obj_fader)
    room_goto(room_battle)
}
