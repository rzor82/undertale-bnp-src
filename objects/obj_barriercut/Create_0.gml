shaken = 0
bx = 0
bx2 = 0
bxspeed = 4
timer = 0
image_speed = 0
shaker = 10
b_al = 1
sfx1 = caster_load("music/sfx/sfx_abreak.ogg")
sfx2 = caster_load("music/sfx/sfx_abreak2.ogg")
caster_play(sfx1, 0.8, 0.95)
do_draw_gui = 0
if do_draw_gui
    display_set_gui_size(window_get_width(), window_get_height())
