if (con == 0)
{
    var dir = 0
    var sum = 0
    var rand = 0
    var dist = 0
    var index = 0
    while (dist < goal)
    {
        if (skew != 1)
        {
            if is_undefined(skewamount)
            {
                skewamount = irandom_range(2, 5)
                show_debug_message(((("Skew " + string(skew)) + ", Amount ") + string(skewamount)))
            }
            odds[1] = ((skewamount / 2) + 1)
            odds[skew] = skewamount
        }
        sum = 0
        for (var i = 0; i < 3; i++)
            sum += odds[i]
        rand = random(sum)
        sum = 0
        for (i = 0; i < 3; i++)
        {
            if (rand >= sum && rand < (sum + odds[i]))
            {
                dir = (i - 1)
                i = 3
            }
            else
                sum += odds[i]
        }
        if horizontal
        {
            y += (dir * spacing)
            x += (spacing * traveldir)
        }
        else
        {
            x += (dir * spacing)
            y += (spacing * traveldir)
        }
        plot[index++] = dir
        dist += spacing
        if (!scr_insideborder())
            break
        else
            continue
    }
    x = startx
    y = starty
    snd_play(snd_spearappear)
    amount = array_length_1d(plot)
    drawlimit = amount
    stall = 1
    con = 1
}
else if (con == 1 && (!stall) && drawlimit >= amount)
{
    bellsound = caster_play(snd_bell, 1, 1)
    caster_set_pitch(bellsound, 0.6)
    caster_set_volume(bellsound, 0.5)
    caster_play(bellsound, 1, 1)
    caster_set_pitch(bellsound, 0.8)
    alarm[4] = (murder ? 15 : 18)
    con = 2
}
else if (con == 3)
{
    scr_shake(3, 3, 2)
    cracksound = caster_play(snd_crack, 1, 1)
    caster_set_pitch(cracksound, 0.7)
    caster_set_volume(cracksound, 0.7)
    with (obj_mirrorcrack_gen_new)
        alarm[0] = 1
    alarm[4] = (murder ? 12 : 15)
    con = 4
}
if stall
{
    if (stalltimer < 10)
        stalltimer++
    else
    {
        drawlimit = 0
        stall = 0
    }
}
else if (con > 0)
    drawlimit += (murder ? 15 : 10)
