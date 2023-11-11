with (obj_battlecontroller)
    event_perform(ev_other, ev_room_end)
with (all)
{
    if ((!persistent) && id != other.id)
        instance_destroy()
}
travel = 1
destx = floor(((room_width - sprite_width) / 2))
desty = floor(((room_height - sprite_height) / 2))
instance_create(0, 0, obj_mirror_death_event)
global.gold += global.goldreward[myself]
global.xp += global.xpreward[myself]
global.flag[12] = 1
global.kills++
scr_levelup()
