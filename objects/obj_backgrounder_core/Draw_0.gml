draw_set_color(0x110F15)
ossafe_fill_rectangle(-10, -10, 2000, 500)
if (room != room_fire_coreview2)
    scr_waver_height_bg(1, 6)
else
    scr_waver_height_bg(1, 0)
if (room == room_fire_savepoint1 && (obj_time.time % 45) > 21 && scr_murderlv() >= 12)
    draw_rectangle((x + 130), (y + 23), (x + 146), (y + 31), false)
