global.msg[0] = scr_gettext("obj_questionasker_119")
if (correct != answer)
{
    with (obj_quizstage)
        event_user(2)
    obj_mettatonb_quiz.right = 1
    instance_create((obj_mettatonb_body.x + 94), (obj_mettatonb_body.y - 60), obj_shockermaker)
    snd_play(snd_shock)
    obj_heart.movement = 99
    alarm[5] = 40
    if (q == 1)
        global.msg[0] = scr_gettext("obj_questionasker_130")
    if (q == 2)
        global.msg[0] = scr_gettext("obj_questionasker_132")
    if (q == 3)
        global.msg[0] = scr_gettext("obj_questionasker_134")
    if (q == 4)
        global.msg[0] = scr_gettext("obj_questionasker_136")
    if (q == 5)
        global.msg[0] = scr_gettext("obj_questionasker_138")
    if (q == 6)
        global.msg[0] = scr_gettext("obj_questionasker_140")
    if (q == 7)
        global.msg[0] = scr_gettext("obj_questionasker_142")
    if (q == 8)
        global.msg[0] = scr_gettext("obj_questionasker_144")
}
if (correct == answer)
{
    with (obj_quizstage)
        event_user(1)
    if (q == 1)
        global.msg[0] = scr_gettext("obj_questionasker_151")
    if (q == 2)
        global.msg[0] = scr_gettext("obj_questionasker_153")
    if (q == 3)
        global.msg[0] = scr_gettext("obj_questionasker_155")
    if (q == 4)
        global.msg[0] = scr_gettext("obj_questionasker_157")
    if (q == 5)
        global.msg[0] = scr_gettext("obj_questionasker_159")
    if (q == 6)
        global.msg[0] = scr_gettext("obj_questionasker_161")
    if (q == 7)
        global.msg[0] = scr_gettext("obj_questionasker_163")
    if (q == 8)
        global.msg[0] = scr_gettext("obj_questionasker_165")
}
if (q != 6)
    scr_blcon_x((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 100))
else
{
    scr_blcon_x((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 170))
    with (blcon)
    {
        y += (sprite_height - 20)
        image_yscale *= -1
    }
}
global.msg[0] = scr_gettext("obj_questionasker_176")
