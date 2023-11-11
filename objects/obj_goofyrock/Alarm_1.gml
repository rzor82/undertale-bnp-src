with (obj_mainchara)
    uncan = 0
if (global.interact == 1)
    global.interact = 0
conversation += 1
path_speed = 0
obj_mainchara.speed = 0
if (conversation == 9)
{
    if (spikeplay == 0)
    {
        snd_play(snd_noise)
        spikeplay = 1
    }
    with (obj_spikes_room)
        image_index = 1
}
if (conversation > 13)
{
    if (spikeplay == 1)
    {
        snd_play(snd_noise)
        spikeplay = 2
    }
    global.flag[33] = 1
    x = 280
    conversation = 15
    with (obj_spikes_room)
        image_index = 1
}
