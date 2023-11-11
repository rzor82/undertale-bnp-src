instance_activate_object(obj_vsflowey_heartdefeated)
if (instance_number(object_index) > 1)
{
    instance_destroy()
    return;
}
remx = obj_vsflowey_heart.x
remy = obj_vsflowey_heart.y
with (obj_flowey_writer)
    instance_destroy()
with (obj_vsflowey_heart)
    visible = false
with (obj_vsflowey_shaker)
    instance_destroy()
alarm[0] = 20
instance_create(0, 0, obj_gameover_anim)
with (all)
{
    x = -500
    y = -500
}
instance_deactivate_all(true)
instance_activate_object(obj_time)
instance_activate_object(obj_gameover_anim)
x = remx
y = remy
image_speed = 0
gmusic = caster_load("music/gameover.ogg")
dingus = 0
currentvol = 1
con = 0
ll = (global.floss + 1)
ossafe_ini_open("undertale.ini")
ini_write_real("FFFFF", "D", ll)
ossafe_ini_close()
ossafe_savedata_save()
do_restart = 0
in_fakecrash = 0
force_black_screen = 0
