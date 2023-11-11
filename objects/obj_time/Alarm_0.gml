event_user(0)
alarm[0] = 1
if (global.screen_border_id == 0 && window_get_height() != 960)
{
    if (display_get_height() > 1079)
        window_set_size(1280, 960)
    else
        window_set_size(640, 480)
    alarm[2] = 3
}
else if (global.screen_border_id != 0 && window_get_height() != 540)
{
    window_set_size(960, 540)
    alarm[2] = 3
}
