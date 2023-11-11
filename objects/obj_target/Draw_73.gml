if (global.debug == true)
{
    draw_set_alpha(1)
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    var total = 0
    var variance = 2
    with (attack)
    {
        var percentage = 1
        var bonus_multiplier = 2.2
        if (object_index == obj_targetchoicefist)
        {
            bonus_multiplier = 2.1
            percentage = (punches / maxpunches)
        }
        scr_attackcalc()
        bonusfactor = abs((myx - myperfectx))
        if (bonusfactor == 0)
            bonusfactor = 1
        stretch = ((obj_target.sprite_width - bonusfactor) / obj_target.sprite_width)
        if (bonusfactor <= 12)
            damage = round((damage * bonus_multiplier))
        else
            damage = round(((damage * stretch) * 2))
        total += ceil((damage * percentage))
    }
    draw_text(x, y, ((string(total) + " - ") + string((total + variance))))
}
