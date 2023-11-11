if (global.facechoice != 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (global.facechoice == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (global.faceemotion == 0)
    face = spr_papyrushead_normal
if (global.faceemotion == 1)
    face = spr_papyrushead_mad
if (global.faceemotion == 2)
    face = spr_papyrushead_blush
if (global.faceemotion == 3)
    face = spr_papyrushead_side
if (global.faceemotion == 4)
    face = spr_papyrushead_sweaty
if (global.faceemotion == 5)
    face = spr_papyrushead_sad
if (global.faceemotion == 6)
    face = spr_papyrushead_hurt
if (global.faceemotion == 7)
    face = spr_papyrushead_confident
if (global.faceemotion == 8)
    face = spr_papyrushead_sly
if (global.faceemotion == 9)
    face = spr_papyrushead_anime
if (!thinking)
    draw_sprite_ext(face, face_index, (x + 34), y, 2, 2, 0, c_white, 1)
if (global.facechoice == 0)
    sprite_index = spr_papdate
if (global.facechoice == 1)
    sprite_index = spr_papdate_cool
if (global.facechoice == 2)
    sprite_index = spr_papdate_coy
if (global.facechoice == 3)
{
    draw_sprite_ext(spr_papdate_arms, 1, x, y, 2, 2, 0, c_white, 1)
    sprite_index = spr_papdate_omg
}
if (global.facechoice == 4)
{
    draw_sprite_ext(spr_papdate_arms, 0, x, y, 2, 2, 0, c_white, 1)
    sprite_index = spr_papdate_bookread
}
if (global.facechoice == 5)
    sprite_index = spr_papdate_bookhold
if thinking
{
    sprite_index = spr_papyrusboss_confuse
    image_speed = 0.25
}
face_index += face_speed
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt == false)
        face_speed = 0.25
    else
    {
        face_index = 0
        face_speed = 0
    }
}
else
{
    face_index = 0
    face_speed = 0
}
if (global.faceemotion == 8)
    face_speed = 0.13
if (global.faceemotion == 7)
    face_speed = 0.29
draw_set_color(c_white)
if (global.facechoice == 1)
{
    draw_sprite_ext(spr_papdate_spaghetti, present, (x + 38), (y - 12), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_papdate_coolhat, image_index, (x + 36), ((y + haty) - 12), 2, 2, 0, c_white, 1)
}
if (choicer == 1)
{
    if (choice == 0)
        draw_sprite(spr_heart, 0, (global.idealborder[0] + 40), (global.idealborder[2] + 60))
    if (choice == 1)
        draw_sprite(spr_heart, 0, (global.idealborder[0] + 300), (global.idealborder[2] + 60))
    if (keyboard_check_pressed(global.keybind[2]) || keyboard_check_pressed(global.keybind[0]))
    {
        if (choice == 0)
            choice = 1
        else
            choice = 0
        snd_play(snd_squeak)
    }
    if control_check_pressed(0)
        choicer = 2
}
