if (instance_number(obj_soulvision) > 1)
    instance_destroy(id, false)
else
    global.invc = 0
fade = 0
alpha = 0
salpha = 0
halpha = 1
suspend = 0
image_alpha = 0
image_blend = c_white
max_alpha = 0.7
fade_speed = -0.03
hp_speed = 4
hp_y = 500
hp_rectalpha = 0
hp_visiblecap = 420
hp_hiddencap = 500
tmpval = -1
raising = 0
offset = 5
old_allowrun = global.allowrun
draw_override = 0
flicker_state = 0
do_flicker = 1
darken = true
obj = 1584
did_genocide = ossafe_file_exists("system_information_963")
ossafe_ini_open("undertale.ini")
won = ini_read_real("General", "Won", 0)
g = ini_read_real("Flowey", "Met1", 0)
truename = ini_read_real("Flowey", "truename", 0)
IK = ini_read_real("Flowey", "IK", 0)
NK = ini_read_real("Flowey", "NK", 0)
TS = ini_read_real("Toriel", "TS", 0)
TK = ini_read_real("Toriel", "TK", 0)
M1 = ini_read_real("Sans", "M1", 0)
spec = (NK > 0 || IK > 0 || truename > 0)
ossafe_ini_close()
undyne_cutscene = 0
if (instance_exists(obj_undyneencounter1) || instance_exists(obj_undyneencounter2) || instance_exists(obj_undyneencounter3) || instance_exists(obj_undyneencounter4))
{
    undyne_cutscene = 1
    max_alpha = 0.3
}
with (obj_overworldcontroller)
    depth--
shadow_xoffset = -1
shadow_yoffset = 0
offsetx = 0
offsety = 0
offset = 5
active = true
