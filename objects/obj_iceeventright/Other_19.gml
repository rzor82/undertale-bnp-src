global.interact = 1
obj_mainchara.image_speed = 0
obj_mainchara.hspeed = 5
obj_iceeventright.alarm[0] = 2
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
