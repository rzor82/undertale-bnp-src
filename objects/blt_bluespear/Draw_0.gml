if (side == 0)
{
    if (con == 1)
    {
        con = 2
        alarm[4] = wait
    }
    if (con < 3 && con > 0)
    {
        if (eo == 0)
            draw_set_color(c_red)
        if (eo == 1)
        {
            draw_set_color(c_yellow)
            credits = snd_credit_s
            caster_play(credits, 0.7, 1)
        }
        if (eo == 2)
            draw_set_color(c_black)
        draw_sprite(spr_exclamationpoint, eo, (global.idealborder[0] + 10), (global.idealborder[2] + 20))
        eo += 1
        if (eo > 2)
            eo = 0
        draw_set_color(c_red)
        draw_rectangle((global.idealborder[0] + 5), (global.idealborder[2] + 5), (global.idealborder[0] + len), (global.idealborder[3] - 5), true)
        draw_rectangle((global.idealborder[0] + 4), (global.idealborder[2] + 4), ((global.idealborder[0] + len) - 1), (global.idealborder[3] - 4), true)
    }
    if (con == 3)
    {
        con = 4
        alarm[4] = 14
    }
}
if (side == 1)
{
    if (con == 1)
    {
        con = 2
        alarm[4] = wait
    }
    if (con < 3 && con > 0)
    {
        if (eo == 0)
            draw_set_color(c_red)
        if (eo == 1)
        {
            draw_set_color(c_yellow)
            credits = snd_credit_s
            caster_play(credits, 0.7, 1)
        }
        if (eo == 2)
            draw_set_color(c_black)
        draw_sprite(spr_exclamationpoint, eo, (global.idealborder[1] - 40), (global.idealborder[2] + 20))
        eo += 1
        if (eo > 2)
            eo = 0
        draw_rectangle((global.idealborder[1] - 5), (global.idealborder[2] + 5), (global.idealborder[1] - len), (global.idealborder[3] - 5), true)
        draw_rectangle((global.idealborder[1] - 4), (global.idealborder[2] + 4), ((global.idealborder[1] - len) + 1), (global.idealborder[3] - 4), true)
    }
    if (con == 3)
    {
        con = 4
        alarm[4] = 14
    }
}
draw_self_border()
