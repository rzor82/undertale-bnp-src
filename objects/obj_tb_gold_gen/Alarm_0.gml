if (active == true)
{
    if (irandom(2) == 1)
        dir = choose(1, -1)
    if (dir == 1)
    {
        if (notbul != 6)
            notbul += 1
        else
            dir = -1
    }
    else if (notbul != 0)
        notbul -= 1
    else
        dir = 1
    for (i = 0; i <= 6; i++)
    {
        if (notbul != i)
        {
            bul = instance_create(((global.idealborder[0] - 3) + (i * 28)), (global.idealborder[2] - 40), blt_tb_gold)
            bul.vspeed = 3
        }
    }
    alarm[0] = 30
}
