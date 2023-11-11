scr_monstersetup()
image_speed = 0
part1 = obj_mkid_b_body
bdrawer = instance_create(0, 0, obj_borderdrawer)
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
ht = 100
wd = 100
mercymod = 999999
con = 0
global.flag[20] = 0
with (bdrawer)
    color = 16777215
