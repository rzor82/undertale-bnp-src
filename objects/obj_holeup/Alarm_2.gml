obj_mainchara.visible = true
obj_mainchara.vspeed = 0
if instance_exists(obj_caterpillar_parent)
{
    with (obj_caterpillar_parent)
    {
        x = obj_mainchara.x
        y = obj_mainchara.y
        scr_caterpillar_interpolate()
        visible = true
    }
    follow = 0
}
global.interact = 0
global.phasing = 0
obj_solidparent.solid = 1
