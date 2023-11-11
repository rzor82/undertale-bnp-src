url = "http://104.248.117.67:8080/"
forecast = (global.allowinternet ? "Loading..." : "Unknown")
requesting = 0
has_data = 0
req = -4
if (instance_number(object_index) > 1)
    instance_destroy()
