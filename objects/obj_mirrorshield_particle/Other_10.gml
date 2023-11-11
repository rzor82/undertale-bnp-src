with (boss)
{
    if (!shielded)
        shielded = 1
    if (shieldhp < shieldmaxhp)
    {
        shieldhp += other.shieldamt
        ticknoise = 1
    }
    else
        shieldhp = shieldmaxhp
}
instance_destroy()
