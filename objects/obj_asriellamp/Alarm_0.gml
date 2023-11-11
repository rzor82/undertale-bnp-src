snd_play(snd_lightswitch)
if (__background_get(0, 1) == 1)
{
    __background_set(0, 0, 0x000001)
    __background_set(0, 1, c_black)
    idealvolume[0] = 0
    idealvolume[1] = 1
}
else
{
    __background_set(0, 0, c_black)
    __background_set(0, 2, c_black)
    __background_set(0, 1, 0x000001)
    idealvolume[0] = 1
    idealvolume[1] = 0
}
myinteract = 0
global.interact = 0
