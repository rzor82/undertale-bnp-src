if instance_exists(obj_papyrus2)
{
    if (obj_mainchara.x < 150 && obj_mainchara.y > 135)
        obj_mainchara.y = 135
    if (obj_mainchara.x < 84)
        obj_mainchara.x = 84
    if (obj_mainchara.x < 108 && obj_mainchara.y < 102)
        obj_mainchara.y = 102
    if (shocking == 0)
        shocking = 1
    if (global.invc < 1 && (!instance_exists(obj_overworldbattler)))
    {
        with (obj_soulvision)
        {
            event_user(1)
            instance_create(0, 0, obj_overworldbattler)
            image_blend = c_yellow
            draw_override = 1
            darken = false
            alpha = 1
            if (global.hp < 1)
            {
                if (obj_papyrus2.hptalk < 1)
                    obj_papyrus2.hptalk = 1
                global.hp = 1
            }
        }
    }
}
