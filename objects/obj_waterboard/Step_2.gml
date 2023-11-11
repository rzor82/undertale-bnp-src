if instance_exists(obj_waterboardpuzzle1)
{
    if (myinteract == 1 && using == 0 && obj_waterboardpuzzle1.waterboard == 0)
    {
        if (snd_isplaying(snd_movemenu) == 0)
            snd_play(snd_movemenu)
        using = 1
        obj_waterboardpuzzle1.waterboard = 1
        myinteract = 0
        solid = 0
    }
    else if (myinteract == 1 && using == 0)
        myinteract = 0
}
if (myinteract == 1 && using == 1)
{
    x -= 40
    with (obj_mainchara)
    {
        if (global.facing == 2)
        {
            if collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 5), obj_interactable, 0, 1)
            {
                interactedobject = collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 8), obj_interactable, 0, 1)
                if (interactedobject != noone)
                {
                    with (interactedobject)
                        facing = 0
                    with (interactedobject)
                        script_execute(scr_interact)
                }
            }
        }
    }
    myinteract = 0
    x += 40
}
if (using == 1)
{
    global.encounter = 0
    x = obj_mainchara.x
    y = (obj_mainchara.y - 10)
    depth = (obj_mainchara.depth - 2)
    if (global.interact == 0)
    {
        if (control_check_pressed(0) == 1)
        {
            if (global.facing == 0)
            {
                j = instance_position((obj_mainchara.x + 10), (obj_mainchara.y + 40), obj_npc_marker)
                h = instance_position((obj_mainchara.x + 10), (obj_mainchara.y + 40), obj_waterboard)
                g = instance_position((obj_mainchara.x + 10), (obj_mainchara.y + 40), obj_waterspot)
                if (h == -4 && j == -4)
                {
                    if (g != -4)
                    {
                        y = (obj_mainchara.y + 30)
                        move_snap(20, 20)
                        using = 2
                        dir = 0
                    }
                }
            }
            if (global.facing == 2)
            {
                g = instance_position((obj_mainchara.x + 10), obj_mainchara.y, obj_waterspot)
                if (g != -4)
                {
                    if (!(collision_point((obj_mainchara.x + 10), obj_mainchara.y, obj_waterboard, 0, 1)))
                    {
                        y = obj_mainchara.y
                        move_snap(20, 20)
                        using = 2
                        dir = 2
                    }
                }
            }
            if (global.facing == 1)
            {
                j = instance_position((obj_mainchara.x + 30), (obj_mainchara.y + 20), obj_npc_marker)
                h = instance_position((obj_mainchara.x + 30), (obj_mainchara.y + 20), obj_waterboard)
                g = instance_position((obj_mainchara.x + 30), (obj_mainchara.y + 20), obj_waterspot)
                if (j == -4)
                {
                    if (h == -4)
                    {
                        if (g != -4)
                        {
                            y = (obj_mainchara.y + 10)
                            x = (obj_mainchara.x + 20)
                            move_snap(20, 20)
                            using = 2
                            dir = 1
                        }
                    }
                }
            }
            if (global.facing == 3)
            {
                j = instance_position((obj_mainchara.x - 10), (obj_mainchara.y + 20), obj_npc_marker)
                h = instance_position((obj_mainchara.x - 10), (obj_mainchara.y + 20), obj_waterboard)
                g = instance_position((obj_mainchara.x - 10), (obj_mainchara.y + 20), obj_waterspot)
                if (j == -4)
                {
                    if (h == -4)
                    {
                        if (g != -4)
                        {
                            y = (obj_mainchara.y + 10)
                            x = (obj_mainchara.x - 20)
                            move_snap(20, 20)
                            using = 2
                            dir = 3
                        }
                    }
                }
            }
            if (using == 2)
                obj_waterboardpuzzle1.waterboard = 0
        }
    }
}
if (using == 2)
{
    if (room == room_water11)
        depth = 99999
    else
        depth = 900000
    if (dir == 2)
    {
        y -= 2
        if (instance_position((x + 10), (y - 2), obj_npc_marker) != -4)
            using = 3
        if (instance_position((x + 10), (y - 2), obj_waterstop) != -4)
            using = 3
        if (instance_position((x + 10), (y - 2), obj_waterboard) != -4)
            using = 3
    }
    if (dir == 1)
    {
        x += 2
        if (instance_position((x + 20), (y + 10), obj_npc_marker) != -4)
            using = 3
        if (instance_position((x + 20), (y + 10), obj_waterstop) != -4)
            using = 3
        if (instance_position((x + 20), (y + 10), obj_waterboard) != -4)
            using = 3
    }
    if (dir == 0)
    {
        y += 2
        if (instance_position((x + 10), (y + 22), obj_npc_marker) != -4)
            using = 3
        if (instance_position((x + 10), (y + 22), obj_waterstop) != -4)
            using = 3
        if (instance_position((x + 10), (y + 22), obj_waterboard) != -4)
            using = 3
    }
    if (dir == 3)
    {
        x -= 2
        if (instance_position((x - 2), (y + 10), obj_npc_marker) != -4)
            using = 3
        if (instance_position((x - 2), (y + 10), obj_waterstop) != -4)
            using = 3
        if (instance_position((x - 2), (y + 10), obj_waterboard) != -4)
            using = 3
    }
    if (using == 3)
        move_snap(20, 20)
}
if (using == 5)
{
    image_speed = 0.17
    alarm[2] = 30
    using = 6
}
