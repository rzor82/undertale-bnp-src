if (instance_number(object_index) > 1)
{
    instance_destroy()
    return;
}
initial_dist = -1
image_alpha = 0
destx = -1
desty = -1
con = 0
z_count = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
svision_alpha = 0
svision_draw = 0
debug_draw = 0
heart_sprite = 46
do_rot = 0
do_ss_draw = 1
overworld = (room != room_battle && room != room_floweyx)
toriel = (instance_exists(obj_torielboss) || global.battlegroup == 22)
asgore = (instance_exists(obj_asgoreb) || global.battlegroup == 101 || global.battlegroup == 100)
flowey = room == room_floweyx
ss_scale = (overworld ? 0.5 : 1)
look_up_count = 10
collapse_time = 120
shake_time = 81
if flowey
{
    sprite_index = spr_f_mainchara_die
    target_obj = obj_vsflowey_heartdefeated
    with (target_obj)
    {
        alarm[0] = -1
        visible = false
    }
}
else
{
    sprite_index = spr_mainchara_die
    target_obj = obj_heartdefeated
    if (global.flag[500] == 1)
    {
        look_up_count = 6
        sprite_index = spr_mainchara_die_refuse
        if (global.flag[502] > 0)
        {
            collapse_time = 40
            shake_time = 20
        }
    }
}
ossafe_ini_open("undertale.ini")
if flowey
    deaths = ini_read_real("FFFFFF", "D", 0)
else
    deaths = ini_read_real("General", "Gameover", 0)
skip = deaths > 3
if (global.flag[500] == 1)
    skip = global.flag[502] > false
ossafe_ini_close()
ss = -4
w = surface_get_width(application_surface)
h = surface_get_height(application_surface)
spot_w = (sprite_get_width(spr_lightspot) * image_xscale)
spot_h = (sprite_get_height(spr_lightspot) * image_yscale)
beam_w = (sprite_get_width(spr_mainchara_die_light) * image_xscale)
beam_h = (sprite_get_height(spr_mainchara_die_light) * image_yscale)
