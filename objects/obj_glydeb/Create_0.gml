scr_monstersetup()
image_speed = 0
main_loop = 0
part1 = obj_glyde_body
mypart1 = instance_create((x + 72), (y + 24), part1)
alarm[9] = 8
hurtanim = 0
instance_create(0, 0, obj_expander)
hurtsound = snd_hurtbeef
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -50
sha = 0
shb = 0
ht = 200
wd = 240
applaud = 0
nothing = 0
boo = 0
with (obj_battlebg)
    instance_destroy()
instance_create(0, 0, obj_eb_backgrounder)
