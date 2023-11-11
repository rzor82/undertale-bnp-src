if instance_exists(obj_troubleboy_hitch)
{
    blcon = instance_create((x - 140), (y - 7), obj_blconsm)
    with (blcon)
        sprite_index = spr_blconsm2
}
else
{
    blcon = instance_create((x - 60), (y - 110), obj_blconsm)
    with (blcon)
        sprite_index = spr_blconabove
}
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = "\\K2Depressed&Error!"
if instance_exists(obj_troubleboy_hitch)
{
    if (progress >= 3)
    {
        if (mycommand >= 0)
            global.msg[0] = "\\K2M-my back&still&hurts..."
        if (mycommand >= 33)
            global.msg[0] = "\\K2I feel&great!"
        if (mycommand >= 66)
            global.msg[0] = "\\K2I made&a friend!"
    }
    else
    {
        if (mycommand >= 0)
            global.msg[0] = "\\K2(sigh...)"
        if (mycommand >= 25)
            global.msg[0] = "\\K2M-my back&hurts..."
        if (mycommand >= 50)
            global.msg[0] = "\\K2Ew^1, I'm&all&s-sweaty..."
        if (mycommand >= 75)
            global.msg[0] = "\\K2W-When&will this&end...?"
    }
    global.typer = 123
    if (progress < 3)
    {
        var whatheheard = obj_troubleboy_hitch.whatiheard
        var hisprogress = obj_troubleboy_hitch.progress
        var hiscommand = obj_troubleboy_hitch.mycommand
        if (whatheheard == 1)
        {
            if (hisprogress < 3)
                global.msg[0] = "\\K2I t-think&that was&an insult."
        }
        if (whatheheard == 4)
            global.msg[0] = "\\K2C-can I&get a&pat too?"
        if (whatheheard == 3)
        {
            if (hisprogress == 2)
                global.msg[0] = "\\K2You hurt&m-me too."
            else if (hisprogress == 3)
                global.msg[0] = "\\K2..."
        }
        if (whatheheard < 1 || whatheheard == 9)
        {
            if (hiscommand >= 75 && hisprogress < 3)
                global.msg[0] = "\\K2No^1, n-not&really..."
        }
    }
    if (whatiheard == 3)
    {
        if (progress == 0)
            global.msg[0] = "\\K2H-huh^1?&I don't&get it..."
        if (progress == 2)
            global.msg[0] = "\\K2Alright^1,&I-I think&I can do&it...!"
        if (progress == 3)
            global.msg[0] = "\\K2T-thank&you..."
    }
    if (whatiheard == 1)
    {
        if (progress == 1)
            global.msg[0] = "\\K2N-no^1, I&don't&want to&..."
        if (progress == 3)
            global.msg[0] = "\\K2H-hey^1! I&did it^1!&I really&did it!"
    }
    if (whatiheard == 4)
        global.msg[0] = "\\K2G-golly^1,&so warm&...&Thank you"
}
else
{
    if (mycommand >= 0)
        global.msg[0] = "..."
    if (mycommand >= 25)
        global.msg[0] = "..."
    if (mycommand >= 50)
        global.msg[0] = "..."
    if (mycommand >= 75)
        global.msg[0] = "I hate&you..."
    global.typer = 2
}
global.msg[1] = "%%%"
blconwd = instance_create((blcon.x + 20), (blcon.y + 10), OBJ_NOMSCWRITER)
if (scr_monstersum() <= 1)
{
    global.border = 3
    obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
with (mypart1)
    paused = false
if instance_exists(obj_troubleboy_hitch_body)
{
    with (obj_troubleboy_hitch_body)
        paused = false
}
