global.item[8] = argument1
for (var i = argument0; i < 8; i += 1)
    global.item[i] = global.item[(i + 1)]
if instance_exists(obj_battlecontroller)
{
    for (var j = 0; j < global.partycount; j++)
    {
        var bmenuno = obj_battlecontroller.bmenuno_buffer[j]
        if (!((bmenuno >= 3 && bmenuno < 4)))
        {
        }
        else
        {
            var bmenucoord = obj_battlecontroller.bmenucoord_buffer[j]
            itempos = (bmenucoord[3] + ((bmenuno - 3) * 8))
            if (itempos > argument0)
            {
                bmenucoord[3] = (bmenucoord[3] - 1)
                obj_battlecontroller.bmenucoord_buffer[j] = bmenucoord
            }
        }
    }
}
script_execute(scr_itemnameb)
script_execute(scr_itemname)
