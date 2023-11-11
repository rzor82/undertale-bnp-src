scr_monstersetup()
image_speed = 0
part1 = obj_mneo_body
mypart1 = instance_create((x + 104), (y + 50), part1)
ratings = instance_create(20, 10, obj_ratingsmaster)
global.ratings = 1
with (ratings)
{
    timeloss = 4000
    depth = (other.depth + 1)
}
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
with (obj_battlebg)
    depth = (obj_mettaton_neo.depth + 12000)
takedamage = 0
mercymod = -999999
sha = 0
shb = 0
ht = 240
wd = 200
con = 0
