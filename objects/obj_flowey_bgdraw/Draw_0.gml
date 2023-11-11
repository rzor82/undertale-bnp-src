for (i = 0; i < 8; i += 1)
{
    siner2 = (siner + i)
    __background_set(14, i, (0.5 + (sin((siner2 / 8)) * 0.4)))
    __background_set(3, i, (__background_get(3, i) + (sin((siner2 / 8)) * 1)))
}
siner += 1
