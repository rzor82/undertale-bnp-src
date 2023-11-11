if (myinteract == 1 && con == 0 && global.interact == 0)
{
    snd_play(snd_bell)
    if instance_exists(obj_waterboard)
    {
        global.interact = 1
        image_speed = 0.2
        con = 1
        alarm[4] = 15
    }
    else
    {
        image_speed = 0.2
        con = 20
        alarm[4] = 15
    }
}
if (con == 1)
{
    global.encounter = 0
    finished = false
    if instance_exists(obj_waterboard)
    {
        if (obj_waterboard.using == 99)
            finished = true
        obj_waterboard.using = 99
        with (obj_waterboard)
            image_alpha -= 0.08
    }
}
if (con == 2)
{
    with (obj_waterboardpuzzle1)
    {
        won = 0
        resetting = 1
    }
    for (i = 0; i < 4; i += 1)
    {
        if (block[i] > obj_backgrounder_parent)
        {
            with (block[i])
            {
                x = xstart
                y = ystart
            }
            block[i] = 0
        }
    }
    con = 3
    alarm[4] = 15
}
if (con == 3)
{
    spritech = choose(0, 1)
    with (obj_waterboard)
    {
        if other.spritech
            sprite_index = spr_bridgeseed_blue
        else
            sprite_index = spr_bridgeseed
        x = xstart
        y = ystart
        image_index = 0
        image_speed = 0
        image_alpha += 0.08
    }
}
if (con == 4)
{
    with (obj_waterboardpuzzle1)
    {
        waterboard = 0
        resetting = 0
        failcon = 0
    }
    with (obj_waterboard)
    {
        using = 0
        myinteract = 0
        depth = 800000
    }
    myinteract = 0
    con = 0
    image_speed = 0
    image_index = 0
    global.interact = 0
}
if (con == 21)
{
    image_speed = 0
    image_index = 0
    con = 0
    myinteract = 0
}
