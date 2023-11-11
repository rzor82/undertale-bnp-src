blcon = instance_create((x + 143), (y - 7), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = "Smug&Error!!"
if instance_exists(obj_troubleboy_portabie)
{
    if (progress < 3)
    {
        if (mycommand >= 0)
            global.msg[0] = "Think&you're&TOUGH^1,&huh?"
        if (mycommand >= 25)
            global.msg[0] = "Is that&all you&GOT^1, kid?"
        if (mycommand >= 50)
            global.msg[0] = "Just hand&the goods&over^1, or&else..."
        if (mycommand >= 75)
            global.msg[0] = "We're&stronger&than any&human!"
    }
    else if (progress == 99)
    {
        if (mycommand >= 0)
            global.msg[0] = "Maybe I&was too&harsh."
        if (mycommand >= 50)
            global.msg[0] = "I should&call it&quits."
    }
    if (whatiheard == 1)
    {
        if (progress == 99)
            global.msg[0] = "No&problem."
        else
            global.msg[0] = "Heh heh^1,&I know&I am."
    }
    if (whatiheard == 4)
    {
        if (progress == 99)
            global.msg[0] = "Thanks..^1.&I'll&think&about it."
        else
            global.msg[0] = "HEY HANDS&OFF^1! This&ain't a&zoo!"
    }
    if (progress > 3 && progress != 99)
        global.msg[0] = "..."
    if (whatiheard == 3)
    {
        if (progress == 1)
            global.msg[0] = "Eh^1, don't&feel like&it."
        else if (progress == 2)
            global.msg[0] = "It's what&they&deserved&..."
        else if (progress == 3)
        {
            global.msg[0] = "That's...&not true."
            with (mypart1)
                engage_sadness = 1
        }
        else if (progress > 3)
            global.msg[0] = "..."
    }
}
else
{
    if (mycommand >= 0)
        global.msg[0] = "You'll&pay for&this!"
    if (mycommand >= 33)
        global.msg[0] = "What have&you done&...!?"
    if (mycommand >= 66)
        global.msg[0] = "You&KILLED&him..."
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = -4
}
global.msg[1] = "%%%"
global.typer = 33
blconwd = instance_create((blcon.x + 12), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
with (mypart1)
    paused = false
if instance_exists(obj_troubleboy_portabie_body)
{
    with (obj_troubleboy_portabie_body)
        paused = false
}
