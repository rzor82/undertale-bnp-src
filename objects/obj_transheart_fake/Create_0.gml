image_speed = 0
xx = __view_get(0, view_current)
yy = __view_get(1, view_current)
image_xscale = 0.5
image_yscale = 0.5
mode = 0
alarm[0] = 1
clapper = 1
claps = 0
if (global.transtype == 0)
{
    clapper = 0
    mychoicex = ((xx + 160) - 3)
    mychoicey = ((yy + 211) + 1)
    snd_play(snd_battlefall)
    event_user(0)
}
if (global.transtype == 1)
{
    sprite_index = spr_allsoul
    image_index = 0
    mychoicex = (xx + 110)
    mychoicey = (yy + 100)
    x = (mychoicex + 30)
    y = (mychoicey - 20)
}
if (global.transtype == 2)
{
    sprite_index = spr_allsoul
    image_index = 1
    mychoicex = (xx + 210)
    mychoicey = (yy + 100)
    x = (mychoicex - 30)
    y = (mychoicey - 20)
}
if (global.transtype == 3)
{
    sprite_index = spr_allsoul
    image_index = 2
    mychoicex = (xx + 90)
    mychoicey = (yy + 60)
    x = (mychoicex + 30)
    y = mychoicey
}
if (global.transtype == 4)
{
    sprite_index = spr_allsoul
    image_index = 3
    mychoicex = (xx + 230)
    mychoicey = (yy + 60)
    x = (mychoicex - 30)
    y = mychoicey
}
if (global.transtype == 5)
{
    sprite_index = spr_allsoul
    image_index = 4
    mychoicex = (xx + 110)
    mychoicey = (yy + 20)
    x = (mychoicex + 30)
    y = (mychoicey + 20)
}
if (global.transtype == 6)
{
    sprite_index = spr_allsoul
    image_index = 5
    mychoicex = (xx + 210)
    mychoicey = (yy + 20)
    x = (mychoicex - 30)
    y = (mychoicey + 20)
}
if (clapper == 1)
{
    mychoicex -= 4
    xx -= 4
    alarm[4] = 2
    snd_play(snd_noise)
}
