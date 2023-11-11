if (global.flag[6] == 0)
    runvalue = (stoptryingtocheattherunsystem + (10 * global.turn))
else
{
    if (global.turn == 0)
        runvalue = 0
    if (global.turn >= 1)
        runvalue = (stoptryingtocheattherunsystem + (10 * (global.turn - 1)))
}
if instance_exists(obj_undyneboss)
    runvalue = 100
if (global.flag[6] == 0)
{
    if (global.armor == 4)
        runvalue = 100
}
if instance_exists(obj_mirrorb)
{
    with (obj_mirrorb)
        runcon = 1
    runvalue = 0
    runaway = 0
}
if (runvalue > 50)
{
    runaway = 1
    snd_play(snd_escaped)
    obj_heart.hspeed = -3
    obj_heart.sprite_index = spr_heartgtfo
    obj_heart.image_speed = 0.5
    OBJ_WRITER.halt = 3
    global.xp += global.xpreward[3]
    global.gold += global.goldreward[3]
    tlvl = global.lv
    script_execute(scr_levelup)
    if (levelup == 1)
    {
        if (scr_murderlv() >= 2)
        {
            strongersfx = snd_stronger
            caster_play(strongersfx, 0.7, 2)
        }
        else
            snd_play(snd_levelup)
    }
    global.msc = 14
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    global.flag[11] = 1
    global.flag[24] += 1
}
