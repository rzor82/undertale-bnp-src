if (global.debug == true && room != room_dogshrine_ruined)
{
    global.border = 0
    SCR_BORDERSETUP()
    global.battlegroup = 255
    global.mercy = 1
    global.hp = global.maxhp
    global.flag[15] = 0
    global.seriousbattle = 1
    room_goto(room_battle)
}
