global.goldreward[myself] = ((global.flag[59] * 2) + (global.flag[383] * 2))
if (global.goldreward[myself] >= 999)
    global.goldreward[myself] = 999
with (mypart1)
    instance_destroy()
with (obj_battlebg)
    faded = 1
con = 95
alarm[4] = 50
caster_stop(global.batmusic)
scr_monsterdefeat()
global.monster[0] = true
instance_destroy()
instance_create(660, 230, obj_sadspider)
