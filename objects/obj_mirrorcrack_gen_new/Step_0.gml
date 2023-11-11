if (!started)
{
    global.turntimer = -1
    if (obj_uborder.y == global.idealborder[2])
    {
        global.turntimer = 999
        alarm[0] = 10
        started = 1
    }
}
else if (global.turntimer < 2 && (!endturn))
{
    global.turntimer = -1
    endturn = 1
}
else if endturn
{
    var ready = 0
    var amount = instance_number(obj_mirrorcrack_new)
    with (obj_mirrorcrack_new)
    {
        if (con == 5)
            ready++
    }
    if (ready == amount)
    {
        global.turntimer = 1
        with (obj_mirrorcrack_new)
            instance_destroy()
        instance_destroy()
    }
}
