alarm[0] = 12
if (zap == 1 && scr_insideborder() == 1)
{
    cross = instance_create((x + 12), (y + 12), obj_crosszap)
    cross.dmg = dmg
    pop = scr_monstersum()
    if (pop > 1)
    {
        cross.speed = 1
        alarm[0] = 20
    }
}
