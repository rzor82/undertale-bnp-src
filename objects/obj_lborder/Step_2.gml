if (x != global.idealborder[0])
{
    if (abs((x - global.idealborder[0])) <= 15)
        x = global.idealborder[0]
    else if (x > global.idealborder[0])
        x -= 15
    else
        x += 15
}
if (y != global.idealborder[3])
{
    if (abs((y - global.idealborder[3])) <= 15)
        y = global.idealborder[3]
    else
    {
        if (y > global.idealborder[3])
            y -= 15
        else
            y += 15
        if (obj_uborder.y > global.idealborder[2] && obj_dborder.y > global.idealborder[3])
            y -= 15
        if (obj_uborder.y < global.idealborder[2] && obj_dborder.y < global.idealborder[3])
            y += 15
    }
}
size = round(((global.idealborder[2] - global.idealborder[3]) / 5))
if (x == global.idealborder[0] || global.idealborder[2] > (y + (image_yscale * 5)))
{
    if (image_yscale != size)
    {
        if (abs((size - image_yscale)) <= 3)
            image_yscale = size
        if (image_yscale > size)
            image_yscale -= 3
        if (image_yscale < size)
            image_yscale += 3
        if (obj_uborder.y > global.idealborder[2] && obj_dborder.y > global.idealborder[3])
            image_yscale += 3
        if (obj_uborder.y < global.idealborder[2] && obj_dborder.y < global.idealborder[3])
            image_yscale -= 3
    }
}
y = obj_dborder.y
image_yscale = ((obj_uborder.y - obj_dborder.y) / 5)
if (instaborder == 1)
{
    x = global.idealborder[0]
    y = global.idealborder[2]
    image_yscale = ((global.idealborder[3] - global.idealborder[2]) / 5)
    borderxone = global.idealborder[0]
    borderyone = global.idealborder[2]
    borderxtwo = global.idealborder[1]
    borderytwo = global.idealborder[3]
}
if (borderxone != global.idealborder[0])
{
    if (abs((borderxone - global.idealborder[0])) <= 15)
        borderxone = global.idealborder[0]
    else if (borderxone > global.idealborder[0])
        borderxone -= 15
    else
        borderxone += 15
}
if (borderytwo != global.idealborder[3])
{
    if (abs((borderytwo - global.idealborder[3])) <= 15)
        borderytwo = global.idealborder[3]
    else if (borderytwo > global.idealborder[3])
        borderytwo -= 15
    else
        borderytwo += 15
}
if (borderxone == global.idealborder[0] || borderyone < global.idealborder[2])
{
    if (borderyone != global.idealborder[2])
    {
        if (abs((borderyone - global.idealborder[2])) <= 15)
            borderyone = global.idealborder[2]
        else if (borderyone > global.idealborder[2])
            borderyone -= 15
        else
            borderyone += 15
    }
}
if (borderxtwo != global.idealborder[1])
{
    if (abs((borderxtwo - global.idealborder[1])) <= 15)
        borderxtwo = global.idealborder[1]
    else if (borderxtwo > global.idealborder[1])
        borderxtwo -= 15
    else
        borderxtwo += 15
}
