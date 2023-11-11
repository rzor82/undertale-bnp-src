if (!do_draw_gui)
{
    shkx = (shaker * choose(1, -1))
    shky = (shaker * choose(1, -1))
    if (shaker > 0)
        shaker -= 1
    draw_set_color(c_black)
    draw_set_alpha(b_al)
    ossafe_fill_rectangle(-1000, -1000, window_get_width(), window_get_height())
    draw_set_alpha(1)
    draw_sprite_ext(spr_barriercut, 0, (x + ((-bx) + shkx)), (y + shky), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_barriercut, 1, (x + (bx + shkx)), (y + shky), 1, 1, 0, c_white, 1)
}
with (obj_borderdrawer)
    border = 3.5
timer += 1
if (timer == 60)
    caster_play(sfx2, 0.8, 0.95)
if (timer >= 60)
{
    if (do_draw_gui && instance_exists(obj_asriel_overworldanim))
    {
        obj_asriel_overworldanim.mc.image_alpha = 0
        obj_asriel_overworldanim.image_alpha = 0
    }
    bx += bxspeed
    bxspeed += 2
}
if (timer <= 110 && timer >= 60 && (!do_draw_gui))
{
    with (obj_borderdrawer)
        alpha = (1 - ((other.timer - 60) / 50))
}
if (timer == 110)
{
    global.msc = 0
    global.typer = 21
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_barriercut_94")
    instance_create(50, 50, OBJ_WRITER)
    with (obj_borderdrawer)
        instance_destroy()
}
if (timer == 310)
{
    if instance_exists(obj_asriel_overworldanim)
    {
        if do_draw_gui
        {
            obj_asriel_overworldanim.mc.image_alpha = 1
            obj_asriel_overworldanim.image_alpha = 1
        }
        obj_asriel_overworldanim.powered = 0
        obj_asriel_overworldanim.con = 20
    }
}
if (timer >= 310)
    b_al -= 0.02
if (timer >= 370)
{
    if do_draw_gui
        display_set_gui_size(-1, -1)
    caster_free(-3)
    instance_destroy()
}
