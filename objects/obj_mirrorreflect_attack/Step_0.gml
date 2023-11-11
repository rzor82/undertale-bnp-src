if (con == 0 && obj_uborder.y == global.idealborder[2])
{
    global.border = -1
    alarm[4] = 30
    con = 1
}
else if (con == 2)
{
    if (!hardmode)
    {
        with (instance_create(marker.x, marker.y, obj_fakeheart))
        {
            visible = false
            movement = -1
        }
    }
    marker.visible = true
    marker.image_alpha = (hardmode ? 0.5 : 1)
    var w = floor((c_borderwidth(1) / 2))
    snd_play(snd_spearappear)
    global.idealborder[0] += w
    global.idealborder[1] += w
    visible = true
    con = 3
}
else if (con == 3)
{
    border[0] = (orig[0] + (orig[0] - obj_lborder.x))
    border[1] = (orig[1] + (orig[1] - obj_rborder.x))
    obj_heart.x = floor(((obj_rborder.x + obj_lborder.x) / 2))
    marker.x = floor(((border[1] + border[0]) / 2))
    if (obj_lborder.x >= global.idealborder[0])
    {
        with (obj_heart)
            movement = 1
        alarm[4] = 20
        con = 4
    }
}
else if (con == 5)
{
    if hardmode
    {
        obj_heart.image_alpha -= 0.05
        if (obj_heart.image_alpha <= 0)
            con = 6
    }
    else if (alarm[4] == -1)
        alarm[4] = 20
}
else if (con == 6 && global.turntimer < 2)
{
    with (obj_mirrorface_bullet)
        instance_destroy()
    with (obj_mirrorface)
        instance_destroy()
    global.turntimer = -1
    global.idealborder[0] = border[0]
    with (obj_fakeheart)
        instance_destroy()
    with (marker)
        instance_destroy()
    con = 7
}
else if (con == 7)
{
    with (obj_heart)
    {
        image_alpha = 1
        visible = true
        x = -200
    }
    if (obj_lborder.x <= global.idealborder[0])
    {
        global.turntimer = 1
        global.border = 0
        instance_destroy()
        con = 8
    }
    if (image_alpha > 0)
        image_alpha -= 0.05
}
SCR_BORDERSETUP()
if (con >= 4 && con < 7)
{
    timer--
    if (timer == 0)
    {
        snd_play(snd_spearappear)
        with (instance_create(0, 0, obj_mirrorface))
            depth = (other.depth - 2)
        timer = global.firingrate
    }
}
