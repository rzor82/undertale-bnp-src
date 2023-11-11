event_inherited()
image_speed = 0.25
switch global.faceemotion
{
    case 0:
        sprite_index = spr_floweynice
        break
    case 1:
        sprite_index = spr_floweynicesideum
        break
    case 2:
        sprite_index = spr_floweysassy
        break
    case 3:
        sprite_index = spr_floweypissed
        break
    case 4:
        sprite_index = spr_floweyevil
        break
    case 5:
        sprite_index = spr_floweygrin
        break
    case 6:
        sprite_index = spr_floweywink
        if (room == room_ruinsexit)
            sprite_index = spr_floweytoriel
        break
    case 7:
        sprite_index = spr_floweyniceside
        if (room == room_ruinsexit)
            sprite_index = spr_floweytoriel2
        break
    case 8:
        sprite_index = spr_floweyplain
        break
    case 9:
        sprite_index = spr_floweyside
        break
    case "A":
        sprite_index = spr_floweydepressed1
        break
    case "B":
        sprite_index = spr_floweydepressed2
        break
    case "C":
        sprite_index = spr_floweydepressed3
        break
    case "D":
        sprite_index = spr_floweykiddingme
        break
    case "E":
        sprite_index = spr_floweyclearlyyoudontownanairfryer
        break
    case "F":
        sprite_index = spr_floweyweirdo
        break
    case "G":
        sprite_index = spr_floweyweirdoside
        break
    case "H":
        sprite_index = spr_floweywhathuh
        break
    case "I":
        sprite_index = spr_floweyevil2
        break
    case "J":
        sprite_index = spr_floweyevil3
        break
    case "K":
        sprite_index = spr_floweydoteyes
        break
    case "L":
        sprite_index = spr_floweymusnote
        break
    case "M":
        sprite_index = spr_floweyshout
        break
    case "N":
        sprite_index = spr_flowey_asrielface
        break
    case "O":
        sprite_index = spr_floweyangryshowteeth
        break
    case "P":
        sprite_index = spr_floweyangryshowteethalt
        break
    case "Q":
        sprite_index = spr_floweygoodytwoshoes
        break
    default:
        sprite_index = spr_floweynice
        break
}

