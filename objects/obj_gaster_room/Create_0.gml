audio_stop_all()
audio_play_sound(mus_smile, 50, true)
ch = choose(0, 1, 2, 3)
global.msc = 0
global.typer = 666
global.msg[0] = scr_gettext("obj_gaster_room_34")
global.msg[1] = scr_gettext("obj_gaster_room_35")
global.msg[2] = scr_gettext("obj_gaster_room_36")
global.msg[3] = scr_gettext("obj_gaster_room_37")
global.msg[4] = scr_gettext("obj_gaster_room_38")
global.msg[5] = scr_gettext("obj_gaster_room_39")
global.msg[6] = scr_gettext("obj_gaster_room_40")
global.msg[7] = scr_gettext("obj_gaster_room_41")
global.msg[8] = scr_gettext("obj_gaster_room_42")
global.msg[9] = scr_gettext("obj_gaster_room_43")
global.msg[10] = ".../"
global.msg[11] = scr_gettext("obj_gaster_room_45")
instance_create(20, 20, OBJ_WRITER)
