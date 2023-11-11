if (requesting == 0 && state > 0 && state != 3)
{
    req = http_get(url)
    requesting = 1
}
