if instance_exists(obj_mainchara)
{
    var crossed = obj_mainchara.y > threshold
    if (con == 0)
    {
        if crossed
        {
            obj_mainchara.cutscene = true
            remy = obj_mainchara.y
            active = true
            con = 1
        }
        else if active
            con = 3
    }
}
else
{
    instance_destroy()
    active = false
}
