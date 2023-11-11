if (argument0 == undefined)
    var itemid = global.item[global.menucoord[1]]
else
    itemid = argument0
var drop_success = 0
if (instance_number(obj_dropped_item) < 255)
{
    with (obj_mainchara)
    {
        var dropx = x
        var dropy = bbox_top
        switch global.facing
        {
            case 0:
                dropy = (bbox_bottom + 5)
                break
            case 1:
                dropx = (bbox_right + 5)
                break
            case 2:
                dropy = (bbox_top - 15)
                break
            case 3:
                dropx = (bbox_left - 15)
                break
        }

        var drop = instance_create(dropx, dropy, obj_dropped_item)
        drop.itemid = itemid
        with (drop)
            event_user(0)
        drop_success = 1
    }
}
return drop_success;
