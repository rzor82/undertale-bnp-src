if (hostile == 1)
{
    if (global.invc < 1 && (!instance_exists(obj_overworldbattler)))
    {
        with (obj_soulvision)
        {
            event_user(1)
            instance_create(0, 0, obj_overworldbattler)
        }
    }
    if (global.hp <= 0)
    {
        global.myxb = 320
        global.myyb = 240
        with (obj_soulvision)
        {
            var hoffsetx = (offset + offsetx)
            var hoffsety = (17 + offsety)
            global.myxb = ((obj.x - __view_get(0, 0)) + hoffsetx)
            global.myyb = ((obj.y - __view_get(1, 0)) + hoffsety)
        }
        scr_gameoverb()
        with (obj_overworldbattler)
            event_user(0)
        return;
    }
}
