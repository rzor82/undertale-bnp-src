if (merge < 1)
{
    image_blend = merge_color(color[col_a], color[col_b], merge)
    merge += step
}
else
{
    var num_color = array_length_1d(color)
    col_a++
    if (col_a >= num_color)
        col_a = 0
    col_b = (col_a + 1)
    if (col_b >= num_color)
        col_b = 0
    merge = 0
}
draw_self()
