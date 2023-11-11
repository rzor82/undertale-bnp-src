instance_create(0, 0, obj_persistentfader)
if (room != room_ruins18)
{
    global.entrance = 1
    snd_play(mus_doorclose)
    room_goto(room_next(room))
}
else
{
    global.entrance = 4
    room_goto(room_ruins_home_walkway)
}
