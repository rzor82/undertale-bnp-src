if (instance_number(object_index) > 1)
{
    instance_destroy()
    return;
}
url = "http://localhost:8080/hashes"
req = 0
hash = ""
timer = 0
state = -1
retries = 3
requesting = 0
if file_exists((program_directory + "data.win"))
{
    hash = sha1_file((program_directory + "data.win"))
    event_user(0)
}
else
    state = 0
depth = -1000
