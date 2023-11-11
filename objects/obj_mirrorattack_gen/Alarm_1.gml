if (point_distance(x, y, hitx, hity) < dist)
    scr_damagestandard_x()
var amt = 0
if special
{
    event_user(1)
    snd_play(snd_damage)
    for (var i = 0; i < 4; i++)
        global.idealborder[i] = sliced[i]
    with (obj_borderparent)
        instaborder = 1
    scr_shake(3, 2, 2)
    borderalpha = 0.9
    con = 5
}
else
    amt = irandom(8)
var w = c_borderwidth(1)
var h = c_borderheight(1)
if (w > 45 && h > 45)
{
    amt += floor((1.5 * (floor((w / 45)) + floor((h / 45)))))
    for (i = 0; i < amt; i++)
    {
        with (instance_create(((global.idealborder[0] + irandom((w - 30))) + 20), ((global.idealborder[2] + irandom((h - 30))) + 20), obj_mirror_delayedattack))
        {
            dmg = other.dmg
            alarm[0] = (i + 1)
            alarm[3] = (i + 15)
        }
    }
}
else
    times = 0
