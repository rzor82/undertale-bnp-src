if (global.debug == true)
{
    global.border = 0
    SCR_BORDERSETUP()
    global.battlegroup = 256
    global.mercy = 1
    global.hp = global.maxhp
    global.flag[15] = 0
    global.seriousbattle = 1
    if keyboard_check(vk_alt)
        global.flag[501] = 3
    else
        global.flag[501] = 0
    room_goto(room_battle)
}
