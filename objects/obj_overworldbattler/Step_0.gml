if (global.hp <= 0 && ((!instance_exists(obj_laserswitch1)) || global.flag[372] == 1))
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
    event_user(0)
    return;
}
global.invc -= 1
if (global.invc < 1)
    event_user(0)
