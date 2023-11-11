script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
instance_destroy(obj_battlebg)
instance_create(0, 0, obj_garbagebg)
image_speed = 0
part1 = obj_maddum_drawer
mypart1 = instance_create((x + 50), (y + 10), part1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -9999
sha = 0
shb = 0
hurtsies = 0
con = 0
con2 = 0
talko = 0
global.faceemotion = 0
next = 1
hp = 300
maxhp = 300
drawhp = 0
siner = 0
type2 = 0
con3 = 0
blcon = 98786756545
ht = 100
wd = 100
soundbuffer = 0
turns = 0
knifeamount = 11
if (global.flag[6] == 1)
    knifeamount = 16
slowthemusic = 0
vol = 1
pitch = 1
