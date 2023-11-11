if (requesting == 0 && global.allowinternet)
{
    if (!has_data)
        forecast = "Loading..."
    req = http_get(url)
    requesting = 1
}
