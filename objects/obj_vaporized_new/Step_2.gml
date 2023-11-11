var w = (sprite_get_width(sprite_index) * image_xscale)
var h = (sprite_get_height(sprite_index) * image_yscale)
var xoff = (sprite_get_xoffset(sprite_index) * image_xscale)
var yoff = (sprite_get_yoffset(sprite_index) * image_yscale)
x -= xoff
y -= yoff
var surf = surface_create(w, h)
var pixel = 0
var run = 1
var col = 0
var delay = 1
var rng1 = random(1)
var rng2 = random(1)
var maxSplit = (26 + random(10))
var totalRun = 1
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite(sprite_index, image_index, xoff, yoff)
surface_reset_target()
var buff = buffer_create(((4 * w) * h), buffer_fixed, 1)
buffer_get_surface(buff, surf, 0, 0, 0)
surface_free(surf)
buffer_seek(buff, buffer_seek_start, 0)
var lastPixel = buffer_peek(buff, 0, buffer_u32)
for (var j = 0; j < h; j++)
{
    for (var i = 0; i < w; i++)
    {
        pixel = buffer_read(buff, buffer_u32)
        if ((lastPixel >> 24) & 255)
        {
            if (pixel == lastPixel)
            {
                run++
                totalRun++
                if (totalRun > maxSplit)
                {
                    with (instance_create_depth((x + ((i - run) * image_xscale)), (y + (j * image_yscale)), 0, obj_whtpxlgrav))
                    {
                        myrng1 = rng1
                        myrng2 = rng2
                        image_xscale = (run / 2)
                        image_blend = make_colour_rgb((lastPixel & 255), ((lastPixel >> 8) & 255), ((lastPixel >> 16) & 255))
                        alarm[0] = delay
                    }
                    run = 1
                    totalRun = 1
                    lastPixel = pixel
                    rng1 = random(1)
                    rng2 = random(1)
                    maxSplit = (26 + random(10))
                }
            }
            else
            {
                with (instance_create_depth((x + ((i - run) * image_xscale)), (y + (j * image_yscale)), 0, obj_whtpxlgrav))
                {
                    myrng1 = rng1
                    myrng2 = rng2
                    image_xscale = (run / 2)
                    image_blend = make_colour_rgb((lastPixel & 255), ((lastPixel >> 8) & 255), ((lastPixel >> 16) & 255))
                    alarm[0] = delay
                }
                run = 1
                lastPixel = pixel
            }
        }
        else
            lastPixel = pixel
    }
    if ((lastPixel >> 24) & 255)
    {
        with (instance_create_depth((x + ((i - run) * image_xscale)), (y + (j * image_yscale)), 0, obj_whtpxlgrav))
        {
            myrng1 = rng1
            myrng2 = rng2
            image_xscale = (run / 2)
            image_blend = make_colour_rgb((lastPixel & 255), ((lastPixel >> 8) & 255), ((lastPixel >> 16) & 255))
            alarm[0] = delay
        }
    }
    rng1 = random(1)
    rng2 = random(1)
    maxSplit = (6 + random(30))
    lastPixel = 0
    run = 1
    totalRun = 1
    delay += 0.3
}
buffer_delete(buff)
instance_destroy()
