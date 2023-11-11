if (global.debug == true && variable_instance_exists(id, "myscore"))
{
    draw_set_alpha(1)
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    var out = string(myscore)
    var variance = 2
    if (object_index == obj_shoetargettest)
    {
        script_execute(scr_attackcalc)
        damage *= ((myscore / 160) * (4 / num))
        damage = round(damage)
        out += (((": " + string(damage)) + " - ") + string((damage + variance)))
    }
    draw_text(x, y, out)
}
