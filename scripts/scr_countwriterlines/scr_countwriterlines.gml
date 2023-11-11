writer = OBJ_WRITER
if (argument_count > 0)
    writer = argument0
var count = 0
if instance_exists(writer)
{
    var arr_len = array_length_1d(writer.mystring)
    var real_len = arr_len
    for (i = 0; i < arr_len; i += 1)
    {
        if (string_pos("%%", writer.mystring[i]) > 0 || string_pos("/%", writer.mystring[i]) > 0)
        {
            real_len = (i + 1)
            i = arr_len
        }
    }
    count = real_len
}
return count;
