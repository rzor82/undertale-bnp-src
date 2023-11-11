if (dcon == 1)
    dcon = 3
if (dcon == 3)
{
    dcon = 4
    h_alpha = 0
    heart = instance_create(0, 0, obj_roomofbog_heart)
    heart.x = ((room_width / 2) - (heart.sprite_width / 2))
    heart.y = (((room_height / 2) - (heart.sprite_height / 2)) + 220)
    heart.image_alpha = 0
    alarm[4] = 1
}
if (dcon == 5)
{
    h_alpha += 0.1
    heart.image_alpha = h_alpha
    if (h_alpha >= 1)
        dcon = 6
}
if (dcon == 6)
{
    if obj_time.right
        dcon = 10
    if obj_time.up
        dcon = 10
    if obj_time.down
        dcon = 10
    if obj_time.left
        dcon = 10
}
if (dcon == 10)
{
    global.tobyglitchfx = 1
    bganimer = 1
    display_binfo = 1
    dcon = 11
    n_alpha = 1
    image_speed = 0
    caster_free(thissong)
    noise2 = caster_loop(noise, 1, 1)
    audio_sound_gain(mus_f_noise, 0.9, 1)
    alarm[4] = 1
}
if (dcon == 12)
{
    n_alpha -= 0.05
    caster_set_volume(noise2, n_alpha)
    if (n_alpha <= 0.15)
    {
        n_alpha = 0.15
        dcon = 13
        alarm[4] = 120
    }
}
n_index += 1
if (global.debug == true)
{
    if keyboard_check_pressed(vk_delete)
    {
        if (global.dinv < 0)
        {
            global.dinv = 20
            hitted = 0
            snd_play(snd_hurt1_c)
            instance_create(0, 0, obj_vsflowey_shaker)
            global.tobyshake = 8
            if (hitted == 0)
            {
                global.dhp -= floor(clamp((global.dhp / 2.5), 1, 999999))
                hitted = 1
            }
        }
    }
}
event_user(0)
