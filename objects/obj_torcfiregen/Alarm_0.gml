choseang = random(360)
choseangspeed = (-4 + random(8))
i = 0
repeat (36)
{
    cc = instance_create(0, 0, obj_torcfire)
    cc.dmg = dmg
    cc.ang = (choseang + (i * 8))
    cc.rspeed = 4
    cc.r = 300
    cc.angspeed = choseangspeed
    i += 1
}
alarm[0] = 30
