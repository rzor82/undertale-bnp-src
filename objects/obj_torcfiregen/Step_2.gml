if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
if (global.hp <= 2)
    global.turntimer = -100
