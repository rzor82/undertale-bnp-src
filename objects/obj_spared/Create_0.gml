sprite_index = global.monstersprite
image_alpha = 0.5
snd_stop(snd_spare)
snd_play(snd_spare)
for (n = 0; n < 14; n += 1)
{
    j = instance_create((((random((sprite_width / 2)) + (sprite_width / 4)) + x) - 8), (((random((sprite_height / 2)) + (sprite_width / 4)) + y) - 8), obj_dustcloud)
    if (obj_battlecontroller.shinied == 1)
        j.sprite_index = spr_sparecube_anim
    j.rightside = (((8 + j.x) - x) / (sprite_width / 2))
    j.topside = (((8 + j.y) - y) / (sprite_height / 2))
}
if (global.flag[22] != 1)
{
    j2 = instance_create((x + ((sprite_width / 2) - 37)), (y + (sprite_height / 3)), obj_mettcounter)
    if (global.flag[22] == 0)
        j2.sprite_index = spr_battlemsg_spared
    else if (global.flag[22] == 2)
        j2.sprite_index = spr_battlemsg_spared_alt
    j2.depth = (depth - 100)
}
