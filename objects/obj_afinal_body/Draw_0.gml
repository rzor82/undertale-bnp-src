anim += 1
siner += 1
side += 2
if (side > 800)
    side -= 800
yoff = sin((siner / 4))
yoff2 = sin((siner / 16))
draw_set_color(c_black)
ossafe_fill_rectangle(-10, 240, 999, -10)
thiscolor = make_color_hsv((siner * 6), 200, 200)
w = (sprite_get_width(spr_afinal_cosmoswing) * 2)
h = (sprite_get_height(spr_afinal_cosmoswing) * 2)
draw_set_color(thiscolor)
draw_sprite_part_ext(spr_asrielbg, 0, side, 0, w, h, (x - 44), ((y - 52) + (yoff2 * 4)), -1, 1, thiscolor, 0.5)
draw_sprite_part_ext(spr_asrielbg, 0, (side + 60), 0, w, h, (x - 44), ((y - 52) + (yoff2 * 4)), -1, 1, thiscolor, 0.5)
draw_sprite_part_ext(spr_asrielbg, 0, (side + 120), 0, w, h, (x - 44), ((y - 52) + (yoff2 * 4)), -1, 1, thiscolor, 0.5)
draw_set_color(thiscolor)
draw_sprite_part_ext(spr_asrielbg, 0, side, 0, w, h, (x + 42), ((y - 52) + (yoff2 * 4)), 1, 1, thiscolor, 0.5)
draw_sprite_part_ext(spr_asrielbg, 0, (side + 60), 0, w, h, (x + 42), ((y - 52) + (yoff2 * 4)), 1, 1, thiscolor, 0.5)
draw_sprite_part_ext(spr_asrielbg, 0, (side + 120), 0, w, h, (x + 42), ((y - 52) + (yoff2 * 4)), 1, 1, thiscolor, 0.5)
draw_sprite_ext(spr_afinal_cosmoswing, floor((anim / 6)), (x + 42), ((y - 52) + (yoff2 * 4)), 2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_cosmoswing, floor((anim / 6)), (x - 44), ((y - 52) + (yoff2 * 4)), -2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_orbwing, floor((anim / 6)), (x - 110), (y - 52), 2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_orbwing, floor((anim / 6)), (x + 108), (y - 52), -2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_stem, floor((anim / 6)), (x - 2), (y + 146), 2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_orb, floor((anim / 6)), (x - 2), (y + 68), 2, 2, 0, image_blend, image_alpha)
rx = (random(ar_shake) - random(ar_shake))
ry = (random(ar_shake) - random(ar_shake))
ry *= 1.5
rx *= 0.7
draw_set_alpha(bodyfader)
draw_set_color(c_black)
if instance_exists(obj_expander)
{
    with (obj_expander)
        ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
}
else
    ossafe_fill_rectangle(-10, -10, 999, 999)
draw_set_alpha(1)
if (cry == 0)
    draw_sprite_ext(spr_afinal_face, global.faceemotion, x, y, 2, 2, 0, image_blend, image_alpha)
if (cry == 1)
    draw_sprite_ext(spr_afinal_face_cry, floor((siner / 8)), (x + (rx / 3)), (y + (ry / 3)), 2, 2, 0, image_blend, image_alpha)
if (cry == 2)
    draw_sprite_ext(spr_afinal_face_cry2, floor((siner / 2)), (x + (rx / 3)), (y + (ry / 3)), 2, 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_afinal_arm, floor((anim / 6)), ((x - 58) + rx), (((y + 56) + (yoff * 2)) + ry), 2, 2, armrot, image_blend, (image_alpha - bodyfader))
draw_sprite_ext(spr_afinal_arm, floor((anim / 6)), ((x + 56) + rx), (((y + 56) + (yoff * 2)) + ry), -2, 2, (-armrot), image_blend, (image_alpha - bodyfader))
draw_sprite_ext(spr_afinal_shoulder, floor((anim / 6)), (x - 84), (y + 32), 2, 2, 0, image_blend, (image_alpha - bodyfader))
draw_sprite_ext(spr_afinal_shoulder, floor((anim / 6)), (x + 82), (y + 32), -2, 2, 0, image_blend, (image_alpha - bodyfader))
if (ucon > 0)
{
    if (ucon == 1)
    {
        caster_play(psfx, 0.7, 1.2)
        arf = 30
        ucon = 2
    }
    if (ucon == 2)
    {
        armrot += arf
        arf -= 2
        if (arf <= 0)
        {
            ucon = 3
            alarm[10] = 5
        }
    }
    if (ucon == 4)
    {
        gen = instance_create(x, y, obj_ultimagen)
        gen.type = u_gen
        if (instance_exists(obj_ultimatarget) == 0)
            target = instance_create(obj_heart.x, obj_heart.y, obj_ultimatarget)
        ucon = 5
        alarm[10] = 140
        if (gen.type == 2)
            alarm[10] = 65
        arf = -30
    }
    if (ucon == 5 && u_gen == 2)
    {
        if (alarm[10] == 30)
        {
            alarm[8] = 30
            ccon = 3
        }
    }
    if (ucon == 6)
    {
        with (gen)
            instance_destroy()
        if (u_gen != 2)
        {
            armrot += arf
            arf += 2
            if (arf >= 0)
            {
                ucon = 0
                global.mnfight = 3
            }
        }
        else
            ucon = 0
    }
}
if (instance_exists(obj_ultimabullet) == 0)
{
    if (instance_exists(obj_ultimatarget) == 0)
    {
        with (obj_ultimatarget)
            instance_destroy()
    }
}
if (bcon > 0)
{
    if (bcon == 1)
    {
        ps = 0
        alarm[9] = 7
        r_break = 0
        r_al = 1
        radi = 0
        r_siner = 0
        arf = 30
        bcon = 2
    }
    if (bcon == 2)
    {
        armrot -= arf
        arf -= 5
        if (arf <= 0)
        {
            bcon = 3
            alarm[11] = 35
        }
    }
    if (bcon == 4)
    {
        bcon = 4.1
        alarm[11] = 2
    }
    if (bcon == 4.1)
        armrot -= 5
    if (bcon == 5.1)
    {
        bcon = 5
        alarm[11] = 5
    }
    if (bcon == 5)
    {
        ar_shake = 0
        armrot += 26
    }
    if (bcon == 6)
    {
        cry = 2
        ar_shake = 5
        armx = lengthdir_x(150, ((-armrot) - 90))
        army = lengthdir_y(150, ((-armrot) - 90))
        beam = instance_create(320, (((y + 56) + army) - 20), obj_lastbeam)
        bcon = 7
        alarm[11] = 400
    }
    if (bcon < 7 && r_al > 0)
    {
        ar_shake += 0.2
        if (radi < 60)
            radi += 1.5
        r_siner += 1
        radi_s = (sin((r_siner / 2)) * (radi / 8))
        armx = lengthdir_x(150, ((-armrot) - 90))
        army = lengthdir_y(150, ((-armrot) - 90))
        if (r_break == 1)
        {
            radi -= 6
            r_al -= 0.1
            if (r_al <= 0)
                r_al = 0
        }
        draw_set_alpha(r_al)
        draw_set_color(c_white)
        draw_circle(((x + 56) + armx), ((y + 56) + army), (radi + radi_s), 1)
        draw_circle(((x + 56) + armx), ((y + 56) + army), ((radi + radi_s) - 1), 1)
        draw_sprite_ext(spr_beamcircle, 0, ((x + 56) + armx), ((y + 56) + army), (2 * ((radi + radi_s) / 40)), (2 * ((radi + radi_s) / 40)), 0, c_white, r_al)
        draw_circle(((x - 58) - armx), ((y + 56) + army), (radi + radi_s), 1)
        draw_circle(((x - 58) - armx), ((y + 56) + army), ((radi + radi_s) - 1), 1)
        draw_sprite_ext(spr_beamcircle, 0, ((x - 58) - armx), ((y + 56) + army), (2 * ((radi + radi_s) / 40)), (2 * ((radi + radi_s) / 40)), 0, c_white, r_al)
        draw_set_alpha(1)
    }
    if (bcon == 8)
    {
        cry = 0
        global.faceemotion = 5
        if (ar_shake > 0)
            ar_shake -= 1
        if (armrot > 0)
            armrot -= 2
        else
            armrot = 0
        if (ar_shake <= 0)
        {
            ar_shake = 0
            bcon = 0
            global.mnfight = 3
        }
    }
}
if (ccon > 0)
{
    if (ccon == 1)
    {
        caster_play(psfx, 0.7, 1.2)
        arf = 30
        ccon = 2
    }
    if (ccon == 2)
    {
        armrot += arf
        arf -= 2
        if (arf <= 0)
        {
            ccon = 3
            alarm[8] = 15
        }
    }
    if (ccon == 3)
    {
        armx = lengthdir_x(150, ((-armrot) - 90))
        army = lengthdir_y(150, ((-armrot) - 90))
        bgen = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
        bgen.typecol = 16754964
        bgen.angle = 0
        bgen.type = c_gen
        bgen2 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
        bgen2.typecol = 16754964
        bgen2.angle = 90
        bgen2.type = c_gen
        bgen3 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
        bgen3.typecol = 16754964
        bgen3.angle = 180
        bgen3.type = c_gen
        bgen4 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
        bgen4.typecol = 16754964
        bgen4.angle = 270
        bgen4.type = c_gen
        ogen = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
        ogen.typecol = 4235519
        ogen.angle = 0
        ogen.type = c_gen
        ogen2 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
        ogen2.typecol = 4235519
        ogen2.angle = 90
        ogen2.type = c_gen
        ogen3 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
        ogen3.typecol = 4235519
        ogen3.angle = 180
        ogen3.type = c_gen
        ogen4 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
        ogen4.typecol = 4235519
        ogen4.angle = 270
        ogen4.type = c_gen
        if (c_gen >= 1)
        {
            bgen5 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
            bgen5.typecol = 16754964
            bgen5.angle = 45
            bgen5.type = c_gen
            bgen6 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
            bgen6.typecol = 16754964
            bgen6.angle = 135
            bgen6.type = c_gen
            bgen7 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
            bgen7.typecol = 16754964
            bgen7.angle = 225
            bgen7.type = c_gen
            bgen8 = instance_create(((x + 56) + armx), ((y + 56) + army), obj_crossthunder)
            bgen8.typecol = 16754964
            bgen8.angle = 315
            bgen8.type = c_gen
            ogen5 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
            ogen5.typecol = 4235519
            ogen5.angle = 45
            ogen5.type = c_gen
            ogen6 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
            ogen6.typecol = 4235519
            ogen6.angle = 135
            ogen6.type = c_gen
            ogen7 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
            ogen7.typecol = 4235519
            ogen7.angle = 225
            ogen7.type = c_gen
            ogen8 = instance_create(((x - 58) - armx), ((y + 56) + army), obj_crossthunder)
            ogen8.typecol = 4235519
            ogen8.angle = 315
            ogen8.type = c_gen
        }
        with (obj_crossthunder)
        {
            rot_speed = rot_speed_max
            decay_timer = 30
        }
        ccon = 4
    }
    if (ccon == 4)
    {
        armx = lengthdir_x(150, ((-armrot) - 90))
        army = lengthdir_y(150, ((-armrot) - 90))
        draw_set_alpha(((alarm[8] % 2) ? 1 : 0.2))
        draw_set_color(c_white)
        draw_circle(((x - 58) - armx), ((y + 56) + army), 25, 0)
        draw_circle(((x + 56) + armx), ((y + 56) + army), 25, 0)
        if (alarm[8] % 2)
        {
            snd_stop(snd_noise)
            snd_play(snd_noise)
            snd_play(snd_noise)
            snd_play(snd_noise)
        }
    }
    if (ccon == 5)
    {
        caster_play(sfx_l, 0.8, 1.1)
        caster_play(sfx_l2, 1, 1)
        with (obj_crossthunder)
            active = true
        ccon = 6
        alarm[8] = 150
        if (c_gen >= 1)
            alarm[8] = 100
        arf = -30
    }
    if (ccon == 7)
    {
        with (obj_crossthunder)
            instance_destroy()
        ccon = 8
    }
    if (ccon == 8)
    {
        armrot += arf
        arf += 2
        if (arf >= 0)
        {
            ccon = 0
            global.mnfight = 3
        }
    }
}
if (global.debug == true)
{
}
if (darker == 1)
{
    if (darker_x < 1)
        darker_x += 0.04
    draw_set_alpha(darker_x)
    draw_set_color(c_black)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
