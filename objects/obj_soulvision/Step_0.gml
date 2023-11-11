salpha = (alpha / max_alpha)
if instance_exists(obj_powerlaser_event)
{
    if (obj_powerlaser_event.con > 14 && obj_powerlaser_event.con < 22)
    {
        if (obj_powerlaser_event.powered != 0)
            event_user(2)
        else
            event_user(1)
    }
    else if (obj_powerlaser_event.con == 23)
        event_user(2)
}
else if instance_exists(obj_core_laserswitch)
{
    if (obj_core_laserswitch.con == 1)
    {
        if (obj_core_laserswitch.pcon == 42)
            event_user(2)
        else
            event_user(1)
    }
}
else if instance_exists(obj_undyneencounter4)
{
    if (obj_undyneencounter4.con == 16)
        instance_destroy()
}
else if (instance_exists(obj_floweytrigger) && (!did_genocide))
{
    draw_override = 1
    if (obj_floweytrigger.alter || spec)
        instance_destroy()
    else if ((obj_floweytrigger.conversation == 3.5 && g > 0) || (obj_floweytrigger.conversation == 4 && g == 0))
        event_user(2)
}
else if (instance_exists(obj_floweytrigger2) && scr_murderlv() < 2 && (!did_genocide))
{
    if (instance_exists(obj_floweytalker1) && obj_floweytrigger2.conversation > 1 && g < 2 && obj_floweytrigger2.alarm[1] < 1 && obj_floweytrigger2.alarm[2] < 1)
        event_user(1)
    else if (!instance_exists(obj_floweytalker1))
        event_user(2)
}
else if instance_exists(obj_torieltrigger12)
{
    if instance_exists(obj_pbflame)
    {
        alpha = (max_alpha * obj_pbflame.image_alpha)
        salpha = obj_pbflame.image_alpha
        draw_override = 1
        darken = false
    }
    else if (global.flag[45] > 2)
        event_user(2)
}
else if (room == room_basement4 && global.flag[45] == 4)
    event_user(2)
else if ((instance_exists(obj_darksanstrigger) || instance_exists(obj_darksans1)) && M1 == 0)
{
    if (instance_exists(obj_darksans1) && obj_darksans1.conversation > 4)
    {
        with (obj_snowgen)
            wind = 0
        max_alpha = 0.7
        salpha = 0
        alpha = 0
        darken = false
        draw_override = 0
        global.allowrun = old_allowrun
    }
    else
    {
        spook = global.flag[275]
        if instance_exists(obj_darksans1)
            spook += 1
        else
        {
            with (obj_snowgen)
                wind = (-((1 + (other.spook * 2))))
        }
        draw_override = 1
        darken = true
        max_alpha = (0.7 * (spook / 3))
        event_user(1)
    }
}
else if (instance_exists(obj_papyrus8) && (!obj_papyrus8.murder))
{
    darken = false
    draw_override = 1
    if (obj_papyrus8.conversation == 15)
        event_user(1)
    else if (obj_papyrus8.conversation == 18.5)
    {
        alpha = (max_alpha * obj.image_alpha)
        salpha = obj.image_alpha
        global.allowrun = old_allowrun
        fade = 0
    }
}
else if instance_exists(obj_undyne1)
{
    if (obj_undyne1.con == 9)
    {
        event_user(1)
        global.facing = 2
    }
    else if (obj_undyne1.con == 25)
    {
        alpha = (max_alpha * obj_undyne1.undyne.image_alpha)
        salpha = obj_undyne1.undyne.image_alpha
    }
}
else if instance_exists(obj_undyneencounter2)
{
    if obj_undyneencounter2.active
    {
        if (obj_undyneencounter2.cn < 2)
            event_user(1)
        else if (obj_undyneencounter2.cn > 3 && obj_undyneencounter2.cn < 24)
        {
            if (tmpval == -1)
                tmpval = (obj.x - obj_undyneencounter2.undyne.x)
            salpha = (1 - ((obj.x - obj_undyneencounter2.undyne.x) / tmpval))
            alpha = (salpha * max_alpha)
        }
        else
        {
            undyne_cutscene = 0
            event_user(2)
        }
    }
    else
        undyne_cutscene = 0
}
else if (room == room_water_prebird)
{
    if (global.flag[97] == 1)
    {
        var cont = 0
        if (instance_exists(obj_readable_room4) && obj_readable_room4.myinteract == 3 && instance_exists(OBJ_WRITER))
        {
            var num_lines = scr_countwriterlines()
            if (num_lines == 1)
                cont = 1
            else
                cont = (num_lines - 1) == OBJ_WRITER.stringno
        }
        else
            cont = 1
        if cont
        {
            with (obj)
            {
                var ev = 2
                if place_meeting(x, y, obj_tallgrass)
                    ev = 1
                with (other)
                    event_user(ev)
            }
        }
    }
    else
        event_user(2)
}
else if instance_exists(obj_undyne_echoflower)
{
    darken = true
    if (instance_exists(obj_undynea_actor) && tmpval == -1)
        tmpval = (obj_mainchara.x - obj_undynea_actor.x)
    else if (obj_undyne_echoflower.con > 17 && obj_undyne_echoflower.con < 18.4)
    {
        alpha = (1 - ((obj_mainchara.x - obj_undynea_actor.x) / tmpval))
        salpha = (alpha / max_alpha)
    }
    else if (obj_undyne_echoflower.con > 22)
        event_user(2)
}
else if (global.flag[350] == 1 && global.flag[330] > 0)
{
    alpha = global.flag[330]
    salpha = (alpha / max_alpha)
    draw_override = 1
    darken = true
    fade_speed = -0.003
    fade = 1
    if (!instance_exists(obj_borderdrawer))
        instance_create(0, 0, obj_borderdrawer)
    with (obj_borderdrawer)
    {
        alpha = (other.alpha / other.max_alpha)
        global.screen_border_alpha = (1 - alpha)
        active = true
        color = 0
    }
    global.flag[330] += fade_speed
    if (global.flag[330] < 0)
        global.flag[330] = 0
}
else if instance_exists(obj_undynetrigger_boss)
{
    if (obj_undynetrigger_boss.con == 2)
    {
        darken = false
        draw_override = 1
        event_user(1)
    }
    else if (obj_undynetrigger_boss.con == 25 && __view_get(1, 0) >= (obj_undynetrigger_boss.yy - 8))
        event_user(2)
}
else if instance_exists(obj_undynetrigger_boss2)
{
    global.flag[330] = max_alpha
    salpha = (1 - max(0, ((obj_mainchara.y - obj_undynetrigger_boss2.y) / 100)))
    if (obj_undynetrigger_boss2.con == 0)
        draw_override = 1
    else if (obj_undynetrigger_boss2.con == 3)
    {
        obj_undynetrigger_boss2.undyne.depth = (depth - 1)
        obj_undynetrigger_boss2.undyne.x = obj_mainchara.x
        darken = true
        event_user(1)
    }
    else if instance_exists(obj_battler)
    {
        alpha = max_alpha
        salpha = 1
    }
}
else if instance_exists(obj_undynea_chaser)
{
    undyne_cutscene = 1
    draw_override = 1
    darken = true
    with (obj)
        other.salpha = (1 - (4 * (distance_to_object(obj_undynea_chaser) / sqrt((power(room_width, 2) + power(room_height, 2))))))
    alpha = (max_alpha * salpha)
}
else if instance_exists(obj_alphystrigger1)
{
    draw_override = 1
    if (obj_alphystrigger1.con > 26 && obj_alphystrigger1.con < 43)
    {
        with (obj_bouncer)
        {
            if (myobject.object_index == other.obj.object_index && bounce == 0)
            {
                other.salpha = 0.5
                other.alpha = (other.max_alpha / 2)
                with (other)
                    event_user(2)
            }
        }
    }
    else if (obj_alphystrigger1.con == 66)
    {
        obj_alphystrigger1.mett.depth = (depth - 1)
        event_user(1)
    }
    else if (obj_alphystrigger1.con > 69)
        event_user(2)
}
else if instance_exists(obj_artclass_sign)
{
    darken = false
    draw_override = 1
    if (obj_artclass_sign.con == 0)
        event_user(2)
    else if (obj_artclass_sign.con == 2)
        event_user(1)
    else if (obj_artclass_sign.con == 4)
    {
        salpha = 1
        alpha = 0
    }
    else if (obj_artclass_sign.con == 5)
    {
        salpha = 1
        event_user(1)
    }
    else if (obj_artclass_sign.con == 6)
        salpha = 0
    else if (obj_artclass_sign.con == 8)
        salpha = 1
    if (obj_artclass_sign.con > 4 && obj_artclass_sign.con < 9)
        darken = true
}
else if instance_exists(obj_mettnewsevent)
{
    draw_override = 1
    if (!won)
    {
        with (obj_svision_enable_trigger)
            instance_destroy()
        with (obj_svision_disable_trigger)
            instance_destroy()
        if (alpha < max_alpha && obj_mettnewsevent.con >= 132 && obj_mettnewsevent.con < 160)
        {
            darken = false
            event_user(1)
        }
        else if (obj_mettnewsevent.con == 160)
            event_user(2)
        else if (obj_mettnewsevent.con == 165 && obj_mettnewsevent.conner == 1)
        {
            darken = true
            event_user(1)
        }
        else if (obj_mettnewsevent.con == 167)
        {
            salpha = obj_mettnewsevent.mypitch
            alpha = (max_alpha * salpha)
        }
        else if (obj_mettnewsevent.con == 168)
            event_user(2)
    }
    else
        darken = false
}
else if instance_exists(obj_laserswitch1)
{
    if (obj_laserswitch1.con == 0.6)
        event_user(2)
}
else if (instance_exists(obj_spidertalkevent) && (!obj_spidertalkevent.murder))
{
    draw_override = 1
    if (obj_spidertalkevent.con == 18 && tmpval == -1)
    {
        with (obj_spidertalkevent)
            other.tmpval = muffet.depth
    }
    else if (obj_spidertalkevent.con == 19)
    {
        with (obj_spidertalkevent)
        {
            muffet.depth = (other.depth - 1)
            ss1.depth = (other.depth + 1)
            ss2.depth = (other.depth + 1)
            ss3.depth = (other.depth + 1)
            ss4.depth = (other.depth + 1)
        }
        event_user(1)
    }
    else if (obj_spidertalkevent.con == 21)
    {
        with (obj_spidertalkevent)
        {
            ss1.depth = depth
            ss2.depth = depth
            ss3.depth = depth
            ss4.depth = depth
            if instance_exists(obj_transheart)
                muffet.depth = depth
        }
    }
    else if (obj_spidertalkevent.con == 33 || obj_spidertalkevent.con == 23)
    {
        darken = false
        with (obj_spidertalkevent)
        {
            if instance_exists(muffet)
                muffet.depth = other.tmpval
        }
        event_user(2)
    }
    if (alpha > 0)
    {
        if instance_exists(obj_slowdownwalk)
            obj_slowdownwalk.depth = (depth + 1)
        if instance_exists(obj_slowdownwalk_x)
            obj_slowdownwalk_x.depth = (depth + 1)
    }
}
else if (instance_exists(obj_pitsound) && instance_exists(obj_snowgen) && instance_exists(obj_mainchara) && obj_pitsound.murder)
{
    darken = false
    draw_override = 1
    if obj_mainchara.moving
    {
        if (alpha > 0.2)
            alpha -= 0.02
        else
            alpha = 0.2
    }
    else if (alpha > 0.5)
        alpha -= (random_range(0.01, 0.05) * 2)
    else if (alpha < 0.5)
        alpha += (random_range(0.01, 0.05) * 2)
    else
        alpha += (random_range(-0.05, 0.05) * 2)
    salpha = (alpha / max_alpha)
}
else if instance_exists(obj_mettdestroyed_event)
    event_user(2)
else if (instance_exists(obj_mettboss_event) && (!obj_mettboss_event.murder))
{
    darken = false
    draw_override = 1
    if (obj_mettboss_event.con == 5.7 || (obj_mettboss_event.con == 17 && instance_exists(OBJ_WRITER) && OBJ_WRITER.stringno == (scr_countwriterlines() - 1)))
        event_user(1)
    else if (obj_mettboss_event.con > 20)
        event_user(2)
}
else if instance_exists(obj_barrierevent)
{
    if (obj_barrierevent.con == 18 || obj_barrierevent.con == 20)
    {
        with (obj_heartcontainer)
        {
            depth = (other.depth - 1)
            if target
            {
                var center = (room_width / 2)
                with (obj_mainchara)
                    center = (x + (sprite_width / 2))
                x = floor((center - (sprite_width / 2)))
                if instance_exists(obj_battler)
                {
                    if obj_battler.heartdraw
                        image_blend = c_red
                    else
                        image_blend = c_white
                }
            }
            else if instance_exists(obj_battler)
                depth = 0
        }
        event_user(1)
    }
}
else if instance_exists(obj_savepoint_fake)
{
    if (obj_savepoint_fake.con == 41 && instance_exists(OBJ_WRITER) && OBJ_WRITER.stringno == (scr_countwriterlines() - 1))
        event_user(1)
}
else if instance_exists(obj_darksink)
{
    darken = false
    draw_override = 1
    var do_fade = 0
    with (obj_darksink)
    {
        if (acon > 0)
            do_fade = 1
    }
    if do_fade
        event_user(1)
    else
        event_user(2)
}
else if instance_exists(obj_bed_watcher)
{
    if (obj_bed_watcher.con == 0)
    {
        salpha = 0
        alpha = 0
    }
    else if (obj_bed_watcher.con == 10 && tmpval == -1)
        tmpval = (obj_bed_watcher.x - 20)
    if (obj_bed_watcher.con >= 12 && obj_bed_watcher.con <= 13.1)
    {
        darken = true
        salpha = ((-((1 - (((obj_bed_watcher.x - 20) + obj_bed_watcher.limbx) / tmpval)))) * 4.5)
        alpha = (max_alpha * salpha)
    }
    else if (obj_bed_watcher.con == 14)
        salpha = ((20 - obj_bed_watcher.limby) / 20)
    else if (obj_bed_watcher.con >= 30)
        event_user(2)
    if (obj_bed_watcher.con > 14)
        salpha = 0
}
else if instance_exists(obj_showercurtain)
{
    if (obj_showercurtain.mode == 0)
    {
        if obj_time.up
            global.allowrun = 0
        else
            global.allowrun = old_allowrun
        alpha = min(max_alpha, (max_alpha * (obj_showercurtain.animspeed * 1.5)))
    }
    else
        event_user(2)
}
else if instance_exists(obj_amalgam_dogevent)
{
    darken = false
    draw_override = 1
    if (obj_amalgam_dogevent.con == 10)
    {
        with (obj_mainchara)
            other.salpha = (1 - (distance_to_object(obj_amalgam_dogevent) / 200))
    }
}
else if instance_exists(obj_amalgam_save)
{
    if (obj_amalgam_save.con == 4)
    {
        obj_amalgam_save.depth = (depth - 1)
        event_user(1)
    }
    else if (obj_amalgam_save.con == 7)
    {
        obj_amalgam_save.visible = false
        event_user(2)
    }
    if (obj_amalgam_save.con > 0)
    {
        with (obj_mainchara)
        {
            if (distance_to_object(obj_amalgam_save) < 25)
            {
                x += 3
                image_speed = -0.2
            }
            else
                image_speed = 0
        }
    }
}
else if instance_exists(obj_amalgam_fridge)
{
    darken = false
    draw_override = 1
    if (obj_amalgam_fridge.con == 4)
        event_user(1)
    else if (obj_amalgam_fridge.con == 9)
        event_user(2)
}
else if instance_exists(obj_amalgam_exc)
{
    if (obj_amalgam_exc.con == 0.9)
    {
        obj_amalgam_exc.depth = (depth - 1)
        max_alpha = 0.5
        event_user(1)
    }
    else if (obj_amalgam_exc.con == 7)
    {
        obj_amalgam_exc.visible = false
        event_user(2)
    }
}
else if instance_exists(obj_lab_powerswitch)
{
    if (obj_lab_powerswitch.con == 6 && tmpval == -1)
        tmpval = (280 - obj.y)
    else if (obj_lab_powerswitch.con == 8)
    {
        salpha = ((280 - obj_lab_powerswitch.am[0].y) / tmpval)
        alpha = (max_alpha * salpha)
        for (i = 0; i < 4; i++)
            obj_lab_powerswitch.am[i].depth = (depth - 1)
    }
    else
        event_user(2)
}
else if (instance_exists(obj_lastsans_trigger) && (!did_genocide))
{
    if (obj_lastsans_trigger.con == 111 && obj_lastsans_trigger.sansf > 0 && instance_exists(OBJ_WRITER) && OBJ_WRITER.stringno == (scr_countwriterlines() - 1))
        event_user(1)
    else if (obj_lastsans_trigger.con == 112)
        event_user(2)
}
if (instance_exists(obj_labfog) && room < room_fire_hland_entrance)
{
    if (obj_labfog.image_alpha > 0.3)
    {
        darken = false
        draw_override = 1
        salpha = obj_labfog.image_alpha
        alpha = (max_alpha * salpha)
    }
    else if ((!instance_exists(obj_amalgam_dogevent)) && (!instance_exists(obj_amalgam_exc)) && (!instance_exists(obj_bed_watcher)) && (!instance_exists(obj_darksink)) && (!instance_exists(obj_amalgam_fridge)))
        event_user(2)
}
if (instance_exists(obj_floweybattler2) && obj_floweybattler2.clap >= obj_floweybattler2.claptimer)
    instance_destroy()
if instance_exists(obj_transheart)
{
    with (obj_heartcontainer)
    {
        if target
        {
            with (obj_transheart)
                other.image_alpha = (point_distance(x, y, mychoicex, mychoicey) / point_distance(xstart, ystart, mychoicex, mychoicey))
            image_blend = merge_color(c_white, c_red, max(0, ((image_alpha * 2) - 1)))
        }
        else
            depth = 0
    }
    darken = false
    draw_override = 0
}
if (fade == 1 && ((fade_speed > 0 && alpha < max_alpha) || (fade_speed < 0 && alpha > 0)))
{
    alpha += fade_speed
    if (fade_speed < 0)
    {
        raising = 0
        global.allowrun = old_allowrun
        if (alarm[0] > 0)
            alarm[0] = -1
    }
    else
        global.allowrun = 0
}
else
    fade = 0
if (raising && hp_y > hp_visiblecap)
    hp_y -= hp_speed
else if ((!raising) && hp_y < hp_hiddencap)
    hp_y += hp_speed
if (alpha < 0)
    alpha = 0
else if (alpha > max_alpha)
    alpha = max_alpha
