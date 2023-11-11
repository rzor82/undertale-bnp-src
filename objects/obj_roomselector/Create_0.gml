valid_chars = "abcdefghijklmnopqrstuvwxyz_0123456789"
suggestions = ds_list_create()
dest_room = room_get_name(room)
num_suggestions = 0
case_sensitive = 1
max_selection = 0
update_cursor = 1
cursor_timer = 30
show_cursor = 1
selection = 0
update = 1
len = 0
for (i = room_first; i <= room_last; i++)
{
    if room_exists(i)
        room_names[i] = (((room_get_name(i) + " (") + string(i)) + ")")
    else
        room_names[i] = -4
}
ss_width = surface_get_width(application_surface)
ss_height = surface_get_height(application_surface)
ss = sprite_create_from_surface(application_surface, 0, 0, ss_width, ss_height, false, false, 0, 0)
scale = min((window_get_width() / ss_width), (window_get_height() / ss_height))
instance_deactivate_all(true)
hh = (ss_height * scale)
ww = (ss_width * scale)
keyboard_lastchar = ""
display_set_gui_size(ww, hh)
keyboard_clear(vk_escape)
keyboard_clear(vk_f3)
global.interact = 1
image_alpha = 0
exiting = 0
xx = 0
yy = 0
