if (!variable_global_exists("text_colors"))
{
    global.text_colors = ds_map_create()
    ds_map_set(global.text_colors, "Z", 16760832)
    ds_map_set(global.text_colors, "V", 11161029)
}
if ds_map_exists(global.text_colors, argument0)
{
    mycolor = ds_map_find_value(global.text_colors, argument0)
    return 1;
}
switch argument0
{
    case "R":
        mycolor = 4209120
        break
    case "G":
        mycolor = 4629317
        break
    case "W":
        mycolor = 16777215
        break
    case "Y":
        mycolor = 5954559
        break
    case "X":
        mycolor = 0
        break
    case "B":
        mycolor = 13134412
        break
    case "O":
        mycolor = 2588671
        break
    case "L":
        mycolor = 16502389
        break
    case "P":
        mycolor = 16711931
        break
    case "p":
        mycolor = 10457079
        break
    case "m":
        mycolor = 9676114
        break
    case "j":
        mycolor = 16759772
        break
    case "q":
        mycolor = 13085081
        break
    default:
        return 0;
}

return 1;
