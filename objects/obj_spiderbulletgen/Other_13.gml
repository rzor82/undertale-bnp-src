if (type == 0)
{
    scr_sp(0, 8, 1, 1, 0)
    scr_sp(0, 8, 1, 1, 20)
    scr_sp(0, 8, 3, 1, 0)
    scr_sp(0, 8, 3, 1, 20)
    scr_sp(0, 8, 2, 0, 0)
    scr_sp(0, 8, 2, 0, 20)
    scr_sp(0, 8, 3, 0, 0)
    scr_sp(0, 8, 1, 0, 0)
    global.firingrate = 10
    global.turntimer -= 30
}
if (type == 1)
{
    scr_sp(0, 8, 2, 1, 0)
    scr_sp(0, 8, 3, 1, 16)
    scr_sp(0, 8, 1, 1, 0)
    scr_sp(0, 8, 2, 1, 16)
    scr_sp(0, 8, 2, 0, 0)
    scr_sp(0, 8, 1, 0, 16)
    scr_sp(0, 8, 2, 0, 0)
    scr_sp(0, 8, 3, 0, 16)
    scr_sp(0, 8, 2, 1, 0)
    scr_sp(0, 8, 3, 1, 16)
    scr_sp(0, 8, 1, 1, 0)
    scr_sp(0, 8, 2, 1, 16)
    global.firingrate = 8
}
if (type == 2)
{
    scr_sp(3, 9, 3, 1, 0)
    scr_sp(0, 9, 1, 1, 16)
    scr_sp(3, 9, 1, 1, 0)
    scr_sp(0, 9, 3, 1, 16)
    scr_sp(0, 9, 2, 0, 16)
    scr_sp(3, 9, 2, 0, 16)
    scr_sp(0, 9, 2, 1, 16)
    scr_sp(3, 9, 2, 1, 16)
    global.firingrate = 12
}
if (type == 3)
{
    scr_sp(0, 9, 1, 1, 8)
    scr_sp(0, 9, 3, 1, 8)
    scr_sp(0, 9, 2, 1, 16)
    scr_sp(3, 9, 1, 0, 13)
    scr_sp(3, 9, 3, 0, 13)
    scr_sp(3, 9, 2, 0, 20)
    scr_sp(1, 8, 1, 0, 20)
    scr_sp(1, 8, 3, 0, 20)
    scr_sp(1, 8, 1, 0, 20)
    global.turntimer += 10
    global.firingrate = 14
}
if (type == 4)
{
    scr_sp(3, 8, 2, 1, 18)
    scr_sp(0, 8, 2, 1, 18)
    scr_sp(3, 9, 2, 1, 15)
    scr_sp(0, 9, 2, 1, 15)
    scr_sp(3, 9.5, 2, 1, 14)
    scr_sp(0, 9.5, 2, 1, 14)
    scr_sp(3, 10, 2, 1, 13)
    scr_sp(0, 10, 2, 1, 13)
    scr_sp(3, 10.5, 2, 1, 12)
    scr_sp(0, 10.5, 2, 1, 12)
    scr_sp(3, 11, 2, 1, 11)
    scr_sp(0, 11, 2, 1, 11)
    scr_sp(3, 12, 2, 1, 10)
    scr_sp(0, 12, 2, 1, 10)
    scr_sp(3, 13, 2, 1, 9)
    scr_sp(0, 13, 2, 1, 9)
    scr_sp(3, 13, 2, 1, 9)
    scr_sp(0, 13, 2, 1, 9)
    global.firingrate = 14
}
if (type == 5)
{
    scr_sp(3, 10, 2, 1, 0)
    scr_sp(1, 5, 1, 1, 1)
    scr_sp(1, 5, 2, 1, 20)
    scr_sp(3, 10, 0, 0, 0)
    scr_sp(1, 5, 1, 0, 1)
    scr_sp(1, 5, 2, 0, 20)
    scr_sp(3, 10, 3, 1, 0)
    scr_sp(1, 5, 1, 1, 1)
    scr_sp(1, 5, 2, 1, 20)
    scr_sp(3, 10, 2, 0, 0)
    global.firingrate = 15
    global.turntimer -= 10
}
if (type == 6)
{
    scr_sp(0, 11, 1, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    scr_sp(0, 11, 2, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    scr_sp(0, 11, 3, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    scr_sp(0, 11, 2, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    scr_sp(0, 11, 1, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    scr_sp(0, 11, 2, 1, 0)
    scr_sp(0, 11, 0, 0, 0)
    global.firingrate = 10
    global.turntimer -= 10
}
if (type == 7)
{
    scr_sp(1, 6, 1, 1, 1)
    scr_sp(1, 6, 3, 1, 1)
    scr_sp(1, 6, 1, 0, 1)
    scr_sp(1, 6, 3, 0, 20)
    scr_sp(0, 12, 1, 1, 0)
    scr_sp(0, 12, 1, 0, 8)
    scr_sp(0, 12, 3, 1, 0)
    scr_sp(0, 12, 3, 0, 8)
    scr_sp(0, 12, 2, 1, 0)
    scr_sp(0, 12, 2, 0, 20)
    scr_sp(2, 13, 2, 0, 0)
    global.firingrate = 14
    global.turntimer += 40
}
if (type == 8)
{
    scr_sp(2, 13, 1, 0, 1)
    scr_sp(2, 13, 3, 0, 30)
    scr_sp(2, 13, 2, 0, 0)
    scr_sp(2, 13, 1, 1, 1)
    scr_sp(2, 13, 3, 1, 30)
    scr_sp(2, 13, 2, 1, 30)
    global.turntimer += 10
    global.firingrate = 20
}
if (type == 9)
{
    scr_sp(0, 9, 3, 1, 10)
    scr_sp(3, 9, 1, 1, 15)
    scr_sp(0, 9.5, 1, 1, 10)
    scr_sp(3, 9.5, 3, 1, 14)
    scr_sp(0, 10, 3, 1, 9)
    scr_sp(3, 10, 1, 1, 13)
    scr_sp(0, 11, 1, 1, 9)
    scr_sp(3, 11, 3, 1, 12)
    scr_sp(0, 12, 3, 1, 8)
    scr_sp(3, 12, 1, 1, 11)
    scr_sp(0, 13, 1, 1, 8)
    scr_sp(3, 13, 3, 1, 18)
    scr_sp(0, 13, 2, 1, 8)
    scr_sp(3, 13, 2, 1, 9)
    scr_sp(0, 13, 2, 1, 8)
    scr_sp(3, 13, 2, 1, 9)
    global.firingrate = 14
}
if (type == 10)
{
    scr_sp(0, 12, 3, 1, 0)
    scr_sp(0, 12, 0, 0, 0)
    scr_sp(0, 12, 1, 1, 0)
    scr_sp(0, 12, 0, 0, 0)
    scr_sp(0, 12, 2, 1, 0)
    scr_sp(0, 12, 0, 0, 0)
    scr_sp(0, 12, 3, 1, 0)
    scr_sp(0, 12, 0, 0, 0)
    scr_sp(0, 12, 1, 1, 0)
    scr_sp(0, 12, 0, 0, 0)
    scr_sp(0, 12, 2, 1, 0)
    scr_sp(0, 12, 0, 0, 18)
    scr_sp(3, 12, 2, 1, 1)
    scr_sp(3, 12, 2, 0, 0)
    global.firingrate = 9
}
if (type == 11)
{
    scr_sp(1, 8, 1, 0, 1)
    scr_sp(1, 8, 2, 0, 0)
    scr_sp(1, 8, 1, 1, 1)
    scr_sp(1, 8, 2, 1, 0)
    scr_sp(1, 8, 3, 0, 1)
    scr_sp(1, 8, 2, 0, 0)
    scr_sp(1, 8, 3, 1, 1)
    scr_sp(1, 8, 2, 1, 30)
    scr_sp(1, 8, 1, 0, 1)
    scr_sp(1, 8, 3, 0, 0)
    scr_sp(1, 8, 3, 1, 1)
    scr_sp(1, 8, 1, 1, 0)
    global.firingrate = 20
}
if (type == 12)
{
    scr_sp(2, 13, 1, 0, 0)
    scr_sp(2, 13, 3, 0, 0)
    scr_sp(2, 13, 2, 0, 0)
    scr_sp(2, 13, 1, 1, 0)
    scr_sp(2, 13, 3, 1, 0)
    scr_sp(2, 13, 2, 1, 0)
    scr_sp(2, 13, 1, 0, 0)
    scr_sp(2, 13, 3, 0, 0)
    scr_sp(2, 13, 2, 0, 0)
    global.firingrate = 18
    global.turntimer += 90
}
if (type == 13)
{
    scr_sp(3, 5, 2, 1, 0)
    scr_sp(0, 8, 2, 0, 10)
    scr_sp(3, 5, 2, 1, 0)
    scr_sp(0, 8, 2, 0, 10)
    scr_sp(3, 5, 2, 1, 0)
    scr_sp(0, 8, 2, 0, 10)
    scr_sp(3, 5, 2, 1, 0)
    scr_sp(0, 8, 2, 0, 10)
    scr_sp(3, 5, 2, 1, 0)
    scr_sp(0, 8, 2, 0, 10)
    global.firingrate = 14
    global.turntimer += 30
}
if (type == 14)
{
    scr_sp(1, 6, 1, 0, 1)
    scr_sp(1, 6, 2, 0, 1)
    scr_sp(1, 6, 3, 1, 1)
    scr_sp(1, 6, 2, 1, 38)
    scr_sp(3, 9, 2, 1, 1)
    scr_sp(3, 9, 2, 0, 8)
    scr_sp(3, 9, 2, 1, 40)
    scr_sp(2, 13, 1, 0, 4)
    scr_sp(2, 13, 3, 1, 4)
    scr_sp(2, 13, 3, 0, 4)
    scr_sp(2, 13, 1, 1, 25)
    scr_sp(0, 8, 2, 1, 1)
    scr_sp(0, 8, 2, 0, 15)
    global.firingrate = 14
    global.turntimer += 50
}
if (type == 15)
{
    scr_sp(3, 10, 1, 1, 0)
    scr_sp(3, 10, 2, 1, 0)
    scr_sp(3, 10, 3, 1, 0)
    scr_sp(3, 10, 2, 1, 0)
    scr_sp(3, 10.5, 1, 1, 0)
    scr_sp(3, 10.5, 2, 1, 0)
    scr_sp(3, 10.5, 3, 1, 0)
    scr_sp(3, 10.5, 2, 1, 0)
    scr_sp(3, 11, 1, 1, 0)
    scr_sp(3, 11, 2, 1, 0)
    scr_sp(3, 11, 3, 1, 0)
    scr_sp(3, 11, 2, 1, 0)
    scr_sp(3, 11.5, 1, 1, 0)
    scr_sp(3, 11.5, 2, 1, 0)
    scr_sp(3, 12, 3, 1, 0)
    scr_sp(3, 12, 2, 1, 0)
    scr_sp(3, 12, 1, 1, 0)
    scr_sp(3, 12, 2, 1, 0)
    scr_sp(3, 12, 3, 1, 0)
    global.firingrate = 9
}
