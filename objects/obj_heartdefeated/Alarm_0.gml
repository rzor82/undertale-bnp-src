alarm[1] = 40
snd_play(snd_break1)
sprite_index = spr_heartbreak
candoitnow = 1
x -= 2
if (global.flag[500] == 1)
{
    alarm[1] = -1
    heartcon = 5
    thisx = x
    thisy = y
}
