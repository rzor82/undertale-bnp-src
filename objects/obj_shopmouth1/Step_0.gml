d = 0
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt == false)
    {
        d = 1
        image_speed = 0.2
    }
}
if (d == 0)
{
    image_speed = 0
    image_index = 0
}
x = (obj_shop1.shx + 157)
