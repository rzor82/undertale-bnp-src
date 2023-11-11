script_execute(SCR_BORDERSETUP, 0, 0, 0, 0, 0)
if instance_exists(OBJ_WRITER)
{
    if (sprite_index != spr_flowey_facade_sillygrin && sprite_index != spr_flowey_toevilface && sprite_index != spr_flowey_toevilface_grin && towink == 0 && toevil == 0)
    {
        if (OBJ_WRITER.halt != false)
        {
            image_speed = 0
            image_index = 0
        }
        else
        {
            image_speed = 0.2
            if (OBJ_WRITER.stringpos >= strlen(OBJ_WRITER.originalstring))
            {
                if (conversation == 9.2 && global.language == "ja")
                {
                    alarm[6] = 10
                    conversation = 9.25
                }
            }
        }
    }
}
if ((!instance_exists(obj_blconwdflowey)) && (!instance_exists(obj_torielcutscene)))
{
    with (OBJ_WRITER)
        instance_destroy()
}
if (instance_exists(obj_winkstar) == 0)
{
    if (instance_exists(OBJ_WRITER) == 0)
    {
        if (conversation == 17)
        {
            image_angle += 5
            gravity_direction = 270
            direction = 155
            speed = 20
            gravity = 10
        }
        if (conversation == 14)
        {
            sprite_index = spr_floweylaugh
            image_speed = 0.5
            with (blcon)
                instance_destroy()
            obj_fakepellet.attackyou = 1
            conversation = 15
            snd_play(snd_floweylaugh)
            alarm[9] = 165
        }
        if (conversation == 12)
        {
            with (obj_borderparent)
                instaborder = 1
            global.border = 55
            with (blcon)
                instance_destroy()
            sprite_index = spr_floweyevil
            alarm[2] = 70
            snd_play(snd_impact)
            obj_fakeheart.movement = 0
            conversation = 13
            instance_create(310, 400, obj_radialfakegen)
        }
        if (conversation == 10 && snd_isplaying(floweysong))
        {
            caster_stop(floweysong)
            sprite_index = spr_flowey_facade_sillygrin
            toevil = 1
            conversation = 10.1
        }
        if (conversation == 9)
        {
            alarm[4] = 30
            sprite_index = spr_floweypissed
            caster_set_pitch(floweysong, 0.9)
            conversation = 9.1
        }
        if (conversation == 7)
        {
            with (blcon)
                instance_destroy()
            sprite_index = spr_floweynice_facade
            if (g > 1)
                sprite_index = spr_floweynice
            for (i = 0; i != 5; i += 1)
            {
                ddd = instance_find(obj_friendlypellet, i)
                ddd.x = ddd.blonicx
                ddd.y = ddd.blonicy
                ddd.attackyou = 1
            }
            conversation = 8
        }
        if (conversation == 5)
        {
            caster_set_pitch(floweysong, 0.95)
            sprite_index = spr_floweysassy
            conversation = 6
            alarm[3] = 30
        }
        if (conversation == 3)
        {
            with (blcon)
                instance_destroy()
            image_index = 0
            image_speed = 0
        }
        if (conversation == 2)
        {
            sprite_index = spr_flowey_facade_sillygrin
            if (g > 1)
                sprite_index = spr_floweynice
            obj_friendlypellet.attackyou = 1
            global.msc = 668
            blconwriter = instance_create((obj_blconwdflowey.x + 40), (obj_blconwdflowey.y + 10), OBJ_WRITER)
            conversation = 3
        }
        if (conversation == 1.5)
        {
            blcon = instance_create((x + sprite_width), y, obj_blconwdflowey)
            global.msc = 667
            blconwriter = instance_create((obj_blconwdflowey.x + 40), (obj_blconwdflowey.y + 10), OBJ_WRITER)
            conversation = 2
            sprite_index = spr_floweyniceside_facade
            if (g > 1)
                sprite_index = spr_floweyniceside
            instance_create(((x - 5) + (sprite_width / 2)), (y + (sprite_width / 2)), obj_friendlypellet)
            instance_create(((x - 5) + (sprite_width / 2)), (y + (sprite_width / 2)), obj_friendlypellet)
            instance_create(((x - 5) + (sprite_width / 2)), (y + (sprite_width / 2)), obj_friendlypellet)
            instance_create(((x - 5) + (sprite_width / 2)), (y + (sprite_width / 2)), obj_friendlypellet)
            instance_create(((x - 5) + (sprite_width / 2)), (y + (sprite_width / 2)), obj_friendlypellet)
        }
        if (conversation == 1)
        {
            sprite_index = spr_floweywink_facade_animated
            if (g > 1)
                sprite_index = spr_floweywink_animated
            towink = 1
            conversation = 1.25
            with (blcon)
                instance_destroy()
        }
        if (towink == 1)
        {
            if (image_index < 7)
                image_speed = 0.3
            else
            {
                image_speed = 0
                image_index = 7
                towink = 0
                instance_create((x + 70), (y + 10), obj_winkstar)
                conversation = 1.5
            }
        }
        if (toevil == 1)
        {
            if (g > 1)
            {
                toevil = 2
                sprite_index = spr_flowey_toevilface
            }
            if (image_index < 4)
                image_speed = 0.08
            else
            {
                image_speed = 0
                sprite_index = spr_flowey_toevilface_grin
                image_index = 0
                toevil = 2
                conversation = 10.5
            }
        }
        if (toevil == 2)
        {
            with (obj_battlebg)
                faded = 1
            if (image_index < 4)
                image_speed = 0.2
            else
            {
                image_speed = 0
                image_index = 5
                conversation = 11
                alarm[1] = 60
                toevil = 0
            }
        }
    }
}
if (conversation == 9.5)
{
    alarm[7] = 80
    with (blcon)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    conversation = 9.6
    pitchlower = 1
}
if (conversation == 9.6)
{
    pitchlower -= 0.02
    if (pitchlower > -0.5)
    {
        caster_set_pitch(floweysong, (0.65 + (pitchlower / 4)))
        caster_set_volume(floweysong, (0.5 + (pitchlower / 2)))
    }
}
if (global.faceemotion == 1)
{
    sprite_index = spr_floweynicesideum_facade
    if (g > 1)
        sprite_index = spr_floweynicesideum
}
if (global.faceemotion == 2)
{
    sprite_index = spr_floweynice_facade
    if (g > 1)
        sprite_index = spr_floweynice
}
if (conversation == 13)
{
    with (obj_fakeheart)
    {
        x = 315
        y = 295
    }
}
if instance_exists(OBJ_WRITER)
{
    if (conversation == 1)
        scr_textskip()
}
