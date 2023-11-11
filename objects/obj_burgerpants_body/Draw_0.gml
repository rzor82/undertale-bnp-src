sprite_index = (altfacevar == 0 ? spr_bpants_face : spr_bpants_face2)
image_index = global.faceemotion
var rr1 = (random(0.6) - random(0.6))
var rr2 = (random(0.6) - random(0.6))
siner++
switch global.faceemotion
{
    case 2:
        draw_sprite(sprite_index, image_index, x, (y + (sin(siner) * 1)))
        break
    case 3:
        draw_sprite(spr_bpants_arms, 0, ((x - 20) + (rr1 * 1.1)), (y + (rr2 * 1.1)))
        draw_sprite(sprite_index, image_index, x, y)
        break
    case 6:
        draw_sprite(sprite_index, image_index, x, y)
        draw_sprite(spr_bpants_cloud, (siner * 0.1), (x - 5), y)
        break
    case 9:
        draw_sprite(sprite_index, image_index, x, y)
        draw_sprite(spr_bpants_cloud, (siner * 0.1), (x + 80), (y + 25))
        break
    case 1:
    case 5:
    case 7:
    case 8:
        draw_sprite(sprite_index, image_index, (x + rr1), (y + rr2))
        break
    default:
        draw_sprite(sprite_index, image_index, x, y)
        break
}

draw_set_color(c_white)
ossafe_fill_rectangle(0, 120, 600, 124)
