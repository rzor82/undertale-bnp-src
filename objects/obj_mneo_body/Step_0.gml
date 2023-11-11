if do_room_goto
{
    do_room_goto = false
    global.flag[425] = 1
    room_goto(global.currentroom)
}
