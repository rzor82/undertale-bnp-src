remx = obj_roomofbog_heart.x
remy = obj_roomofbog_heart.y
bb = sprite_create_from_screen_x(0, 0, 960, 540, false, false, 0, 0)
caster_free(-3)
with (all)
{
    x = -500
    y = -500
}
instance_deactivate_all(true)
instance_activate_object(obj_time)
instance_activate_object(obj_screen)
x = remx
y = remy
drawbb = 1
alarm[0] = 20
image_speed = 0
gmusic = caster_load("music/oogloop.ogg")
dingus = 0
currentvol = 1
con = 0
ll = (global.tloss + 1)
ossafe_ini_open("undertale.ini")
ini_write_real("reset", "X", ll)
ossafe_ini_close()
ossafe_savedata_save()
do_restart = 0
in_fakecrash = 0
force_black_screen = 0
