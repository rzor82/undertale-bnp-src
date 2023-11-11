scr_monstersetup()
global.specialspare = 1
image_speed = 0
instance_create(0, 0, obj_expander)
instance_create(0, 0, obj_roundedge)
part1 = obj_asriel_body
mypart1 = instance_create(x, y, obj_asriel_body)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -99999999999999
sha = 0
shb = 0
ossafe_ini_open("undertale.ini")
M1 = ini_read_real("BecameAsriel", "YesHeDid", 0)
ini_write_real("BecameAsriel", "YesHeDid", (M1 + 1))
ossafe_ini_close()
ossafe_savedata_save()
image_xscale = 2
image_yscale = 2
turns = 0
global.flag[500] = 1
global.seriousbattle = 1
global.hope = 0
hoped = 0
dreamed = 0
say = 0
global.flag[20] = 0
turns = (global.flag[504] - 3)
if (turns < 0)
    turns = 0
trcon = 0
ht = 200
wd = 100
