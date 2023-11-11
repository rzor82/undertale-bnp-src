con = 0
asg = instance_create(130, 145, obj_asgore_actor)
global.interact = 1
caster_free(-3)
global.currentsong = caster_load("music/barrier.ogg")
caster_loop(global.currentsong, 0.8, 0.8)
if (global.tempvalue[10] > 0)
    con = 10
global.facing = 2
global.border = 0
SCR_BORDERSETUP()
expand = 0
if expand
    instance_create(0, 0, obj_expander)
else
{
    bdrawer = instance_create(0, 0, obj_borderdrawer)
    with (bdrawer)
    {
        c[0] = 0
        c[1] = 0
        c[2] = 0
        alpha = 0
    }
}
