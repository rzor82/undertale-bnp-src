image_xscale = 2
image_yscale = 2
if (global.faceemotion == 12 || global.faceemotion == "C")
    sprite_index = spr_toriel_bodyonly_laugh
else
{
    sprite_index = spr_toriel_bodyonly
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
if (shock == 1)
    draw_sprite_ext(spr_face_torieldie, 0, (x + 34), (y - 64), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (shock == 0)
{
    add = 0
    facespr = spr_face_torielb_1
    if (global.faceemotion == 0)
        facespr = spr_face_torielb_1
    if (global.faceemotion == 1)
        facespr = spr_face_torielb_2
    if (global.faceemotion == 2)
        facespr = spr_face_torielb_3
    if (global.faceemotion == 3)
        facespr = spr_face_torielb_4
    if (global.faceemotion == 4)
        facespr = spr_face_torielb_5
    if (global.faceemotion == 5)
        facespr = spr_face_torielb_6
    if (global.faceemotion == 6)
        facespr = spr_face_torielhappy_left
    if (global.faceemotion == 7)
        facespr = spr_face_torielhappy_2
    if (global.faceemotion == 9)
        facespr = spr_face_torielhappy_down
    if (global.faceemotion == 10 || global.faceemotion == "A")
        facespr = spr_face_torielsigh
    if (global.faceemotion == 11 || global.faceemotion == "B")
        facespr = spr_face_toriel_noasgore
    if (global.faceemotion == 12 || global.faceemotion == "C")
    {
        faceindex += 0.25
        facespr = spr_face_toriel_laughleft
        add = 2
    }
    else
        faceindex = 0
    if (global.faceemotion == 13 || global.faceemotion == "D")
        facespr = spr_face_torielup
    if (global.faceemotion == 14 || global.faceemotion == "E")
        facespr = spr_face_torielhappy_right
    if (global.faceemotion == 15 || global.faceemotion == "F")
        facespr = spr_face_toriel_noface
    if (global.faceemotion == 16 || global.faceemotion == "G")
        facespr = spr_face_torieldreamworks
    if (global.faceemotion == 17 || global.faceemotion == "H")
        facespr = spr_face_torieldonot
    draw_sprite_ext(facespr, faceindex, (x + 34), ((y - 64) + add), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
if (global.faceemotion == 12 || global.faceemotion == "C")
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
