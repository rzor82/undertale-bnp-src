if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define("FileManager.dll", "directory_copy", 0, 0, 2, 1, 1), argument0, argument1)
    external_free("FileManager.dll")
    return FileManager_result;
}
if (os_type == os_macosx)
{
    FileManager_result = external_call(external_define("FileManager.dylib", "directory_copy", 0, 0, 2, 1, 1), argument0, argument1)
    external_free("FileManager.dylib")
    return FileManager_result;
}
if (os_type == os_linux)
{
    FileManager_result = external_call(external_define("FileManager.so", "directory_copy", 0, 0, 2, 1, 1), argument0, argument1)
    external_free("FileManager.so")
    return FileManager_result;
}
