if (gone == 0)
{
    if (global.interact == 0)
    {
        if altspeed
        {
            xfer = obj_mainchara.x
            go = 2
        }
        else
        {
            xfer = obj_mainchara.x
            go = 1
        }
    }
}
object_index.gone = 1
if instance_exists(obj_conveyorpuzzle1)
    obj_conveyorpuzzle1.active = 3
