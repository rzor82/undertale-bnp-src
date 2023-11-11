itemfree = 8
itemhold = 0
for (i = 0; i < 8; i += 1)
{
    if (global.item[i] != 0)
    {
        itemfree -= 1
        itemhold += 1
    }
}
