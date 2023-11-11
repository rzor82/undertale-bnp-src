if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define("FileManager.dll", "set_working_directory", 0, 0, 1, 1), argument0)
    external_free("FileManager.dll")
    return FileManager_result;
}
if (os_type == os_macosx)
{
    FileManager_result = external_call(external_define("FileManager.dylib", "set_working_directory", 0, 0, 1, 1), argument0)
    external_free("FileManager.dylib")
    return FileManager_result;
}
if (os_type == os_linux)
{
    FileManager_result = external_call(external_define("FileManager.so", "set_working_directory", 0, 0, 1, 1), argument0)
    external_free("FileManager.so")
    return FileManager_result;
}
