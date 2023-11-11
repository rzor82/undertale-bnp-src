switch global.facechoice
{
    case "C":
        sprite_index = spr_face_armordyne
        break
    case "D":
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_mettaton
                break
            case 1:
                sprite_index = spr_face_mettaton_2
                break
            case 2:
                sprite_index = spr_face_mettaton_clap
                break
            case 3:
                sprite_index = spr_face_mettaton_evillaugh
                break
            case 4:
                sprite_index = spr_face_mettaton_no1
                break
            case 5:
                sprite_index = spr_face_mettaton_chainsaw
                break
            case 6:
                sprite_index = spr_face_mettaton_dress
                break
            case 7:
                sprite_index = spr_face_mettaton_behind2
                break
            case 8:
                sprite_index = spr_face_mettaton_boss
                break
            case 9:
                sprite_index = spr_face_mettaton_behind
                break
            default:
                sprite_index = spr_face_mettaton
        }
    case "E":
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_mettaton_news
                break
            case 1:
                sprite_index = spr_face_mettaton_news_hands
                break
            case 2:
                sprite_index = spr_face_mettaton_news_oh
                break
            case 3:
                sprite_index = spr_face_mettaton_news_evillaugh
                break
            case 4:
                sprite_index = spr_face_mettaton_news_no1
                break
            case 5:
                sprite_index = spr_face_mettaton_news_panic
                break
            case 6:
                sprite_index = spr_face_mettaton_news_raisehand
                break
            default:
                sprite_index = spr_face_mettaton_news
        }
    case "X":
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_rurus
                break
            case 1:
                sprite_index = spr_face_rurus_shocked1
                break
            case 2:
                sprite_index = spr_face_rurus_mouthopen
                break
            case 3:
                sprite_index = spr_face_rurus_wink
                break
            case 4:
                sprite_index = spr_face_rurus_eyesclosed
                break
            case 5:
                sprite_index = spr_face_rurus_shocked2
                break
            case 6:
                sprite_index = spr_face_rurus_shocked2_side
                break
            default:
                sprite_index = spr_face_rurus
        }
    case "p":
        sprite_index = spr_prunsel
        break
}

