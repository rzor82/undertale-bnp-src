global.flag[7] = 1
global.interact = 1
ossafe_ini_open("undertale.ini")
G7 = ini_read_real("TalkedToAsriel", "SeeYou", 0)
ossafe_ini_close()
instance_create(0, 0, obj_borderdrawer)
thisblend = merge_color(c_black, c_orange, 0.2)
obj_readablesolid.image_blend = thisblend
obj_readablesolid.direction = 90
obj_readablesolid.image_speed = 0
obj_readablesolid.fun = true
obj_mainchara.visible = false
mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharau)
mc.depth = obj_mainchara.depth
mc.image_blend = thisblend
con = 1
blk = 2.3
altblk = -1.3
pap = obj_papyrus_friendc
tor = obj_toriel_friendc
asg = obj_asgore_friendc
und = obj_undyne_friendc
sans = obj_sans_friendc
al = obj_alphys_friendc
pap.sprite_index = spr_papyrus_u
tor.sprite_index = spr_toriel_u
asg.sprite_index = spr_asgore_u
al.sprite_index = spr_alphys_u
sans.sprite_index = spr_sans_u
und.sprite_index = spr_undyne_u
global.currentsong = caster_load("music/leave.ogg")
do_room_goto = false
stayedwithher = 0
if (global.debug == true)
    G7 = 1
