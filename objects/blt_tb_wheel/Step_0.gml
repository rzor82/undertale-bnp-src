if (diff == 9)
    spd = 11
if wheeltut
{
    spd = random_range(9, 10)
    wheeltut = 2
}
if (dir == 0)
    rot += (spd * 2)
else
    rot -= (spd * 2)
if (type == 0)
{
    if (con == 0)
    {
        if (((x - (sprite_width / 2)) - spd) < global.idealborder[0])
        {
            x = (global.idealborder[0] + (sprite_width / 2))
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 1
        }
        else
            x -= spd
    }
    if (con == 1)
    {
        if (((y - (sprite_height / 2)) - spd) < global.idealborder[2])
        {
            y = (global.idealborder[2] + (sprite_height / 2))
            spd--
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 2
        }
        else
            y -= spd
    }
    if (con == 2)
    {
        if (((x + (sprite_width / 2)) + spd) > global.idealborder[1])
        {
            x = (global.idealborder[1] - (sprite_width / 2))
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 3
        }
        else
            x += spd
    }
    if (con == 3)
    {
        if (((y + (sprite_height / 2)) + spd) > global.idealborder[3])
        {
            y = (global.idealborder[3] - (sprite_height / 2))
            spd--
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 4
        }
        else
            y += spd
    }
    if (con == 4)
    {
        x -= spd
        if (x < (0 - sprite_width))
        {
            instance_destroy()
            global.turntimer = -1
            global.mnfight = 3
        }
    }
}
else
{
    if (con == 0)
    {
        if (((x + (sprite_width / 2)) + spd) > global.idealborder[1])
        {
            x = (global.idealborder[1] - (sprite_width / 2))
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 1
        }
        else
            x += spd
    }
    if (con == 1)
    {
        if (((y - (sprite_height / 2)) - spd) < global.idealborder[2])
        {
            y = (global.idealborder[2] + (sprite_height / 2))
            spd--
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 2
        }
        else
            y -= spd
    }
    if (con == 2)
    {
        if (((x - (sprite_width / 2)) - spd) < global.idealborder[0])
        {
            x = (global.idealborder[0] + (sprite_width / 2))
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 3
        }
        else
            x -= spd
    }
    if (con == 3)
    {
        if (((y + (sprite_height / 2)) + spd) > global.idealborder[3])
        {
            y = (global.idealborder[3] - (sprite_height / 2))
            spd--
            with (obj_shaker)
                instance_destroy()
            global.hshake = 6
            global.shakespeed = 2
            global.vshake = 6
            instance_create(0, 0, obj_shaker)
            snd_play(snd_impact)
            con = 4
        }
        else
            y += spd
    }
    if (con == 4)
    {
        x += spd
        if (x > (room_width + sprite_width))
        {
            instance_destroy()
            global.turntimer = -1
            global.mnfight = 3
        }
    }
}
