if (shakeamt > 0)
{
    shakeamt -= 0.5
    if (sign(shake) == -1)
        shake = shakeamt
    else
        shake = (shakeamt * -1)
    alarm[0] = 2
}
else
{
    shakeamt = 0
    shake = 0
}
