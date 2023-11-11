day = current_weekday
image_xscale = 3
if (global.plot > 163 || scr_murderlv() < 12)
{
    instance_destroy()
    return;
}
else
{
    if (day == 0 || day == 3 || day == 6)
    {
        bunny = scr_marker(148, 84, spr_royalguard_cat_r)
        dragon = scr_marker(180, 80, spr_royalguard_bug_l)
    }
    else
    {
        bunny = scr_marker(154, 80, spr_royalguard_rabbit_r)
        dragon = scr_marker(184, 80, spr_royalguard_dragon_l)
    }
    with (bunny)
        scr_depth()
    with (dragon)
        scr_depth()
}
con = 0
