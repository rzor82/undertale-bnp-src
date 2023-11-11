if (flames == 0)
    instance_create(obj_toroverworld3.x, obj_toroverworld3.y, obj_pbflame)
if (flames > 3)
{
    caster_free(-3)
    room_persistent = true
    alarm[2] = 34
    global.flag[200] = 0
    global.battlegroup = 22
    instance_create(0, 0, obj_battler)
}
else
{
    caster_stop(global.currentsong)
    flames += 1
    snd_play(snd_noise)
    obj_pbflame.image_alpha += 0.25
    alarm[1] = 10
    if (flames == 4)
        alarm[1] = 30
}
obj_toroverworld3.facing = 0
obj_toroverworld3.direction = 270
obj_toroverworld3.dsprite = spr_toriel_dtmad
obj_toroverworld3.sprite_index = spr_toriel_dtmad
