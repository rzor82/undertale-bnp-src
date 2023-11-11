if (global.flag[451] == 1)
{
    global.msg[0] = "* (The switch is stuck.)/%%"
    mydialoguer = scr_regulartext()
}
else if (global.flag[7] == 1 && global.flag[451] == 0)
{
    global.msg[0] = "* (You waited so long^1,&  the switch has rusted.)/%%"
    mydialoguer = scr_regulartext()
}
else
{
    image_index = 1
    snd_play(snd_noise)
    with (obj_sewerbridge_event)
        con = 1
}
myinteract = 3
