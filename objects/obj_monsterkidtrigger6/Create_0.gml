con = 99999
unbuffer = 0
ganer = 0
if (global.plot < 112)
{
    if (global.entrance == 1)
    {
        mkid2 = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mkid_actor)
        mkid2.sprite_index = mkid2.dsprite
        mkid2.follow = 0
        con = 0
    }
}
deedisdone = 0
sidebhappened = 0
if (global.plot == 112)
{
    con = 8
    mkid = instance_create(320, 100, obj_townnpc_monsterkid1)
    mkid.prostrate = 1
    mkid.fun = true
    mkid.sprite_index = spr_mkid_prostrate
}
ledgewall = instance_create(340, 60, obj_solidthin)
if (global.entrance == 1)
    side = 0
if (global.entrance == 2)
{
    side = 1
    ledgewall.x = 320
}
walkedaway = 0
played = 0
difx = 0
dify = 0
