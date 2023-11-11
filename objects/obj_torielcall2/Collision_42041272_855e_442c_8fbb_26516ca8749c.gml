if (global.interact == 0 && room == room_ruins9)
{
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    ossafe_ini_open("undertale.ini")
    bs = ini_read_real("Toriel", "Bscotch", 0)
    ossafe_ini_close()
    if (bs == 0)
        script_execute(scr_writetext, 222, "x", 0, 0)
    else
        script_execute(scr_writetext, 831, "x", 0, 0)
    global.interact = 1
    global.flag[128] = 1
    callcon = 1
}
else if (global.interact == 0 && global.plot < 6.5)
{
    global.msc = 0
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 0
    global.msg[0] = "\\E1* M-my child^1! Where is it&  that you are going?/"
    global.msg[1] = "* ...^1/"
    global.msg[2] = "\\E0* Oh^1, alright^1. I will&  catch up with you&  a room further ahead./"
    global.msg[3] = "\\E1* Just..^1. Please stay out&  of trouble^1,\\E0 alright?/%%"
    script_execute(scr_writetext, 0, "x", 1, 4)
    global.flag[38] = 1
    global.interact = 1
    dummy_skip = 1
    with (obj_speedrun_tracker)
        dummy_skip = 1
}
