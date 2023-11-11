global.interact = 1
obj_mainchara.image_speed = 0
if (obj_mainchara.speed == 0)
{
    obj_mainchara.x = obj_mainchara.xprevious
    obj_mainchara.y = obj_mainchara.yprevious
    if obj_time.run
    {
        if obj_time.up
        {
            with (obj_mainchara)
                vspeed = (-3 + (-movemultiplier))
        }
        if obj_time.down
        {
            with (obj_mainchara)
                vspeed = (3 + movemultiplier)
        }
        if obj_time.right
        {
            with (obj_mainchara)
                hspeed = (3 + movemultiplier)
        }
        if obj_time.left
        {
            with (obj_mainchara)
                hspeed = (-3 + (-movemultiplier))
        }
    }
    else
    {
        if obj_time.up
            obj_mainchara.vspeed = -3
        if obj_time.down
            obj_mainchara.vspeed = 3
        if obj_time.right
            obj_mainchara.hspeed = 3
        if obj_time.left
            obj_mainchara.hspeed = -3
    }
}
obj_iceevent.alarm[0] = 3
caster_set_volume(snd_ice_slide, 1)
obj_mainchara.visible = false
instance_destroy(skid)
switch global.facing
{
    case 0:
        skid = scr_marker(obj_mainchara.x, (obj_mainchara.y + 9), spr_maincharad_skid)
        break
    case 1:
        skid = scr_marker(obj_mainchara.x, (obj_mainchara.y + 9), spr_maincharar_skid)
        break
    case 2:
        skid = scr_marker(obj_mainchara.x, (obj_mainchara.y + 9), spr_maincharau_skid)
        break
    case 3:
        skid = scr_marker(obj_mainchara.x, (obj_mainchara.y + 9), spr_maincharal_skid)
        break
}

if instance_exists(skid)
{
    skid.hspeed = obj_mainchara.hspeed
    skid.vspeed = obj_mainchara.vspeed
}
if (scr_murderlv() >= 2 || global.flag[221] == 1)
{
    skid.visible = false
    obj_mainchara.visible = true
}
